// `timescale 1ns / 1ps
`include "defines.v"

module if_stage (
    input wire clk,
    input wire resetn,

    //if-id
    input wire id_allowin,
    output wire if_to_id_valid,
    output wire [`IF_TO_ID_WD] if_to_id_bus,

    //id组合逻辑传递给if组合逻辑的一些用于生成nextpc的信号
    input wire [`ID_TO_IF_WD] id_to_if_bus,

    //对接insRAM接口
    // output wire                       inst_sram_en,
    // output wire [`InstWriteEnable_WD] inst_sram_we,
    // output wire [`InstAddrBus       ] inst_sram_addr,
    // output wire [`InstBus           ] inst_sram_wdata,
    // input  wire [`InstBus           ] inst_sram_rdata,
      output        inst_sram_req,
      output        inst_sram_wr,
      output [ 3:0] inst_sram_wstrb,
      output [ 1:0] inst_sram_size,
      output [31:0] inst_sram_addr,
      output [31:0] inst_sram_wdata,
      input  [31:0] inst_sram_rdata,
      input         inst_sram_addr_ok,
      input         inst_sram_data_ok,

    //例外（实际上是wb来的）
       input wire [`CSR_TO_IF_WD] csr_to_if_bus,

    input wire flush_from_id ,
    input wire flush_from_exe ,
    input wire flush_from_mem      

);

//======================================================
//======== Parameter and Internal signals ==========
//======================================================

//当前stage控制信号
reg if_valid;  //当前流水级是否在处理指令
wire if_ready_go;  //if是否需要被阻塞

wire if_allowin;  //控制preIF组合逻辑数据是否可以传递进if_reg


wire preif_to_if_valid;
wire preif_ready_go;
//6级（？）
// wire preif_allowin;
// reg preif_valid;

//if-preIF
wire [`InstAddrBus] seq_pc;  //+4自增
wire [`InstAddrBus] nextpc;  //最终更新到PC寄存器的指令地址
// reg [`InstAddrBus] nextpc;




wire         inst_addr_trans_en; //地址转换使能
wire         inst_addr_ok;//指令地址是否准备就绪(与cache有关)
wire         inst_valid;

wire         preif_excp_adef; //地址对齐错误
// wire         if_excp_tlbr; //TLB 相关异常
wire         if_excp_pif; //预取指异常
wire         if_excp_ppi; //保护异常 违反保护机制（如内存访问权限、特权级限制等）
reg          if_excp;
reg          if_excp_num;
wire         excp;
wire [3:0]   excp_num;
wire         preif_excp;
wire         preif_excp_num;

wire         flush_sign;
wire         flush_sign_wire_o;

reg  [31:0]  inst_rd_buff;
reg          inst_buff_enable;

//flush state machine 冲刷状态机
reg [31:0] flush_inst_req_buffer; //存冲刷指令的参数
reg        flush_inst_req_state;  //是否 冲刷
localparam flush_inst_req_empty = 1'b0;
localparam flush_inst_req_full  = 1'b1;

wire         flush_inst_delay; //流水线冲刷指令的延迟信号
wire         flush_inst_go_dirt;

wire  [31:0] excp_entry;
wire  [31:0] inst_flush_pc;

wire have_flush_forward;//这个没用吧

assign have_flush_forward = excp || flush_from_id || flush_from_exe || flush_from_mem ;


//id-if
  //拆解id组合逻辑传递给if组合逻辑的数据
  wire br_really_taken;
  // wire br_taken_cancel;
  wire [`InstAddrBus] br_target;
  wire br_stall;
  // assign {br_taken, br_target, br_taken_cancel} = id_to_if_bus;
  assign {br_really_taken, br_target, br_stall} = id_to_if_bus;

//跳转总线寄存器(防止因branch指令离开id阶段而导致br_bus数据丢失)
reg  [33:0]  br_bus_r;  
reg          br_bus_r_valid;
wire         br_taken_r;
wire [31:0]  br_target_r;
wire br_stall_r;

assign {br_taken_r,br_target_r, br_stall_r} = br_bus_r;


//if-id
  //组合传递给id_reg的数据
  wire [`InstBus] if_inst;
  reg  [`InstAddrBus] if_pc;

reg  [31:0] if_inst_r;  //IF阶段指令寄存器
reg         if_inst_valid;

assign if_to_id_bus = {
                       excp,            //68:68
                       excp_num,        //67:64
                       if_inst,         //63:32
                       if_pc            //31:0
                      };

//csr-if
    wire                          excp_flush       ;
    wire                          ertn_flush       ;
    wire                          refetch_flush    ;
    // wire                          icacop_flush     ;
    wire  [31:0]                  wb_pc            ; //用来刷新流水线后接着最后一条已完成的pc refetch
    wire  [31:0]                  csr_eentry       ; //csr来的例外入口(提前靠指令写好)
    wire  [31:0]                  csr_era          ; //上一条触发例外的指令的 PC 32
    // wire                          excp_tlbrefill   ;
    // wire  [31:0]                  csr_tlbrentry    ;
    // wire                          has_int          ;

    //from csr
    // wire                          csr_pg            ;
    // wire                          csr_da            ;
    // wire  [31:0]                  csr_dmw0          ;
    // wire  [31:0]                  csr_dmw1          ;
    // wire  [ 1:0]                  csr_plv           ;
    // wire  [ 1:0]                  csr_datf          ;
    // wire                          disable_cache     ;

    reg                          excp_flush_r       ;
    reg                          ertn_flush_r       ;
    reg                          refetch_flush_r    ;


assign {
    excp_flush       ,
    ertn_flush       ,
    refetch_flush    ,
    // icacop_flush     ,
    wb_pc            , 
    csr_eentry       , 
    csr_era          //, 
    // excp_tlbrefill   ,
    // csr_tlbrentry    , //32
    // has_int          ,

    // csr_pg            ,
    // csr_da            ,
    // csr_dmw0          , //32
    // csr_dmw1          , //32
    // csr_plv           , //2
    //csr_datf          , //2
    //disable_cache     

}=csr_to_if_bus;

//======================================================
//=================== Main Code ====================
//======================================================
// preIF
assign preif_to_if_valid = resetn & preif_ready_go; //表示这拍刚好在发req 或 其余可以继续进行的（如excp

// assign preif_to_if_valid = resetn & preif_ready_go /* & !(flush_sign)*/& !(br_really_taken ||(br_taken_r && br_bus_r_valid)||flush_sign); //6级（？）
// assign preif_allowin = ~preif_valid | preif_ready_go & if_allowin; //6级（？）

//preif发完req即为完成preif阶段任务，即 preif to if valid为1。即，req决定preif readygo 进而决定preif to if valid
assign preif_ready_go = (inst_sram_req & inst_sram_addr_ok && !br_stall) || preif_excp;
assign seq_pc            = if_pc + 32'h4;
//例外后的pc
assign excp_entry   = /*{32{excp_tlbrefill}}  & csr_tlbrentry |*/
                      /*{32{!excp_tlbrefill}} & */csr_eentry    ;



//刷新后的pc
assign inst_flush_pc = {32{ertn_flush || ertn_flush_r}}                                  & csr_era         |
                       {32{refetch_flush || refetch_flush_r /*|| icacop_flush || idle_flush*/}} & (wb_pc + 32'h4) ;

assign nextpc = 
                excp_flush  || excp_flush_r                                                     ? excp_entry                :
                (ertn_flush || ertn_flush_r || refetch_flush || refetch_flush_r /*|| icacop_flush || idle_flush*/)     ? inst_flush_pc             :
                br_really_taken                                                 ? br_target       :
                br_taken_r && br_bus_r_valid                                    ? br_target_r     : 
 
                                                                                 seq_pc                    ;

//6级（？）
//   always @(posedge clk) begin
//     if (~resetn | flush_sign) begin
//       preif_valid <= 1'b0;
//     end else if (preif_allowin) begin
//       preif_valid <= !preif_excp;
//     end
//   end

// always @(posedge clk) begin
//     if (~resetn) begin
//         nextpc <= `PcReset + 32'h4;
//     end 
//     else if(preif_allowin) begin
//         if (excp_flush) begin
//             nextpc <= excp_entry;
//         end else if(ertn_flush || refetch_flush) begin
//             nextpc <= inst_flush_pc;
//         end else if(br_really_taken) begin
//             nextpc <= br_target;
//         end else if(br_taken_r && br_bus_r_valid) begin
//             nextpc <= br_target_r;
//         end else begin
//             nextpc <= seq_pc;
//         end
//     end
// end

/* 一些if的阶段状态指示
if_valid && if_ready_go 当拍刚好完成了数据握手（一般不保持
if_valid && !if_ready_go 已经发了取指请求，if正在等待if pc的data ok（可保持

if_valid && if_inst_cancel 当前已经完成了两次地址握手，且下一个收到的data ok是需要被取消的
    此时的if pc应当为需要被cancel的那一条（前者），因为即使要被取消，等的还是它
    在收到一次data ok之后，if inst cancel置0的同时跳转pc
if_valid [&& !if_inst_cancel] 正常等待一个dataok（使用时应该无需 显式的写出 !if_inst_cancel
*/

//if
//flush在if级会导致：标记是否有一个需要被丢弃的dataok。就没了，其他该怎么走怎么走，只不过接下来走的是在preif被刷新后的npc
//当前stage控制信号
//不readygo表示需在等dataok，即（（正好接到dataok || 已经接到dataok ）|| 有其余更高优先级的事件 ）时
assign if_ready_go       = (inst_sram_data_ok | if_inst_valid ) || excp; //握手当拍或者有存下来的inst_r 且在等待data ok时（即使是需要被取消的）不应继续下去
assign if_allowin        = ~if_valid | if_ready_go & id_allowin; //if级没有在处理指令 或 if不需要被阻塞且id允许if进入
assign if_to_id_valid    = if_valid & if_ready_go & !(br_really_taken || (br_taken_r && br_bus_r_valid) || flush_sign || if_inst_cancel );


always @(posedge clk) begin
//！把括号内的改为判断式会不会增加逻辑层次 路径变长？
    if (resetn==`RstEnable) begin //if不需要被冲刷，因为本身就是第一级，直接取被刷后的pc正常用就行
        if_valid <= `StageInvalid;
    // end else if(flush_sign) begin
    //     //当拍能地址握手成功，即用flush后pc发了req ，pc状态改变 (无视上一条是否data ok了 上一条的data ok由inst cancel接管)，flush后的pc在if 可以开始等dataok
    //     if(preif_to_if_valid) begin
    //         if_valid <= preif_to_if_valid;
    //     //当拍不能地址握手成功 && 刚好dataok了 ->if无指令,flush后的pc在preif
    //     end else if(if_ready_go && if_valid) begin
    //         if_valid <= `StageInvalid;
    //     end
    // flush时，如果if有指令，会在inst cancel取消这条指令。那么是否还要继续等dataok->要等 等的时候应该维持if valid为高
        //即，flush的时候如果if allowin = 0（在等dataok），if valid不应改变
    //如果if没有指令 if valid=0->if allowin = 1->正常preif给if
    end else if (if_allowin) begin
      if_valid <= preif_to_if_valid;
    //如果当前if pc已经等到了dataok，但id allowin = 0。if还是完成了取指，if不再有指令。已经完成的取指去了 if inst valid
    // end else if (!id_allowin && inst_sram_data_ok) begin
    //     if_valid<=`StageInvalid;
    end
end

always @(posedge clk) begin
    if (~resetn) begin
        if_pc <= `PcReset;
        if_excp      <= 1'b0;
        if_excp_num  <= 4'b0;

    // end else if(flush_sign) begin
    //     // 边flush边把flush得到的pc发了req，if有指令 可以开始等dataok
    //     if(preif_to_if_valid) begin
    //         if_pc <= nextpc;
    //         if_excp      <= preif_excp;
    //         if_excp_num  <= preif_excp_num;
    //     //刚好dataok了 && 当拍不能地址握手成功->if无指令
    //     end

    end else if (preif_to_if_valid && if_allowin) begin
        if_pc <= nextpc;
        if_excp      <= preif_excp;
        if_excp_num  <= preif_excp_num;
    end
end

// 指令缓存：只存有效的指令。状态变化类同 if 的阶段状态
// 应对 if_ready_go=1，id allowin=0（遇到乘除法时、遇load branch时）（如果不是乘除，不用寄存器也是来得及 具体原因不详
always @(posedge clk) begin
    if (~resetn /*| flush_sign*/) begin
        if_inst_r <= 32'h0;
        if_inst_valid <= 1'b0;
    end
    // if inst valid if级进入下一步
    else if (preif_to_if_valid & if_allowin) begin
        if_inst_valid <= 1'b0;
    end
    //遇到 不是要被取消的dataok就存下来
    else if (inst_sram_data_ok && !if_inst_cancel) begin
        if_inst_r <= inst_sram_rdata;
        if_inst_valid <= 1'b1;
    end
end   

//br从id来，当拍可能就要，所以用 逻辑和时序两个共同判分支
always @(posedge clk) begin
    if (~resetn /*| flush_sign*/) begin
        br_bus_r_valid <=  1'b0;
        br_bus_r       <= 34'b0;
    end
    else if(preif_ready_go && if_allowin) begin
        br_bus_r_valid <= 1'b0;
    end
    else if (br_really_taken) begin
        br_bus_r_valid <= 1'b1;
        br_bus_r <= id_to_if_bus;
    end
end


//flush_r用于在flush发生时，flush过去的npc无法立即地址握手成功（即完成其在preif阶段的任务）时置起，用于保留npc状态等待 地址握手成功
    //flush_r应当在flush发生，但当拍无法地址握手成功时置起
//以下逻辑只能应对有一条需要取消的指令：在req时用if allowin保证最多只有一条需要取消的

//excp_flush_r信号生成
always @(posedge clk) begin
    if (~resetn) begin
        excp_flush_r <= 1'b0;
    end
    else if (excp_flush && !(preif_ready_go && if_allowin)) begin //preif去不了if。就存
        excp_flush_r <= 1'b1;
    end
    else if (preif_ready_go && if_allowin) begin //地址握手成功 && npc能进入if级了。即，当前flush在npc处完成了。就取消
        excp_flush_r <= 1'b0;
    end
end  
//ertn_flush_r信号生成
always @(posedge clk) begin
    if (~resetn) begin
        ertn_flush_r <= 1'b0;
    end
    else if (ertn_flush && !(preif_ready_go && if_allowin)) begin
        ertn_flush_r <= 1'b1;
    end
    else if (preif_ready_go && if_allowin) begin
        ertn_flush_r <= 1'b0;
    end
end  
//refetch_flush_r信号生成
always @(posedge clk) begin
    if (~resetn) begin
        refetch_flush_r <= 1'b0;
    end
    else if (refetch_flush && !(preif_ready_go && if_allowin)) begin
        refetch_flush_r <= 1'b1;
    end
    else if (preif_ready_go && if_allowin) begin
        refetch_flush_r <= 1'b0;
    end
end 


//不 写 inst_sram i.e.只是读
  //赋值instRAM接口
  // assign inst_sram_en    = preif_to_if_valid & (if_allowin|flush_sign); //相当于instram_valid
  // assign inst_sram_we   = 4'h0;
  // assign inst_sram_addr  = nextpc;
  // assign inst_sram_wdata = 32'b0;


//preif发起req，当if能进入 && preif valid && 不需要stall（id来的load-br）
  assign inst_sram_req   = if_allowin && !preif_excp && (!br_stall /*&& !if_inst_cancel*/ /*|| flush_sign*/); //仅当if_allowin为1时才能发出req是较简单但时序较差的解决方案
  assign inst_sram_wr = 1'b0;
  assign inst_sram_wstrb = 4'h0;
  assign inst_sram_size = 2'b10;
  assign inst_sram_addr = nextpc;
  assign inst_sram_wdata = 32'b0;


assign if_inst        = inst_sram_data_ok ? inst_sram_rdata : 
                        if_inst_valid     ? if_inst_r       : 
                        32'b0 ;

//exception
assign preif_excp_adef = (nextpc[0] || nextpc[1]); //word align 4 字节对齐时末两位都应该是0

// assign if_excp_tlbr = !inst_tlb_found && inst_addr_trans_en;
// assign if_excp_pif  = !inst_tlb_v && inst_addr_trans_en;
// assign if_excp_ppi  = (csr_plv > inst_tlb_plv) && inst_addr_trans_en;
assign if_excp_tlbr = 1'b0; //因为inst_addr_trans_en为0，所以都暂时赋为0
assign if_excp_pif  = 1'b0;
assign if_excp_ppi  = 1'b0;

assign preif_excp = preif_excp_adef;
assign preif_excp_num = {preif_excp_adef};

assign excp = if_excp || if_excp_tlbr || if_excp_pif || if_excp_ppi ;
assign excp_num = {if_excp_ppi, if_excp_pif, if_excp_tlbr, if_excp_num};

//addr trans
// assign inst_addr_trans_en = pg_mode && !dmw0_en && !dmw1_en;
assign inst_addr_trans_en = 1'b0;
//因为还没有实现cache所以地址始终有效
assign inst_addr_ok = 1'b1;


//csr
assign flush_sign = ertn_flush || ertn_flush_r || excp_flush || excp_flush_r || refetch_flush || refetch_flush_r /*|| icacop_flush || idle_flush*/;
assign flush_sign_wire_o = ertn_flush || excp_flush || refetch_flush;

// assign flush_inst_delay = flush_sign && !inst_addr_ok/* || idle_flush*/;

//！这个或许可以写成组合逻辑？->不能吧，如果不在此添加时序逻辑，会导致flush一直为
// always @(posedge clk) begin
//     if (~resetn) begin
//         flush_inst_req_state <= flush_inst_req_empty;
//     end 
//     else case (flush_inst_req_state)
//         flush_inst_req_empty: begin
//             // if(flush_inst_delay) begin
//             //     flush_inst_req_buffer <= nextpc;
//             //     flush_inst_req_state  <= flush_inst_req_full;
//             // end
//         end
//         flush_inst_req_full: begin
//             if(preif_ready_go) begin
//                 flush_inst_req_state  <= flush_inst_req_empty;
//             end
//             else if (flush_sign) begin
//                 flush_inst_req_buffer <= nextpc;
//             end
//         end
//     endcase
// end

//when flush_sign meet icache_busy 1, flush_sign's inst valid should not set immediately
// assign inst_valid = (if_allowin && !preif_excp /*&& !tlb_excp_lock_pc*/ || flush_sign /*|| btb_pre_error_flush*/)/* && !(idle_flush || idle_lock)*/;
// assign inst_op     = 1'b0;
// assign inst_wstrb  = 4'h0;
// assign inst_addr   = nextpc; //nextpc
// assign inst_wdata  = 32'b0;

reg if_inst_cancel;
always @ (posedge clk) begin
    if (~resetn) begin
        if_inst_cancel <= 1'b0;
    end
    //当前在需要丢弃状态，且等来了需要丢弃的data ok
    else if(if_inst_cancel && inst_sram_data_ok) begin
        if_inst_cancel <= 1'b0;
    end
//flush信号只在来的那一拍会影响if级状态（指valid和inst cancel）(? 此处用wire_o和原本的都能PASS)
    //需要取消当前级指令
    else if(flush_sign_wire_o) begin
        //if有指令 && 在等。此处不用if allowin是因为，if allowin包含if没指令的情况（没指令就代表preif没握手成功就不用取消
        if(if_valid && !if_ready_go) begin
            if_inst_cancel <= 1'b1;
        end
    end
end



endmodule