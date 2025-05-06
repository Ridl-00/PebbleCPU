// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:04:57 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_wb_stage_0_0/mycpu_top_block_wb_stage_0_0_stub.v
// Design      : mycpu_top_block_wb_stage_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "wb_stage,Vivado 2023.2" *)
module mycpu_top_block_wb_stage_0_0(clk, resetn, wb_allowin, mem_to_wb_valid, 
  mem_to_wb_bus, wb_to_id_bus, excp_flush, ertn_flush, refetch_flush, csr_era, csr_esubcode, 
  csr_ecode, csr_wr_en, wr_csr_addr, wr_csr_data, va_error, bad_va, debug_wb_pc, debug_wb_rf_we, 
  debug_wb_rf_wnum, debug_wb_rf_wdata)
/* synthesis syn_black_box black_box_pad_pin="resetn,wb_allowin,mem_to_wb_valid,mem_to_wb_bus[167:0],wb_to_id_bus[64:0],excp_flush,ertn_flush,refetch_flush,csr_era[31:0],csr_esubcode[8:0],csr_ecode[5:0],csr_wr_en,wr_csr_addr[13:0],wr_csr_data[31:0],va_error,bad_va[31:0],debug_wb_pc[31:0],debug_wb_rf_we[3:0],debug_wb_rf_wnum[4:0],debug_wb_rf_wdata[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  output wb_allowin;
  input mem_to_wb_valid;
  input [167:0]mem_to_wb_bus;
  output [64:0]wb_to_id_bus;
  output excp_flush;
  output ertn_flush;
  output refetch_flush;
  output [31:0]csr_era;
  output [8:0]csr_esubcode;
  output [5:0]csr_ecode;
  output csr_wr_en;
  output [13:0]wr_csr_addr;
  output [31:0]wr_csr_data;
  output va_error;
  output [31:0]bad_va;
  output [31:0]debug_wb_pc;
  output [3:0]debug_wb_rf_we;
  output [4:0]debug_wb_rf_wnum;
  output [31:0]debug_wb_rf_wdata;
endmodule
