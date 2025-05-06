// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:06:08 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_id_stage_0_0/mycpu_top_block_id_stage_0_0_stub.v
// Design      : mycpu_top_block_id_stage_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "id_stage,Vivado 2023.2" *)
module mycpu_top_block_id_stage_0_0(clk, resetn, id_allowin, if_to_id_valid, 
  if_to_id_bus, exe_allowin, id_to_exe_valid, id_to_exe_bus, id_to_if_bus, exe_to_id_bus, 
  mem_to_id_bus, wb_to_rf_bus, excp_flush, ertn_flush, refetch_flush, has_int, rd_csr_addr, 
  rd_csr_data, csr_plv, timer_64, csr_tid)
/* synthesis syn_black_box black_box_pad_pin="resetn,id_allowin,if_to_id_valid,if_to_id_bus[68:0],exe_allowin,id_to_exe_valid,id_to_exe_bus[220:0],id_to_if_bus[33:0],exe_to_id_bus[38:0],mem_to_id_bus[38:0],wb_to_rf_bus[64:0],excp_flush,ertn_flush,refetch_flush,has_int,rd_csr_addr[13:0],rd_csr_data[31:0],csr_plv[1:0],timer_64[63:0],csr_tid[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  output id_allowin;
  input if_to_id_valid;
  input [68:0]if_to_id_bus;
  input exe_allowin;
  output id_to_exe_valid;
  output [220:0]id_to_exe_bus;
  output [33:0]id_to_if_bus;
  input [38:0]exe_to_id_bus;
  input [38:0]mem_to_id_bus;
  input [64:0]wb_to_rf_bus;
  input excp_flush;
  input ertn_flush;
  input refetch_flush;
  input has_int;
  output [13:0]rd_csr_addr;
  input [31:0]rd_csr_data;
  input [1:0]csr_plv;
  input [63:0]timer_64;
  input [31:0]csr_tid;
endmodule
