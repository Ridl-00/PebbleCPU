// `timescale 1ns / 1ps
`include "defines.v"

module preif_stage (
    input  wire clk,
    input  wire resetn,

    //preif-if
    input  wire if_allowin,
    output wire preif_to_if_valid,
    output wire [`PREIF_TO_IF_WD] preif_to_if_bus,

    //id-preif
    input  wire [`ID_TO_PREIF_WD] id_to_preif_bus,
    input wire [`CSR_TO_PREIF_WD] csr_to_preif_bus,
    output wire  cache_v,

    output        inst_sram_req,
    output        inst_sram_wr, //unused
    output [ 3:0] inst_sram_wstrb,
    output [ 1:0] inst_sram_size, //unused
    output [31:0] inst_sram_addr,
    output [31:0] inst_sram_wdata,
    input         inst_sram_addr_ok,

    input wire                 excp_flush   , //wb
    input wire                 ertn_flush   , //wb
    input wire                 refetch_flush  //wb                     
    
);

//=========================================================================================
//========================== Parameter and Internal signals ===============================
//=========================================================================================
//当前stage控制信号
reg preif_valid;
wire real_valid;

wire preif_allowin;
wire preif_ready_go;

//preif
wire [`InstAddrBus] seq_pc;  //+4自增
wire [`InstAddrBus] nextpc;  //最终更新到PC寄存器的指令地址
wire         preif_excp_adef; //地址对齐错误

reg [`InstAddrBus] preif_pc;
reg                preif_excp;
reg                preif_excp_num;

wire         flush_sign;

wire  [31:0] excp_entry;
wire  [31:0] inst_flush_pc;

//csr-preif
    // wire                          icacop_flush     ;
    wire  [31:0]                  wb_pc            ; //用来刷新流水线后接着最后一条已完成的pc refetch
    wire  [31:0]                  csr_eentry       ; //csr来的例外入口(提前靠指令写好)
    wire  [31:0]                  csr_era          ; //上一条触发例外的指令的 PC 32

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

}=csr_to_preif_bus;

 wire        pre_taken_o;    
 wire [31:0] pre_target_o ;

//id-preif
  //拆解id组合逻辑传递给if组合逻辑的数据
  wire is_br;
  wire [31:0] br_pc;
  wire br_really_taken;
  wire [`InstAddrBus] real_pc;
  wire br_stall;

  assign {
    br_flush,           //67 //预测错，刷流水线走real pc
    is_br,              //66
    br_pc,              //65：34
    br_really_taken,    //33
    real_pc,            //id给出的正确地址
    br_stall            //0
    } = id_to_preif_bus;



bpu u_bpu(
   .clk             (clk),
   .rst_n           (resetn),
   .pc_i            (preif_pc),           // PC of current branch instruction

   .set_i           (is_br),           // 更新BTB的使能信号
   .set_pc_i        (br_pc),       // 要更新的分支指令PC
   .set_taken_i     (br_really_taken),     // 实际的分支结果
   .set_target_i    (real_pc),   // 实际的分支目标地址

   .pre_taken_o     (pre_taken_o),     // 预测的分支结果
   .pre_target_o    (pre_target_o)// 预测的分支目标地址
);


//==============================================================================================
//======================================== Main Code ===========================================
//==============================================================================================
// preIF
assign preif_ready_go = (inst_sram_req && inst_sram_addr_ok && !br_stall) || preif_excp;
assign preif_allowin = ~preif_valid || preif_ready_go && if_allowin;
assign preif_to_if_valid = resetn && preif_ready_go; 

assign seq_pc            = preif_pc + 32'h4;
//例外后的pc
assign excp_entry   = csr_eentry    ;

assign inst_flush_pc = {32{ertn_flush}} & csr_era |
                       {32{refetch_flush}} & (wb_pc + 32'h4) ;

assign nextpc = 
                excp_flush                    ? excp_entry    :
                (ertn_flush || refetch_flush) ? inst_flush_pc :
                br_flush                      ? real_pc       :
                pre_taken_o                   ? pre_target_o  :
                seq_pc ;

  assign inst_sram_req   = if_allowin && real_valid && (!br_stall); 
  assign inst_sram_wr = 1'b0;
  assign inst_sram_wstrb = 4'h0;
  assign inst_sram_size = 2'b10;
  assign inst_sram_addr = p_inst_sram_addr;//翻译后的nextpc;
  assign inst_sram_wdata = 32'b0;

assign real_valid = preif_valid && !preif_excp;

always @(posedge clk) begin
    if (resetn==`RstEnable) begin 
        preif_valid <= `StageInvalid;
    end else if (preif_allowin) begin
        preif_valid <= 1'b1;
    end
end

always @(posedge clk) begin
    if (~resetn) begin
        preif_pc <= `PcReset;
        preif_excp      <= 1'b0;
        preif_excp_num  <= 1'b0;
    end else if (preif_allowin || flush_sign || br_flush) begin
        preif_pc <= nextpc;
        preif_excp      <= preif_excp_adef;
        preif_excp_num  <= {preif_excp_adef};
    end
end

//exception
assign preif_excp_adef = (nextpc[0] | nextpc[1]); 
//csr
assign flush_sign = ertn_flush || excp_flush || refetch_flush ;
    wire [2:0] addr_head_i;
    assign addr_head_i = preif_pc[31:29];

    wire [2:0] dmw0_vseg,dmw0_pseg,dmw1_vseg,dmw1_pseg;
    assign dmw0_vseg = csr_dmw0[31:29];
    assign dmw0_pseg = csr_dmw0[27:25];
    assign dmw1_vseg = csr_dmw1[31:29];
    assign dmw1_pseg = csr_dmw1[27:25];

    //此处hit没判断特权等级
    wire dmw0_hit,dmw1_hit;
    assign dmw0_hit = addr_head_i == dmw0_vseg;
    assign dmw1_hit = addr_head_i == dmw1_vseg;

    assign p_inst_sram_addr = csr_da ? preif_pc                     :
                    csr_pg && dmw0_hit ? {dmw0_pseg, preif_pc[28:0]} :
                    csr_pg && dmw1_hit ? {dmw1_pseg, preif_pc[28:0]} :
                    32'b0;
  //存储访问控制逻辑dmw/tlb
    assign cache_v = 1'b1; 


assign preif_to_if_bus = {
    pre_taken_o,//66
    pre_target_o,//65:34
    preif_excp_num, //33
    preif_excp,     //32
    preif_pc        //31:0
};

endmodule