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


// IP VLNV: xilinx.com:module_ref:exe_stage:1.0
// IP Revision: 1

(* X_CORE_INFO = "exe_stage,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "mycpu_top_block_exe_stage_0_0,exe_stage,{}" *)
(* CORE_GENERATION_INFO = "mycpu_top_block_exe_stage_0_0,exe_stage,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=exe_stage,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mycpu_top_block_exe_stage_0_0 (
  clk,
  resetn,
  exe_allowin,
  id_to_exe_valid,
  id_to_exe_bus,
  mem_allowin,
  exe_to_mem_valid,
  exe_to_mem_bus,
  exe_to_id_bus,
  data_sram_en,
  data_sram_we,
  data_sram_addr,
  data_sram_wdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
output wire exe_allowin;
input wire id_to_exe_valid;
input wire [160 : 0] id_to_exe_bus;
input wire mem_allowin;
output wire exe_to_mem_valid;
output wire [78 : 0] exe_to_mem_bus;
output wire [38 : 0] exe_to_id_bus;
output wire data_sram_en;
output wire [3 : 0] data_sram_we;
output wire [31 : 0] data_sram_addr;
output wire [31 : 0] data_sram_wdata;

  exe_stage inst (
    .clk(clk),
    .resetn(resetn),
    .exe_allowin(exe_allowin),
    .id_to_exe_valid(id_to_exe_valid),
    .id_to_exe_bus(id_to_exe_bus),
    .mem_allowin(mem_allowin),
    .exe_to_mem_valid(exe_to_mem_valid),
    .exe_to_mem_bus(exe_to_mem_bus),
    .exe_to_id_bus(exe_to_id_bus),
    .data_sram_en(data_sram_en),
    .data_sram_we(data_sram_we),
    .data_sram_addr(data_sram_addr),
    .data_sram_wdata(data_sram_wdata)
  );
endmodule
