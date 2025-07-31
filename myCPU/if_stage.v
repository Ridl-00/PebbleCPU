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
assign preif_to_if_valid = resetn & preif_ready_go /*& !(flush_sign)*/; //表示这拍刚好在发req 或 其余可以继续进行的（如excp
                                                                            //flush时也可能在发req，且此时req是对的，故不能因为flush把preif to if valid置
// assign preif_to_if_valid = resetn & preif_ready_go /* & !(flush_sign)*/& !(br_really_taken ||(br_taken_r && br_bus_r_valid)||flush_sign); //6级（？）
//考虑修改：preif readygo理解为：能发req（而不是已经在发req） && 从方addr ok
//关键在于：pre if发req需不需要preif to if valid。或许实际上，preif ready go和req必然同步为1
//目前正解：preif发完req即为完成preif阶段任务，即 preif to if valid为1。即，req决定preif readygo 进而决定preif to if valid
// assign preif_allowin = ~preif_valid | preif_ready_go & if_allowin; //6级（？）
assign preif_ready_go = (inst_sram_req & inst_sram_addr_ok && !br_stall) || preif_excp;
assign seq_pc            = if_pc + 32'h4;
//例外后的pc
assign excp_entry   = /*{32{excp_tlbrefill}}  & csr_tlbrentry |*/
                      /*{32{!excp_tlbrefill}} & */csr_eentry    ;



//刷新后的pc
assign inst_flush_pc = {32{ertn_flush || ertn_flush_r}}                                  & csr_era         |
                       {32{refetch_flush || refetch_flush_r /*|| icacop_flush || idle_flush*/}} & (wb_pc + 32'h4) ;

assign nextpc = 
                // (flush_inst_req_state == flush_inst_req_full)                   ? flush_inst_req_buffer     :
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

/* 一些if阶段的状态指示
if_valid && if_ready_go 当拍刚好完成了数据握手（一般不保持
if_valid && !if_ready_go 正在等待if pc的data ok（可保持
if_valid && if_inst_cancel 当前已经完成了两次地址握手，且下一个收到的data ok是需要被取消的
    此时的if pc应当为需要被cancel的那一条（前者），因为即使要被取消，等的还是它
    在收到一次data ok之后，if inst cancel置0的同时跳转pc
if_valid [&& !if_inst_cancel] 正常等待一个dataok（使用时应该无需 显式的写出 !if_inst_cancel


*/

//if
//flush在if级会导致：标记是否有一个需要被丢弃的dataok
//当前stage控制信号
//不readygo表示需在等dataok，即不需要等（还没发 req || （正好接到dataok || 已经接到dataok ）|| 有其余更高优先级的事件 ）时
//被取消的dataok也应当能置起readygo，否则在遇到 一个握手成功，一个被取消时。直接就卡住了。
assign if_ready_go       = (inst_sram_data_ok | if_inst_valid ) /*&& !if_inst_cancel*/ || excp; //握手当拍或者有存下来的inst_r 且在等待data ok时（即使是需要被取消的）不应继续下去
assign if_allowin        = ~if_valid | if_ready_go & id_allowin; //if级没有在处理指令 或 if不需要被阻塞且id允许if进入
assign if_to_id_valid    = if_valid & if_ready_go & !(br_really_taken || (br_taken_r && br_bus_r_valid) || flush_sign || if_inst_cancel );
//preif excp和inst cancel碰在一起：由于excp不需要等data ok
//即，没有下一个data ok了，preif excp这条本该继续往下走。即，在if to id valid 时，preif excp造成的1优先级比inst cancel造成的0要高
    //所以，除了if_valid & if_ready_go以外的会导致 to id valid的信号都要放在括号里
        //推翻以上：放在括号里是一方面，目前没有问题。但此举无法解决preif excp和if inst cancel的冲突。
        //尝试：用if_inst_cancel && !preif_excp
            //推广以上：当flush的时候flush到的新pc时也有可能有preif excp
            //尝试：干脆括号里的条件都需要！preif excp，因为更新后的pc都有可能造成preif excp
                //推翻以上：preif excp不该对if to id valid造成影响吧？
//！这里肯定可以逻辑推理后化简
//if ready go = 1 但id allowin = 0 时


//if valid和if inst cancel共同表示if阶段的状态
//if valid && ！cancel 正常等dataok。等到可以跳pc
//if valid && cancel 表示 已经地址握手成功两次，且第一个收到的dataok是不要的。不跳pc

always @(posedge clk) begin
//！把括号内的改为判断式会不会增加逻辑层次 路径变长？
    if (resetn==`RstEnable) begin //if不需要被冲刷，因为本身就是第一级，直接取被刷后的pc正常用就行
                                                    //推翻以上：flush时可能无法立即能够取指（addr ok可能不为1），此时需要req保持在高（通过if valid低，此时没有发req，则if不需要等，即流水级无指令）
      if_valid <= `StageInvalid;
    end else if(flush_sign) begin
        // 边flush边把flush得到的pc发了req，if有指令 可以开始等dataok
        if(preif_to_if_valid) begin
            if_valid <= preif_to_if_valid;
        //刚好dataok了 && 当拍不能地址握手成功->if无指令
        end else if(if_ready_go && if_valid) begin
            if_valid <= `StageInvalid;
        end
    // flush时，如果if有指令，会在inst cancel取消这条指令。那么是否还要继续等dataok->要等 等的时候应该维持if valid为高
        //即，flush的时候如果if allowin = 0（在等dataok），if valid不应改变
    //如果if没有指令 if valid=0->if allowin = 1->正常preif给if
    end else if (if_allowin && !if_inst_cancel) begin
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
    //正常allowin或者由于刷新取指，都是在 已经发了req||有例外 的情况下
        //补充以上：req了不代表握手成功，故flush了不代表pc可以直接更新
            //if allowin 时可能是if没在等，也可能是在等且要取消，也可能是在等且不取消
//if pc表示当前在等data ok的pc
//在等需要cancel（if valid && if inst cancel）的：pc要跳（即使还没等到）,跳到被cancel之后的那条
//在收到需要被取消的dataok的同时 取消后第一条有效的地址握手成功->if pc要跳
    //只有在当前有inst cancel且if pc已经是有效的那一条时不需要再跳
    //问题在于：无法通过已有信号分辨 当前在等的if pc是要被cancel的还是不需要被cancel的，因为if inst cancel与if状态和data ok有关
        //推翻以上：在inst cancel的情况下，即使前一个data ok还没等到（if valid为1但 if readygo 和if allowin为0（要被取消的在等没等到））。也应该跳pc
        //即，if直接进入下一条指令的处理（等下一个pc）（同样if valid为1但 if readygo 和if allowin为0（要被取消的在等没等到。
        //即，类似于直接跳过要被取消的那个的等待 因为这条要被跳过的dataok会被inst calcel解决
            //但对于以上，如果 带有inst cancel的if pc等来了要被cancel的data ok的同时，被下一个pc地址握手成功了，cancel后的第一条指令会被错误的跳过
                //尝试：对于带有inst cancel的if valid，先不允许发req

    end else if(flush_sign) begin
        // 边flush边把flush得到的pc发了req，if有指令 可以开始等dataok
        if(preif_to_if_valid) begin
            if_pc <= nextpc;
            if_excp      <= preif_excp;
            if_excp_num  <= preif_excp_num;
        //刚好dataok了 && 当拍不能地址握手成功->if无指令

        end

    end else if (preif_to_if_valid && if_allowin && !if_inst_cancel) begin
        if_pc <= nextpc;
        if_excp      <= preif_excp;
        if_excp_num  <= preif_excp_num;
    end
end

// 指令缓存：只存有效的指令
// 应对 if_ready_go=1，id allowin=0（遇到乘除法时、遇load branch时）（如果不是乘除，不用寄存器也是来得及 具体原因不详
always @(posedge clk) begin
    if (~resetn) begin
        if_inst_r <= 32'h0;
        if_inst_valid <= 1'b0;
    end
    // if inst valid if级进入下一步 || 被刷掉了
    else if (preif_to_if_valid & (if_allowin) || flush_sign) begin
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
    if (~resetn | flush_sign) begin
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

//flush_sign应该留到 flush到的这条真正 地址握手成功
    //推翻以上：flush sign应该留到flush到的这条 数据握手成功。否侧pc会出错。详见DEBUG NO.072901
//以下逻辑只能应对有一条需要取消的指令
//增加只有在后面的流水级都没有flush时才能发req逻辑，即req取到的指令保证有效

//excp_flush_r信号生成
always @(posedge clk) begin
    if (~resetn) begin
        excp_flush_r <= 1'b0;
    end
    else if (excp_flush && (!preif_ready_go || !if_allowin && preif_ready_go)) begin //尚未真正握手成功。或者上一指令在preif握手成功了，但还不能进去if
        excp_flush_r <= 1'b1;
    end
    else if (preif_ready_go && if_allowin) begin //刚好地址握手成功就不起了;置起后地址握手成功了就置0
        excp_flush_r <= 1'b0;
    end
end  
//ertn_flush_r信号生成
always @(posedge clk) begin
    if (~resetn) begin
        ertn_flush_r <= 1'b0;
    end
    else if (ertn_flush && (!preif_ready_go || !if_allowin && preif_ready_go)) begin
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
    else if (refetch_flush && (!preif_ready_go || !if_allowin && preif_ready_go)) begin
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

//   assign data_sram_req = exe_valid & access_mem & ~excp & ~exe_flush_sign & mem_allowin; //追究allowin，参考inst_req

//preif发起req，当if能进入 && preif valid && 不需要stall（id来的load-br）
//if发req时要保证现在在流水线上的没有带着要刷新的信号的指令，与dram req类同（推翻，使用cancel逻辑）
//flush时立即用新的pc发req（推翻，因为flush时不一定有addr ok）
    //推翻以上：flush时需要保持req为1等待addr ok，详见debug NO.72901

    //如果有inst cancel，为了避免cancel后的第一条指令被略过（因为cancel指令的data ok有可能被误判为cancel后第一条指令的dataok）
    //以上可以保证 if allowin必然不是cancel的指令置起的data ok->if allowin
    //有例外不发：即使是flush了，有例外的也是flush后新的pc
  assign inst_sram_req   = if_allowin && !preif_excp && (!br_stall && !if_inst_cancel || flush_sign); //仅当if_allowin为1时才能发出req是较简单但时序较差的解决方案
  assign inst_sram_wr = 1'b0;
  assign inst_sram_wstrb = 4'h0;
  assign inst_sram_size = 2'b10;
  assign inst_sram_addr = nextpc;
  assign inst_sram_wdata = 32'b0;

//   assign if_inst         = inst_sram_rdata;
 

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
//flush信号支在来的那一拍会影响cpu状态（指valid和inst cancel）（？）
    //需要取消当前级指令
    else if(flush_sign_wire_o) begin
        //且刚好发了req || 已经发完req了，if正在等data ok
            //推翻以上：刚好发req的时候其实addr和req都是对的，那么不用cancel直接用就行。（因为flush导致的req也是当拍）
            //即，if有指令 && 在等。此处不用if allowin是因为，if allowin包含if没指令的情况（没指令就代表preif没握手成功就不用取消
        if(if_valid && !if_ready_go) begin
            if_inst_cancel <= 1'b1;
    // //某一条的data ok还没等来，下一条有excp（excp会导致忽略原有流水级逻辑 导致if ready提前为1。
    // //接着那条还没等来data ok的被flush了
        //推翻以上：excp 和 flush叠加的情况下无法分辨是否有未完成的取指。改动不应由cancel完成，而是
        //没等到data ok的时候，即使preif excp了也不应该让 引起preif excp的指令进入if
    //     end else if(excp && if_valid && !if_ready_go) begin
    //         if_inst_cancel <= 1'b1;
        end
    end
end



endmodule