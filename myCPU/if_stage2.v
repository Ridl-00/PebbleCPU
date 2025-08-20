// `timescale 1ns / 1ps
`include "defines.v"

module if_stage2 (
    input wire clk,
    input wire resetn,

    //preif-if
    output wire if_allowin,
    input wire preif_to_if_valid,
    input wire [`PREIF_TO_IF_WD] preif_to_if_bus,

    //if-id
    input wire id_allowin,
    output wire if_to_id_valid,
    output wire [`IF_TO_ID_WD] if_to_id_bus,

    // input wire [`ID_TO_IF_WD] id_to_if_bus,
    input         br_really_taken , //用于取消跳转导致无效的指令,类似flush

    input  [31:0] inst_sram_rdata,
    input         inst_sram_data_ok,

    input wire                 excp_flush   , //wb
    input wire                 ertn_flush   , //wb
    input wire                 refetch_flush  //wb 

);

//=========================================================================================
//========================== Parameter and Internal signals ===============================
//=========================================================================================
//当前stage控制信号
reg if_valid;  //当前流水级是否在处理指令
wire if_ready_go;  //if是否需要被阻塞
reg [`PREIF_TO_IF_WD] if_data;

// wire if_allowin;  //控制preIF组合逻辑数据是否可以传递进if_reg

/*preif
// wire preif_to_if_valid;
// wire preif_ready_go;

// //if-preIF
// wire [`InstAddrBus] seq_pc;  //+4自增
// wire [`InstAddrBus] nextpc;  //最终更新到PC寄存器的指令地址

// wire         inst_addr_trans_en; //地址转换使能

// wire         preif_excp_adef; //地址对齐错误

*/

wire [`InstAddrBus] if_pc;
wire         if_excp;
wire         if_excp_num;
 wire        pre_taken_o;    
 wire [31:0] pre_target_o ;

assign {
    pre_taken_o,
    pre_target_o,
    if_excp_num,
    if_excp,
    if_pc
} = if_data;

// wire         if_excp_tlbr; //TLB 相关异常
// wire         if_excp_pif; //预取指异常
// wire         if_excp_ppi; //保护异常 违反保护机制（如内存访问权限、特权级限制等）

wire         excp;
wire [3:0]   excp_num;

/*preif
wire         preif_excp;
wire         preif_excp_num;
*/

wire         flush_sign;

// reg  [31:0]  inst_rd_buff;
// reg          inst_buff_enable;

/*preif
wire  [31:0] excp_entry;
wire  [31:0] inst_flush_pc;
*/


//id-if
  //拆解id组合逻辑传递给if组合逻辑的数据
//   wire br_really_taken;
//   wire [`InstAddrBus] br_target;
//   wire br_stall;
//   assign {br_really_taken, br_target, br_stall} = id_to_if_bus;

// //跳转总线寄存器(防止因branch指令离开id阶段而导致br_bus数据丢失)
// reg  [33:0]  br_bus_r;  
// reg          br_bus_r_valid;
// wire         br_taken_r;
// wire [31:0]  br_target_r;
// wire br_stall_r;

// assign {br_taken_r,br_target_r, br_stall_r} = br_bus_r;





//if-id
wire [      `InstBus] if_inst;
//   reg  [`InstAddrBus] if_pc;


reg  [  `InstAddrBus] if_inst_r;  //IF阶段指令寄存器
reg                   if_inst_valid;

reg if_inst_cancel;

assign if_to_id_bus = {
        pre_taken_o,//101
    pre_target_o,   //100:69
                       excp,            //68:68
                       excp_num,        //67:64
                       if_inst,         //63:32
                       if_pc            //31:0
                      };

//csr-if
// wire                          icacop_flush     ;
/*preif
wire  [31:0]                  wb_pc            ; //用来刷新流水线后接着最后一条已完成的pc refetch
wire  [31:0]                  csr_eentry       ; //csr来的例外入口(提前靠指令写好)
wire  [31:0]                  csr_era          ; //上一条触发例外的指令的 PC 32
*/

// wire                          excp_tlbrefill   ;
// wire  [31:0]                  csr_tlbrentry    ;
// wire                          has_int          ;

/*pre
reg                          excp_flush_r       ;
reg                          ertn_flush_r       ;
reg                          refetch_flush_r    ;
*/


/*pre
//addr trans(cache)
wire  [`InstAddrBus] p_inst_sram_addr;
wire  [ 1:0]  crmd_plv ;
wire  [ 1:0]  crmd_datf;
wire          csr_da       ;
wire          csr_pg       ;
wire  [31:0]  csr_dmw1     ;
wire  [31:0]  csr_dmw0     ;

assign {
    crmd_plv ,
    crmd_datf,
    csr_da   ,
    csr_pg   ,
    csr_dmw1 ,
    csr_dmw0 ,
    wb_pc            ,  //95:64
    csr_eentry       ,  //63:32
    csr_era          //, //31:0
    // excp_tlbrefill   ,
    // csr_tlbrentry    , //32
    // has_int          ,
    //disable_cache     

}=csr_to_if_bus;
*/

//==============================================================================================
//======================================== Main Code ===========================================
//==============================================================================================
// // preIF
// assign preif_to_if_valid = resetn && preif_ready_go; //表示这拍刚好在发req 或 其余可以继续进行的（如excp

// //preif发完req即为完成preif阶段任务，即 preif to if valid为1。即，req决定preif readygo 进而决定preif to if valid
// assign preif_ready_go = (inst_sram_req && inst_sram_addr_ok && !br_stall) || preif_excp;
// assign seq_pc            = if_pc + 32'h4;
// //例外后的pc
// assign excp_entry   = /*{32{excp_tlbrefill}}  & csr_tlbrentry |*/
//                       /*{32{!excp_tlbrefill}} & */csr_eentry    ;

// //刷新后的pc
// assign inst_flush_pc = {32{ertn_flush || ertn_flush_r}}                                  & csr_era         |
//                        {32{refetch_flush || refetch_flush_r /*|| icacop_flush || idle_flush*/}} & (wb_pc + 32'h4) ;

// assign nextpc = 
//                 excp_flush  || excp_flush_r                                      ? excp_entry      :
//                 (ertn_flush || ertn_flush_r || refetch_flush || refetch_flush_r 
//                 /*|| icacop_flush || idle_flush*/)                               ? inst_flush_pc   :
//                 br_really_taken                                                  ? br_target       :
//                 br_taken_r && br_bus_r_valid                                     ? br_target_r     : seq_pc ;

//preif发起req，当if能进入 && preif valid && 不需要stall（id来的load-br）
//   assign inst_sram_req   = if_allowin && !preif_excp && (!br_stall /*&& !if_inst_cancel*/ /*|| flush_sign*/); //仅当if_allowin为1时才能发出req是较简单但时序较差的解决方案
//   assign inst_sram_wr = 1'b0;
//   assign inst_sram_wstrb = 4'h0;
//   assign inst_sram_size = 2'b10;
//   assign inst_sram_addr = p_inst_sram_addr;//翻译后的nextpc;
//   assign inst_sram_wdata = 32'b0;


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
assign if_ready_go       = (inst_sram_data_ok || if_inst_valid ) || excp; //握手当拍或者有存下来的inst_r 且在等待data ok时（即使是需要被取消的）不应继续下去
assign if_allowin        = !if_valid || if_ready_go && id_allowin; //if级没有在处理指令 或 if不需要被阻塞且id允许if进入
assign if_to_id_valid    = if_valid && if_ready_go && !(if_inst_cancel || flush_sign || br_really_taken /*|| (br_taken_r && br_bus_r_valid)*/);


always @(posedge clk) begin
//！把括号内的改为判断式会不会增加逻辑层次 路径变长？
    if (resetn==`RstEnable || flush_sign || br_really_taken) begin
        if_valid <= `StageInvalid;
    end else if (if_allowin) begin
      if_valid <= preif_to_if_valid;
    end
end

always @(posedge clk) begin
    /*
    if (~resetn) begin
        if_pc <= `PcReset;
        if_excp      <= 1'b0;
        if_excp_num  <= 4'b0;
        if_data <= 0;
    end else */
    if (preif_to_if_valid && if_allowin) begin
        // if_pc <= nextpc;
        // if_excp      <= preif_excp;
        // if_excp_num  <= preif_excp_num;
        if_data <= preif_to_if_bus;
    end
end

assign if_inst = inst_sram_data_ok ? inst_sram_rdata : 
                 if_inst_valid     ? if_inst_r       : 
                 32'b0 ;
// 指令缓存：只存有效的指令。状态变化类同 if 的阶段状态
// 应对 if_ready_go=1，id allowin=0（遇到乘除法时、遇load branch时）（如果不是乘除，不用寄存器也是来得及 具体原因不详
always @(posedge clk) begin
    if (~resetn || flush_sign || br_really_taken) begin
        if_inst_r <= 32'h0;
        if_inst_valid <= 1'b0;
    end
    // if inst valid if级进入下一步
    else if (preif_to_if_valid && if_allowin) begin
        if_inst_valid <= 1'b0;
    end
    //遇到 不是要被取消的dataok就存下来
    else if (inst_sram_data_ok && !if_inst_cancel) begin
        if_inst_r <= inst_sram_rdata;
        if_inst_valid <= 1'b1;
    end
end   


// //br从id来，当拍可能就要，所以用 逻辑和时序两个共同判分支
// always @(posedge clk) begin
//     if (~resetn /*|| flush_sign*/) begin
//         br_bus_r_valid <=  1'b0;
//         br_bus_r       <= 34'b0;
//     end
//     else if(preif_ready_go && if_allowin) begin
//         br_bus_r_valid <= 1'b0;
//     end
//     else if (br_really_taken) begin
//         br_bus_r_valid <= 1'b1;
//         br_bus_r <= id_to_if_bus;
//     end
// end


/*
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

*/


//cancel
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
    else if(flush_sign || br_really_taken) begin
        //if有指令 && 在等。此处不用if allowin是因为，if allowin包含if没指令的情况（没指令就代表preif没握手成功就不用取消
        if(if_valid && !if_ready_go) begin
            if_inst_cancel <= 1'b1;
        end
    end
end

//exception
/*preif
assign preif_excp_adef = (nextpc[0] | nextpc[1]); //word align 4 字节对齐时末两位都应该是0
*/

// assign if_excp_tlbr = !inst_tlb_found && inst_addr_trans_en;
// assign if_excp_pif  = !inst_tlb_v && inst_addr_trans_en;
// assign if_excp_ppi  = (csr_plv > inst_tlb_plv) && inst_addr_trans_en;


/*preif
assign preif_excp = preif_excp_adef;
assign preif_excp_num = {preif_excp_adef};
*/

assign excp = if_excp /*|| if_excp_tlbr || if_excp_pif || if_excp_ppi */;
assign excp_num = {/*if_excp_ppi, if_excp_pif, if_excp_tlbr,*/3'b0, if_excp_num};


//csr
assign flush_sign = ertn_flush || excp_flush || refetch_flush /*|| icacop_flush || idle_flush*/;

/*preif
//mmu-inst
  //地址翻译addr_i=>addr_o
    wire [2:0] addr_head_i;
    assign addr_head_i = nextpc[31:29];

    wire [2:0] dmw0_vseg,dmw0_pseg,dmw1_vseg,dmw1_pseg;
    assign dmw0_vseg = csr_dmw0[31:29];
    assign dmw0_pseg = csr_dmw0[27:25];
    assign dmw1_vseg = csr_dmw1[31:29];
    assign dmw1_pseg = csr_dmw1[27:25];

    //此处hit没判断特权等级
    wire dmw0_hit,dmw1_hit;
    assign dmw0_hit = addr_head_i == dmw0_vseg;
    assign dmw1_hit = addr_head_i == dmw1_vseg;

    assign p_inst_sram_addr = csr_da ? nextpc                     :
                    csr_pg && dmw0_hit ? {dmw0_pseg, nextpc[28:0]} :
                    csr_pg && dmw1_hit ? {dmw1_pseg, nextpc[28:0]} :
                    32'b0;
  //存储访问控制逻辑dmw/tlb
    assign cache_v = 1'b1; 
*/
endmodule