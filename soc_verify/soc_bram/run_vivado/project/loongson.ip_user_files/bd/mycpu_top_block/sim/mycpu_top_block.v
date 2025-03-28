//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Mar 28 21:29:26 2025
//Host        : Super-EvilLoong running 64-bit major release  (build 9200)
//Command     : generate_target mycpu_top_block.bd
//Design      : mycpu_top_block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mycpu_top_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mycpu_top_block,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=11,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "mycpu_top_block.hwdef" *) 
module mycpu_top_block
   (clk,
    data_sram_addr,
    data_sram_en,
    data_sram_rdata,
    data_sram_wdata,
    data_sram_we,
    debug_wb_pc,
    debug_wb_rf_wdata,
    debug_wb_rf_we,
    debug_wb_rf_wnum,
    inst_sram_addr,
    inst_sram_en,
    inst_sram_rdata,
    inst_sram_wdata,
    inst_sram_we,
    resetn);
  input clk;
  output [31:0]data_sram_addr;
  output data_sram_en;
  input [31:0]data_sram_rdata;
  output [31:0]data_sram_wdata;
  output [3:0]data_sram_we;
  output [31:0]debug_wb_pc;
  output [31:0]debug_wb_rf_wdata;
  output [3:0]debug_wb_rf_we;
  output [4:0]debug_wb_rf_wnum;
  output [31:0]inst_sram_addr;
  output inst_sram_en;
  input [31:0]inst_sram_rdata;
  output [31:0]inst_sram_wdata;
  output [3:0]inst_sram_we;
  input resetn;

  wire clk_1;
  wire [31:0]data_sram_rdata_1;
  wire [31:0]exe_stage_0_data_sram_addr;
  wire exe_stage_0_data_sram_en;
  wire [31:0]exe_stage_0_data_sram_wdata;
  wire [3:0]exe_stage_0_data_sram_we;
  wire exe_stage_0_exe_allowin;
  wire [38:0]exe_stage_0_exe_to_id_bus;
  wire [78:0]exe_stage_0_exe_to_mem_bus;
  wire exe_stage_0_exe_to_mem_valid;
  wire id_stage_0_id_allowin;
  wire [160:0]id_stage_0_id_to_exe_bus;
  wire id_stage_0_id_to_exe_valid;
  wire [33:0]id_stage_0_id_to_if_bus;
  wire [63:0]if_stage_0_if_to_id_bus;
  wire if_stage_0_if_to_id_valid;
  wire [31:0]if_stage_0_inst_sram_addr;
  wire if_stage_0_inst_sram_en;
  wire [31:0]if_stage_0_inst_sram_wdata;
  wire [3:0]if_stage_0_inst_sram_we;
  wire [31:0]inst_sram_rdata_1;
  wire mem_stage_0_mem_allowin;
  wire [38:0]mem_stage_0_mem_to_id_bus;
  wire [69:0]mem_stage_0_mem_to_wb_bus;
  wire mem_stage_0_mem_to_wb_valid;
  wire resetn_1;
  wire [31:0]wb_stage_0_debug_wb_pc;
  wire [31:0]wb_stage_0_debug_wb_rf_wdata;
  wire [3:0]wb_stage_0_debug_wb_rf_we;
  wire [4:0]wb_stage_0_debug_wb_rf_wnum;
  wire wb_stage_0_wb_allowin;
  wire [64:0]wb_stage_0_wb_to_id_bus;

  assign clk_1 = clk;
  assign data_sram_addr[31:0] = exe_stage_0_data_sram_addr;
  assign data_sram_en = exe_stage_0_data_sram_en;
  assign data_sram_rdata_1 = data_sram_rdata[31:0];
  assign data_sram_wdata[31:0] = exe_stage_0_data_sram_wdata;
  assign data_sram_we[3:0] = exe_stage_0_data_sram_we;
  assign debug_wb_pc[31:0] = wb_stage_0_debug_wb_pc;
  assign debug_wb_rf_wdata[31:0] = wb_stage_0_debug_wb_rf_wdata;
  assign debug_wb_rf_we[3:0] = wb_stage_0_debug_wb_rf_we;
  assign debug_wb_rf_wnum[4:0] = wb_stage_0_debug_wb_rf_wnum;
  assign inst_sram_addr[31:0] = if_stage_0_inst_sram_addr;
  assign inst_sram_en = if_stage_0_inst_sram_en;
  assign inst_sram_rdata_1 = inst_sram_rdata[31:0];
  assign inst_sram_wdata[31:0] = if_stage_0_inst_sram_wdata;
  assign inst_sram_we[3:0] = if_stage_0_inst_sram_we;
  assign resetn_1 = resetn;
  mycpu_top_block_exe_stage_0_0 exe_stage_0
       (.clk(clk_1),
        .data_sram_addr(exe_stage_0_data_sram_addr),
        .data_sram_en(exe_stage_0_data_sram_en),
        .data_sram_wdata(exe_stage_0_data_sram_wdata),
        .data_sram_we(exe_stage_0_data_sram_we),
        .exe_allowin(exe_stage_0_exe_allowin),
        .exe_to_id_bus(exe_stage_0_exe_to_id_bus),
        .exe_to_mem_bus(exe_stage_0_exe_to_mem_bus),
        .exe_to_mem_valid(exe_stage_0_exe_to_mem_valid),
        .id_to_exe_bus(id_stage_0_id_to_exe_bus),
        .id_to_exe_valid(id_stage_0_id_to_exe_valid),
        .mem_allowin(mem_stage_0_mem_allowin),
        .resetn(resetn_1));
  mycpu_top_block_id_stage_0_0 id_stage_0
       (.clk(clk_1),
        .exe_allowin(exe_stage_0_exe_allowin),
        .exe_to_id_bus(exe_stage_0_exe_to_id_bus),
        .id_allowin(id_stage_0_id_allowin),
        .id_to_exe_bus(id_stage_0_id_to_exe_bus),
        .id_to_exe_valid(id_stage_0_id_to_exe_valid),
        .id_to_if_bus(id_stage_0_id_to_if_bus),
        .if_to_id_bus(if_stage_0_if_to_id_bus),
        .if_to_id_valid(if_stage_0_if_to_id_valid),
        .mem_to_id_bus(mem_stage_0_mem_to_id_bus),
        .resetn(resetn_1),
        .wb_to_rf_bus(wb_stage_0_wb_to_id_bus));
  mycpu_top_block_if_stage_0_0 if_stage_0
       (.clk(clk_1),
        .id_allowin(id_stage_0_id_allowin),
        .id_to_if_bus(id_stage_0_id_to_if_bus),
        .if_to_id_bus(if_stage_0_if_to_id_bus),
        .if_to_id_valid(if_stage_0_if_to_id_valid),
        .inst_sram_addr(if_stage_0_inst_sram_addr),
        .inst_sram_en(if_stage_0_inst_sram_en),
        .inst_sram_rdata(inst_sram_rdata_1),
        .inst_sram_wdata(if_stage_0_inst_sram_wdata),
        .inst_sram_we(if_stage_0_inst_sram_we),
        .resetn(resetn_1));
  mycpu_top_block_mem_stage_0_0 mem_stage_0
       (.clk(clk_1),
        .data_sram_rdata(data_sram_rdata_1),
        .exe_to_mem_bus(exe_stage_0_exe_to_mem_bus),
        .exe_to_mem_valid(exe_stage_0_exe_to_mem_valid),
        .mem_allowin(mem_stage_0_mem_allowin),
        .mem_to_id_bus(mem_stage_0_mem_to_id_bus),
        .mem_to_wb_bus(mem_stage_0_mem_to_wb_bus),
        .mem_to_wb_valid(mem_stage_0_mem_to_wb_valid),
        .resetn(resetn_1),
        .wb_allowin(wb_stage_0_wb_allowin));
  mycpu_top_block_wb_stage_0_0 wb_stage_0
       (.clk(clk_1),
        .debug_wb_pc(wb_stage_0_debug_wb_pc),
        .debug_wb_rf_wdata(wb_stage_0_debug_wb_rf_wdata),
        .debug_wb_rf_we(wb_stage_0_debug_wb_rf_we),
        .debug_wb_rf_wnum(wb_stage_0_debug_wb_rf_wnum),
        .mem_to_wb_bus(mem_stage_0_mem_to_wb_bus),
        .mem_to_wb_valid(mem_stage_0_mem_to_wb_valid),
        .resetn(resetn_1),
        .wb_allowin(wb_stage_0_wb_allowin),
        .wb_to_id_bus(wb_stage_0_wb_to_id_bus));
endmodule
