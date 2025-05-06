// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:csr:1.0
// IP Revision: 1

(* X_CORE_INFO = "csr,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "mycpu_top_block_csr_0_1,csr,{}" *)
(* CORE_GENERATION_INFO = "mycpu_top_block_csr_0_1,csr,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=csr,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TLBNUM=32}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mycpu_top_block_csr_0_1 (
  clk,
  resetn,
  rd_addr,
  rd_data,
  timer_64_out,
  tid_out,
  csr_wr_en,
  wr_addr,
  wr_data,
  interrupt,
  has_int,
  excp_flush,
  ertn_flush,
  era_in,
  esubcode_in,
  ecode_in,
  va_error_in,
  bad_va_in,
  tlbsrch_en,
  tlbsrch_found,
  tlbsrch_index,
  excp_tlbrefill,
  excp_tlb,
  excp_tlb_vppn,
  llbit_in,
  llbit_set_in,
  lladdr_in,
  lladdr_set_in,
  llbit_out,
  vppn_out,
  lladdr_out,
  eentry_out,
  era_out,
  tlbrentry_out,
  disable_cache_out,
  asid_out,
  rand_index,
  tlbehi_out,
  tlbelo0_out,
  tlbelo1_out,
  tlbidx_out,
  pg_out,
  da_out,
  dmw0_out,
  dmw1_out,
  datf_out,
  datm_out,
  ecode_out,
  tlbrd_en,
  tlbehi_in,
  tlbelo0_in,
  tlbelo1_in,
  tlbidx_in,
  asid_in,
  plv_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
input wire [13 : 0] rd_addr;
output wire [31 : 0] rd_data;
output wire [63 : 0] timer_64_out;
output wire [31 : 0] tid_out;
input wire csr_wr_en;
input wire [13 : 0] wr_addr;
input wire [31 : 0] wr_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
input wire [7 : 0] interrupt;
output wire has_int;
input wire excp_flush;
input wire ertn_flush;
input wire [31 : 0] era_in;
input wire [8 : 0] esubcode_in;
input wire [5 : 0] ecode_in;
input wire va_error_in;
input wire [31 : 0] bad_va_in;
input wire tlbsrch_en;
input wire tlbsrch_found;
input wire [4 : 0] tlbsrch_index;
input wire excp_tlbrefill;
input wire excp_tlb;
input wire [18 : 0] excp_tlb_vppn;
input wire llbit_in;
input wire llbit_set_in;
input wire [27 : 0] lladdr_in;
input wire lladdr_set_in;
output wire llbit_out;
output wire [18 : 0] vppn_out;
output wire [27 : 0] lladdr_out;
output wire [31 : 0] eentry_out;
output wire [31 : 0] era_out;
output wire [31 : 0] tlbrentry_out;
output wire disable_cache_out;
output wire [9 : 0] asid_out;
output wire [4 : 0] rand_index;
output wire [31 : 0] tlbehi_out;
output wire [31 : 0] tlbelo0_out;
output wire [31 : 0] tlbelo1_out;
output wire [31 : 0] tlbidx_out;
output wire pg_out;
output wire da_out;
output wire [31 : 0] dmw0_out;
output wire [31 : 0] dmw1_out;
output wire [1 : 0] datf_out;
output wire [1 : 0] datm_out;
output wire [5 : 0] ecode_out;
input wire tlbrd_en;
input wire [31 : 0] tlbehi_in;
input wire [31 : 0] tlbelo0_in;
input wire [31 : 0] tlbelo1_in;
input wire [31 : 0] tlbidx_in;
input wire [9 : 0] asid_in;
output wire [1 : 0] plv_out;

  csr #(
    .TLBNUM(32)
  ) inst (
    .clk(clk),
    .resetn(resetn),
    .rd_addr(rd_addr),
    .rd_data(rd_data),
    .timer_64_out(timer_64_out),
    .tid_out(tid_out),
    .csr_wr_en(csr_wr_en),
    .wr_addr(wr_addr),
    .wr_data(wr_data),
    .interrupt(interrupt),
    .has_int(has_int),
    .excp_flush(excp_flush),
    .ertn_flush(ertn_flush),
    .era_in(era_in),
    .esubcode_in(esubcode_in),
    .ecode_in(ecode_in),
    .va_error_in(va_error_in),
    .bad_va_in(bad_va_in),
    .tlbsrch_en(tlbsrch_en),
    .tlbsrch_found(tlbsrch_found),
    .tlbsrch_index(tlbsrch_index),
    .excp_tlbrefill(excp_tlbrefill),
    .excp_tlb(excp_tlb),
    .excp_tlb_vppn(excp_tlb_vppn),
    .llbit_in(llbit_in),
    .llbit_set_in(llbit_set_in),
    .lladdr_in(lladdr_in),
    .lladdr_set_in(lladdr_set_in),
    .llbit_out(llbit_out),
    .vppn_out(vppn_out),
    .lladdr_out(lladdr_out),
    .eentry_out(eentry_out),
    .era_out(era_out),
    .tlbrentry_out(tlbrentry_out),
    .disable_cache_out(disable_cache_out),
    .asid_out(asid_out),
    .rand_index(rand_index),
    .tlbehi_out(tlbehi_out),
    .tlbelo0_out(tlbelo0_out),
    .tlbelo1_out(tlbelo1_out),
    .tlbidx_out(tlbidx_out),
    .pg_out(pg_out),
    .da_out(da_out),
    .dmw0_out(dmw0_out),
    .dmw1_out(dmw1_out),
    .datf_out(datf_out),
    .datm_out(datm_out),
    .ecode_out(ecode_out),
    .tlbrd_en(tlbrd_en),
    .tlbehi_in(tlbehi_in),
    .tlbelo0_in(tlbelo0_in),
    .tlbelo1_in(tlbelo1_in),
    .tlbidx_in(tlbidx_in),
    .asid_in(asid_in),
    .plv_out(plv_out)
  );
endmodule
