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


// IP VLNV: xilinx.com:module_ref:mem_stage:1.0
// IP Revision: 1

(* X_CORE_INFO = "mem_stage,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "mycpu_top_block_mem_stage_0_0,mem_stage,{}" *)
(* CORE_GENERATION_INFO = "mycpu_top_block_mem_stage_0_0,mem_stage,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mem_stage,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mycpu_top_block_mem_stage_0_0 (
  clk,
  resetn,
  mem_allowin,
  exe_to_mem_valid,
  exe_to_mem_bus,
  wb_allowin,
  mem_to_wb_valid,
  mem_to_wb_bus,
  mem_to_id_bus,
  data_sram_rdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
output wire mem_allowin;
input wire exe_to_mem_valid;
input wire [78 : 0] exe_to_mem_bus;
input wire wb_allowin;
output wire mem_to_wb_valid;
output wire [69 : 0] mem_to_wb_bus;
output wire [38 : 0] mem_to_id_bus;
input wire [31 : 0] data_sram_rdata;

  mem_stage inst (
    .clk(clk),
    .resetn(resetn),
    .mem_allowin(mem_allowin),
    .exe_to_mem_valid(exe_to_mem_valid),
    .exe_to_mem_bus(exe_to_mem_bus),
    .wb_allowin(wb_allowin),
    .mem_to_wb_valid(mem_to_wb_valid),
    .mem_to_wb_bus(mem_to_wb_bus),
    .mem_to_id_bus(mem_to_id_bus),
    .data_sram_rdata(data_sram_rdata)
  );
endmodule
