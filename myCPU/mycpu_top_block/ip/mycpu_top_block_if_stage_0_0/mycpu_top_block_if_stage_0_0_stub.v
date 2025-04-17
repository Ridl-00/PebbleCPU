// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 14:30:13 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mycpu_top_block_if_stage_0_0 -prefix
//               mycpu_top_block_if_stage_0_0_ mycpu_top_block_if_stage_0_0_stub.v
// Design      : mycpu_top_block_if_stage_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "if_stage,Vivado 2023.2" *)
module mycpu_top_block_if_stage_0_0(clk, resetn, id_allowin, if_to_id_valid, 
  if_to_id_bus, id_to_if_bus, inst_sram_en, inst_sram_we, inst_sram_addr, inst_sram_wdata, 
  inst_sram_rdata)
/* synthesis syn_black_box black_box_pad_pin="resetn,id_allowin,if_to_id_valid,if_to_id_bus[63:0],id_to_if_bus[33:0],inst_sram_en,inst_sram_we[3:0],inst_sram_addr[31:0],inst_sram_wdata[31:0],inst_sram_rdata[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  input id_allowin;
  output if_to_id_valid;
  output [63:0]if_to_id_bus;
  input [33:0]id_to_if_bus;
  output inst_sram_en;
  output [3:0]inst_sram_we;
  output [31:0]inst_sram_addr;
  output [31:0]inst_sram_wdata;
  input [31:0]inst_sram_rdata;
endmodule
