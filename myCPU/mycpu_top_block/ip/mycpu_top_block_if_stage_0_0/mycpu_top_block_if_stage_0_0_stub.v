// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:04:56 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_if_stage_0_0/mycpu_top_block_if_stage_0_0_stub.v
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
  inst_sram_rdata, excp_flush, ertn_flush, refetch_flush, wb_pc, csr_eentry, csr_era, has_int, 
  csr_plv)
/* synthesis syn_black_box black_box_pad_pin="resetn,id_allowin,if_to_id_valid,if_to_id_bus[68:0],id_to_if_bus[33:0],inst_sram_en,inst_sram_we[3:0],inst_sram_addr[31:0],inst_sram_wdata[31:0],inst_sram_rdata[31:0],excp_flush,ertn_flush,refetch_flush,wb_pc[31:0],csr_eentry[31:0],csr_era[31:0],has_int,csr_plv[1:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  input id_allowin;
  output if_to_id_valid;
  output [68:0]if_to_id_bus;
  input [33:0]id_to_if_bus;
  output inst_sram_en;
  output [3:0]inst_sram_we;
  output [31:0]inst_sram_addr;
  output [31:0]inst_sram_wdata;
  input [31:0]inst_sram_rdata;
  input excp_flush;
  input ertn_flush;
  input refetch_flush;
  input [31:0]wb_pc;
  input [31:0]csr_eentry;
  input [31:0]csr_era;
  input has_int;
  input [1:0]csr_plv;
endmodule
