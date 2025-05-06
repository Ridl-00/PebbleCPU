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


// IP VLNV: xilinx.com:module_ref:if_stage:1.0
// IP Revision: 1

(* X_CORE_INFO = "if_stage,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "mycpu_top_block_if_stage_0_0,if_stage,{}" *)
(* CORE_GENERATION_INFO = "mycpu_top_block_if_stage_0_0,if_stage,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=if_stage,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mycpu_top_block_if_stage_0_0 (
  clk,
  resetn,
  id_allowin,
  if_to_id_valid,
  if_to_id_bus,
  id_to_if_bus,
  inst_sram_en,
  inst_sram_we,
  inst_sram_addr,
  inst_sram_wdata,
  inst_sram_rdata,
  excp_flush,
  ertn_flush,
  refetch_flush,
  wb_pc,
  csr_eentry,
  csr_era,
  has_int,
  csr_plv
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
input wire id_allowin;
output wire if_to_id_valid;
output wire [68 : 0] if_to_id_bus;
input wire [33 : 0] id_to_if_bus;
output wire inst_sram_en;
output wire [3 : 0] inst_sram_we;
output wire [31 : 0] inst_sram_addr;
output wire [31 : 0] inst_sram_wdata;
input wire [31 : 0] inst_sram_rdata;
input wire excp_flush;
input wire ertn_flush;
input wire refetch_flush;
input wire [31 : 0] wb_pc;
input wire [31 : 0] csr_eentry;
input wire [31 : 0] csr_era;
input wire has_int;
input wire [1 : 0] csr_plv;

  if_stage inst (
    .clk(clk),
    .resetn(resetn),
    .id_allowin(id_allowin),
    .if_to_id_valid(if_to_id_valid),
    .if_to_id_bus(if_to_id_bus),
    .id_to_if_bus(id_to_if_bus),
    .inst_sram_en(inst_sram_en),
    .inst_sram_we(inst_sram_we),
    .inst_sram_addr(inst_sram_addr),
    .inst_sram_wdata(inst_sram_wdata),
    .inst_sram_rdata(inst_sram_rdata),
    .excp_flush(excp_flush),
    .ertn_flush(ertn_flush),
    .refetch_flush(refetch_flush),
    .wb_pc(wb_pc),
    .csr_eentry(csr_eentry),
    .csr_era(csr_era),
    .has_int(has_int),
    .csr_plv(csr_plv)
  );
endmodule
