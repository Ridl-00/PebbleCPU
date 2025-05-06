// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:05:04 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_csr_0_1/mycpu_top_block_csr_0_1_stub.v
// Design      : mycpu_top_block_csr_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "csr,Vivado 2023.2" *)
module mycpu_top_block_csr_0_1(clk, resetn, rd_addr, rd_data, timer_64_out, 
  tid_out, csr_wr_en, wr_addr, wr_data, interrupt, has_int, excp_flush, ertn_flush, era_in, 
  esubcode_in, ecode_in, va_error_in, bad_va_in, tlbsrch_en, tlbsrch_found, tlbsrch_index, 
  excp_tlbrefill, excp_tlb, excp_tlb_vppn, llbit_in, llbit_set_in, lladdr_in, lladdr_set_in, 
  llbit_out, vppn_out, lladdr_out, eentry_out, era_out, tlbrentry_out, disable_cache_out, 
  asid_out, rand_index, tlbehi_out, tlbelo0_out, tlbelo1_out, tlbidx_out, pg_out, da_out, dmw0_out, 
  dmw1_out, datf_out, datm_out, ecode_out, tlbrd_en, tlbehi_in, tlbelo0_in, tlbelo1_in, tlbidx_in, 
  asid_in, plv_out)
/* synthesis syn_black_box black_box_pad_pin="resetn,rd_addr[13:0],rd_data[31:0],timer_64_out[63:0],tid_out[31:0],csr_wr_en,wr_addr[13:0],wr_data[31:0],interrupt[7:0],has_int,excp_flush,ertn_flush,era_in[31:0],esubcode_in[8:0],ecode_in[5:0],va_error_in,bad_va_in[31:0],tlbsrch_en,tlbsrch_found,tlbsrch_index[4:0],excp_tlbrefill,excp_tlb,excp_tlb_vppn[18:0],llbit_in,llbit_set_in,lladdr_in[27:0],lladdr_set_in,llbit_out,vppn_out[18:0],lladdr_out[27:0],eentry_out[31:0],era_out[31:0],tlbrentry_out[31:0],disable_cache_out,asid_out[9:0],rand_index[4:0],tlbehi_out[31:0],tlbelo0_out[31:0],tlbelo1_out[31:0],tlbidx_out[31:0],pg_out,da_out,dmw0_out[31:0],dmw1_out[31:0],datf_out[1:0],datm_out[1:0],ecode_out[5:0],tlbrd_en,tlbehi_in[31:0],tlbelo0_in[31:0],tlbelo1_in[31:0],tlbidx_in[31:0],asid_in[9:0],plv_out[1:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  input [13:0]rd_addr;
  output [31:0]rd_data;
  output [63:0]timer_64_out;
  output [31:0]tid_out;
  input csr_wr_en;
  input [13:0]wr_addr;
  input [31:0]wr_data;
  input [7:0]interrupt;
  output has_int;
  input excp_flush;
  input ertn_flush;
  input [31:0]era_in;
  input [8:0]esubcode_in;
  input [5:0]ecode_in;
  input va_error_in;
  input [31:0]bad_va_in;
  input tlbsrch_en;
  input tlbsrch_found;
  input [4:0]tlbsrch_index;
  input excp_tlbrefill;
  input excp_tlb;
  input [18:0]excp_tlb_vppn;
  input llbit_in;
  input llbit_set_in;
  input [27:0]lladdr_in;
  input lladdr_set_in;
  output llbit_out;
  output [18:0]vppn_out;
  output [27:0]lladdr_out;
  output [31:0]eentry_out;
  output [31:0]era_out;
  output [31:0]tlbrentry_out;
  output disable_cache_out;
  output [9:0]asid_out;
  output [4:0]rand_index;
  output [31:0]tlbehi_out;
  output [31:0]tlbelo0_out;
  output [31:0]tlbelo1_out;
  output [31:0]tlbidx_out;
  output pg_out;
  output da_out;
  output [31:0]dmw0_out;
  output [31:0]dmw1_out;
  output [1:0]datf_out;
  output [1:0]datm_out;
  output [5:0]ecode_out;
  input tlbrd_en;
  input [31:0]tlbehi_in;
  input [31:0]tlbelo0_in;
  input [31:0]tlbelo1_in;
  input [31:0]tlbidx_in;
  input [9:0]asid_in;
  output [1:0]plv_out;
endmodule
