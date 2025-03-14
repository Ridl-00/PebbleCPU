`timescale 1ns / 1ps
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
    output wire        inst_sram_en,
    output wire [`InstWriteEnable_WD] inst_sram_wen,
    output wire [`InstAddrBus       ] inst_sram_addr,
    output wire [`InstBus           ] inst_sram_wdata,
    input  wire [`InstBus           ] inst_sram_rdata

);

//======================================================
//======== Parameter and Internal signals ==========
//======================================================

//当前stage控制信号
reg if_valid;  //当前流水级是否在处理指令
wire if_ready_go;  //if是否需要被阻塞

wire if_allowin;  //控制preIF组合逻辑数据是否可以传递进if_reg
wire preIf_to_if_valid;

//if-preIF
wire [`InstAddrBus] seq_pc;  //+4自增
wire [`InstAddrBus] nextpc;  //最终更新到PC寄存器的指令地址


//id-if
  //拆解id组合逻辑传递给if组合逻辑的数据
  wire br_taken;
  // wire br_taken_cancel;
  wire [`InstAddrBus] br_target;
  // assign {br_taken, br_target, br_taken_cancel} = id_to_if_bus;
  assign {br_taken, br_target} = id_to_if_bus;

//if-id
  //组合传递给id_reg的数据
  wire [`InstBus] if_inst;
  reg  [`InstAddrBus] if_pc;
  assign if_to_id_bus      = {if_pc, if_inst};


//======================================================
//=================== Main Code ====================
//======================================================
//当前stage控制信号
assign if_ready_go       = `StageReadygo; //由于目前只从指令 RAM 中取回指令,因此当指令位于取指阶段的  时候,指令 RAM 一定可以返回指令码,于是取指阶段的 ready_go 信号恒为 1
assign if_allowin        = ~if_valid | if_ready_go & id_allowin; //if级没有在处理指令 或 if不需要被阻塞且id允许if进入
assign if_to_id_valid    = if_valid & if_ready_go;

// preIF
assign preIf_to_if_valid = resetn;
assign seq_pc            = if_pc + 32'h4;
assign nextpc            = br_taken ? br_target : seq_pc;

always @(posedge clk) begin
//！把括号内的改为判断式会不会增加逻辑层次 路径变长？
    if (resetn==`RstEnable) begin
      if_valid <= `StageInvalid;
    end else if (if_allowin) begin
      if_valid <= preIf_to_if_valid;
    //id被阻塞时 即使br_taken有效，if_valid也不行
    end else if (br_taken_cancel) begin  //if_valid & (~id_allowin | ~if_ready_go)
      if_valid <= `StageInvalid;
    end
end

always @(posedge clk) begin
    if (~resetn) begin
        if_pc <= `PcReset;
    end else if (if_allowin & preIf_to_if_valid) begin
        if_pc <= nextpc;
    end
end

//不 写 inst_sram i.e.只是读
  //赋值instRAM接口
  assign inst_sram_en    = preIf_to_if_valid & if_allowin; //相当于instram_valid
  assign inst_sram_wen   = 4'h0;
  assign inst_sram_addr  = nextpc;
  assign inst_sram_wdata = 32'b0;

  assign if_inst         = inst_sram_rdata;
endmodule