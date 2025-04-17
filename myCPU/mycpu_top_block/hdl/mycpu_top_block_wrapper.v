//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Apr 17 17:55:54 2025
//Host        : Super-EvilLoong running 64-bit major release  (build 9200)
//Command     : generate_target mycpu_top_block_wrapper.bd
//Design      : mycpu_top_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mycpu_top_block_wrapper
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

  wire clk;
  wire [31:0]data_sram_addr;
  wire data_sram_en;
  wire [31:0]data_sram_rdata;
  wire [31:0]data_sram_wdata;
  wire [3:0]data_sram_we;
  wire [31:0]debug_wb_pc;
  wire [31:0]debug_wb_rf_wdata;
  wire [3:0]debug_wb_rf_we;
  wire [4:0]debug_wb_rf_wnum;
  wire [31:0]inst_sram_addr;
  wire inst_sram_en;
  wire [31:0]inst_sram_rdata;
  wire [31:0]inst_sram_wdata;
  wire [3:0]inst_sram_we;
  wire resetn;

  mycpu_top_block mycpu_top_block_i
       (.clk(clk),
        .data_sram_addr(data_sram_addr),
        .data_sram_en(data_sram_en),
        .data_sram_rdata(data_sram_rdata),
        .data_sram_wdata(data_sram_wdata),
        .data_sram_we(data_sram_we),
        .debug_wb_pc(debug_wb_pc),
        .debug_wb_rf_wdata(debug_wb_rf_wdata),
        .debug_wb_rf_we(debug_wb_rf_we),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .inst_sram_addr(inst_sram_addr),
        .inst_sram_en(inst_sram_en),
        .inst_sram_rdata(inst_sram_rdata),
        .inst_sram_wdata(inst_sram_wdata),
        .inst_sram_we(inst_sram_we),
        .resetn(resetn));
endmodule
