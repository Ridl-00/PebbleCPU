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


// IP VLNV: xilinx.com:module_ref:wb_stage:1.0
// IP Revision: 1

(* X_CORE_INFO = "wb_stage,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "mycpu_top_block_wb_stage_0_0,wb_stage,{}" *)
(* CORE_GENERATION_INFO = "mycpu_top_block_wb_stage_0_0,wb_stage,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=wb_stage,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mycpu_top_block_wb_stage_0_0 (
  clk,
  resetn,
  wb_allowin,
  mem_to_wb_valid,
  mem_to_wb_bus,
  wb_to_id_bus,
  excp_flush,
  ertn_flush,
  refetch_flush,
  csr_era,
  csr_esubcode,
  csr_ecode,
  csr_wr_en,
  wr_csr_addr,
  wr_csr_data,
  va_error,
  bad_va,
  debug_wb_pc,
  debug_wb_rf_we,
  debug_wb_rf_wnum,
  debug_wb_rf_wdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
output wire wb_allowin;
input wire mem_to_wb_valid;
input wire [167 : 0] mem_to_wb_bus;
output wire [64 : 0] wb_to_id_bus;
output wire excp_flush;
output wire ertn_flush;
output wire refetch_flush;
output wire [31 : 0] csr_era;
output wire [8 : 0] csr_esubcode;
output wire [5 : 0] csr_ecode;
output wire csr_wr_en;
output wire [13 : 0] wr_csr_addr;
output wire [31 : 0] wr_csr_data;
output wire va_error;
output wire [31 : 0] bad_va;
output wire [31 : 0] debug_wb_pc;
output wire [3 : 0] debug_wb_rf_we;
output wire [4 : 0] debug_wb_rf_wnum;
output wire [31 : 0] debug_wb_rf_wdata;

  wb_stage inst (
    .clk(clk),
    .resetn(resetn),
    .wb_allowin(wb_allowin),
    .mem_to_wb_valid(mem_to_wb_valid),
    .mem_to_wb_bus(mem_to_wb_bus),
    .wb_to_id_bus(wb_to_id_bus),
    .excp_flush(excp_flush),
    .ertn_flush(ertn_flush),
    .refetch_flush(refetch_flush),
    .csr_era(csr_era),
    .csr_esubcode(csr_esubcode),
    .csr_ecode(csr_ecode),
    .csr_wr_en(csr_wr_en),
    .wr_csr_addr(wr_csr_addr),
    .wr_csr_data(wr_csr_data),
    .va_error(va_error),
    .bad_va(bad_va),
    .debug_wb_pc(debug_wb_pc),
    .debug_wb_rf_we(debug_wb_rf_we),
    .debug_wb_rf_wnum(debug_wb_rf_wnum),
    .debug_wb_rf_wdata(debug_wb_rf_wdata)
  );
endmodule
