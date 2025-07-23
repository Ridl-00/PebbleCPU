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
       input wire [`CSR_TO_IF_WD] csr_to_if_bus

);

//======================================================
//======== Parameter and Internal signals ==========
//======================================================

//当前stage控制信号
reg if_valid;  //当前流水级是否在处理指令
wire if_ready_go;  //if是否需要被阻塞

wire if_allowin;  //控制preIF组合逻辑数据是否可以传递进if_reg
wire preIf_to_if_valid;
wire preif_ready_go;

//if-preIF
wire [`InstAddrBus] seq_pc;  //+4自增
wire [`InstAddrBus] nextpc;  //最终更新到PC寄存器的指令地址




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

//id-if
  //拆解id组合逻辑传递给if组合逻辑的数据
  wire br_really_taken;
  // wire br_taken_cancel;
  wire [`InstAddrBus] br_target;
  // assign {br_taken, br_target, br_taken_cancel} = id_to_if_bus;
  assign {br_really_taken, br_target} = id_to_if_bus;

//跳转总线寄存器(防止因branch指令离开id阶段而导致br_bus数据丢失)
reg  [33:0]  br_bus_r;  
reg          br_bus_r_valid;
wire         br_taken_r;
wire [31:0]  br_target_r;
wire         br_stall_r;   

assign {br_taken_r,br_target_r} = br_bus_r;


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
    wire  [31:0]                  wb_pc            ; //wb来的pc状态(wb_csr_era) 用来刷新流水线后接着之前的pc
    wire  [31:0]                  csr_eentry       ; //csr来的例外后的pc（例外入口）
    wire  [31:0]                  csr_era          ; //被刷新前的if来的pc状态（刷新入口）
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

assign {
    excp_flush       ,
    ertn_flush       ,
    refetch_flush    ,
    // icacop_flush     ,
    wb_pc            , //wb来的pc状态(wb_csr_era) 用来刷新流水线后接着之前的pc
    csr_eentry       , //csr来的例外后的pc（例外入口） 32
    csr_era          //, //被刷新前的if来的pc状态（刷新入口） 32
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
assign preIf_to_if_valid = resetn & preif_ready_go;
assign preif_ready_go = (inst_sram_req & inst_sram_addr_ok) || preif_excp;
assign seq_pc            = if_pc + 32'h4;
//例外后的pc
assign excp_entry   = /*{32{excp_tlbrefill}}  & csr_tlbrentry |*/
                      /*{32{!excp_tlbrefill}} & */csr_eentry    ;



//刷新后的pc
assign inst_flush_pc = {32{ertn_flush}}                                  & csr_era         |
                       {32{refetch_flush /*|| icacop_flush || idle_flush*/}} & (wb_pc + 32'h4) ;

assign nextpc = 
                // (flush_inst_req_state == flush_inst_req_full)                   ? flush_inst_req_buffer     :
                excp_flush                                                      ? excp_entry                :
                (ertn_flush || refetch_flush /*|| icacop_flush || idle_flush*/)     ? inst_flush_pc             :
                br_really_taken                                                 ? br_target                 :
                br_taken_r && br_bus_r_valid   ? br_target_r     : 
                                                                                  seq_pc                    ;

//if
//当前stage控制信号
assign if_ready_go       = inst_sram_data_ok | excp;
assign if_allowin        = ~if_valid | if_ready_go & id_allowin; //if级没有在处理指令 或 if不需要被阻塞且id允许if进入
assign if_to_id_valid    = if_valid & if_ready_go & !(br_really_taken ||(br_taken_r && br_bus_r_valid));

always @(posedge clk) begin
//！把括号内的改为判断式会不会增加逻辑层次 路径变长？
    if (resetn==`RstEnable) begin //if不需要被冲刷，因为本身就是第一级，直接取被刷后的pc正常用就行
      if_valid <= `StageInvalid;
//！分支成立的情况时的条件变多
    // end else if(br_really_taken ||(br_taken_r && br_bus_r_valid)) begin 
    //   if_valid <= `StageInvalid;
    end else if (if_allowin) begin
      if_valid <= preIf_to_if_valid;
    //id被阻塞时 即使br_taken有效，if_valid也不行
    // end else if (br_taken_cancel) begin  //if_valid & (~id_allowin | ~if_ready_go)
    // end else if(if_valid & (~id_allowin | ~if_ready_go)) begin
    end
end

always @(posedge clk) begin
    if (~resetn) begin
        if_pc <= `PcReset;
        if_excp      <= 1'b0;
        if_excp_num  <= 4'b0;
    end else if (preIf_to_if_valid & (if_allowin|flush_sign)) begin
        if_pc <= nextpc;
        if_excp      <= preif_excp;
        if_excp_num  <= preif_excp_num;
    end
end

always @(posedge clk) begin
    if (~resetn) begin
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

//不 写 inst_sram i.e.只是读
  //赋值instRAM接口
  // assign inst_sram_en    = preIf_to_if_valid & (if_allowin|flush_sign); //相当于instram_valid
  // assign inst_sram_we   = 4'h0;
  // assign inst_sram_addr  = nextpc;
  // assign inst_sram_wdata = 32'b0;

  assign inst_sram_req   = /*& preIf_to_if_valid & */(if_allowin && !preif_excp )|| flush_sign; //仅当if_allowin为1时才能发出req是较简单但时序较差的解决方案
  assign inst_sram_wr = 1'b0;
  assign inst_sram_wstrb = 4'h0;
  assign inst_sram_size = 2'b10;
  assign inst_sram_addr = nextpc;
  assign inst_sram_wdata = 32'b0;

  assign if_inst         = inst_sram_rdata;

//指令缓存应对 if_ready_go=1，id allowin=0
// always @(posedge clk) begin
//     if (~resetn) begin
//         if_inst_r <= 32'h0;
//         if_inst_valid <= 1'b0;
//     end
//     else if (inst_sram_data_ok) begin
//         if_inst_r <= inst_sram_rdata;
//         if_inst_valid <= 1'b1;
//     end
//     else if (if_allowin) begin
//         if_inst_valid <= 1'b0;
//     end
// end    

// assign if_inst        = inst_sram_data_ok ? inst_sram_rdata : 
//                         if_inst_valid     ? if_inst_r       : 
//                         32'b0 ;

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
assign flush_sign = ertn_flush || excp_flush || refetch_flush /*|| icacop_flush || idle_flush*/;

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

endmodule