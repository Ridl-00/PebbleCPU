// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:04:57 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_mem_stage_0_0/mycpu_top_block_mem_stage_0_0_stub.v
// Design      : mycpu_top_block_mem_stage_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mem_stage,Vivado 2023.2" *)
module mycpu_top_block_mem_stage_0_0(clk, resetn, mem_allowin, exe_to_mem_valid, 
  exe_to_mem_bus, wb_allowin, mem_to_wb_valid, mem_to_wb_bus, mem_to_id_bus, data_sram_rdata, 
  excp_flush, ertn_flush, refetch_flush, mem_flush)
/* synthesis syn_black_box black_box_pad_pin="resetn,mem_allowin,exe_to_mem_valid,exe_to_mem_bus[169:0],wb_allowin,mem_to_wb_valid,mem_to_wb_bus[167:0],mem_to_id_bus[38:0],data_sram_rdata[31:0],excp_flush,ertn_flush,refetch_flush,mem_flush" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  output mem_allowin;
  input exe_to_mem_valid;
  input [169:0]exe_to_mem_bus;
  input wb_allowin;
  output mem_to_wb_valid;
  output [167:0]mem_to_wb_bus;
  output [38:0]mem_to_id_bus;
  input [31:0]data_sram_rdata;
  input excp_flush;
  input ertn_flush;
  input refetch_flush;
  output mem_flush;
endmodule
