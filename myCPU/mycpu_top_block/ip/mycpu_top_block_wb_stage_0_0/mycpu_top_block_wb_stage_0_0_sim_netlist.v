// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:04:57 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_wb_stage_0_0/mycpu_top_block_wb_stage_0_0_sim_netlist.v
// Design      : mycpu_top_block_wb_stage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mycpu_top_block_wb_stage_0_0,wb_stage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "wb_stage,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module mycpu_top_block_wb_stage_0_0
   (clk,
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
    debug_wb_rf_wdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
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

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]bad_va;
  wire clk;
  wire [5:0]\^csr_ecode ;
  wire [31:0]csr_era;
  wire csr_wr_en;
  wire [31:0]debug_wb_rf_wdata;
  wire [4:0]debug_wb_rf_wnum;
  wire ertn_flush;
  wire excp_flush;
  wire [167:0]mem_to_wb_bus;
  wire mem_to_wb_valid;
  wire refetch_flush;
  wire resetn;
  wire va_error;
  wire [37:37]\^wb_to_id_bus ;
  wire [13:0]wr_csr_addr;
  wire [31:0]wr_csr_data;

  assign csr_ecode[5] = \^csr_ecode [5];
  assign csr_ecode[4] = \^csr_ecode [5];
  assign csr_ecode[3:0] = \^csr_ecode [3:0];
  assign csr_esubcode[8] = \<const0> ;
  assign csr_esubcode[7] = \<const0> ;
  assign csr_esubcode[6] = \<const0> ;
  assign csr_esubcode[5] = \<const0> ;
  assign csr_esubcode[4] = \<const0> ;
  assign csr_esubcode[3] = \<const0> ;
  assign csr_esubcode[2] = \<const0> ;
  assign csr_esubcode[1] = \<const0> ;
  assign csr_esubcode[0] = \<const0> ;
  assign debug_wb_pc[31:0] = csr_era;
  assign debug_wb_rf_we[3] = \^wb_to_id_bus [37];
  assign debug_wb_rf_we[2] = \^wb_to_id_bus [37];
  assign debug_wb_rf_we[1] = \^wb_to_id_bus [37];
  assign debug_wb_rf_we[0] = \^wb_to_id_bus [37];
  assign wb_allowin = \<const1> ;
  assign wb_to_id_bus[64] = \<const0> ;
  assign wb_to_id_bus[63] = \<const0> ;
  assign wb_to_id_bus[62] = \<const0> ;
  assign wb_to_id_bus[61] = \<const0> ;
  assign wb_to_id_bus[60] = \<const0> ;
  assign wb_to_id_bus[59] = \<const0> ;
  assign wb_to_id_bus[58] = \<const0> ;
  assign wb_to_id_bus[57] = \<const0> ;
  assign wb_to_id_bus[56] = \<const0> ;
  assign wb_to_id_bus[55] = \<const0> ;
  assign wb_to_id_bus[54] = \<const0> ;
  assign wb_to_id_bus[53] = \<const0> ;
  assign wb_to_id_bus[52] = \<const0> ;
  assign wb_to_id_bus[51] = \<const0> ;
  assign wb_to_id_bus[50] = \<const0> ;
  assign wb_to_id_bus[49] = \<const0> ;
  assign wb_to_id_bus[48] = \<const0> ;
  assign wb_to_id_bus[47] = \<const0> ;
  assign wb_to_id_bus[46] = \<const0> ;
  assign wb_to_id_bus[45] = \<const0> ;
  assign wb_to_id_bus[44] = \<const0> ;
  assign wb_to_id_bus[43] = \<const0> ;
  assign wb_to_id_bus[42] = \<const0> ;
  assign wb_to_id_bus[41] = \<const0> ;
  assign wb_to_id_bus[40] = \<const0> ;
  assign wb_to_id_bus[39] = \<const0> ;
  assign wb_to_id_bus[38] = \<const0> ;
  assign wb_to_id_bus[37] = \^wb_to_id_bus [37];
  assign wb_to_id_bus[36:32] = debug_wb_rf_wnum;
  assign wb_to_id_bus[31:0] = debug_wb_rf_wdata;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  mycpu_top_block_wb_stage_0_0_wb_stage inst
       (.Q({wr_csr_addr,wr_csr_data,debug_wb_rf_wnum,debug_wb_rf_wdata,csr_era}),
        .bad_va(bad_va),
        .clk(clk),
        .csr_ecode({\^csr_ecode [5],\^csr_ecode [3:0]}),
        .csr_wr_en(csr_wr_en),
        .ertn_flush(ertn_flush),
        .excp_flush(excp_flush),
        .mem_to_wb_bus({mem_to_wb_bus[166:130],mem_to_wb_bus[128:0]}),
        .mem_to_wb_valid(mem_to_wb_valid),
        .refetch_flush(refetch_flush),
        .resetn(resetn),
        .va_error(va_error),
        .wb_to_id_bus(\^wb_to_id_bus ));
endmodule

(* ORIG_REF_NAME = "wb_stage" *) 
module mycpu_top_block_wb_stage_0_0_wb_stage
   (Q,
    ertn_flush,
    refetch_flush,
    excp_flush,
    wb_to_id_bus,
    csr_wr_en,
    csr_ecode,
    bad_va,
    va_error,
    mem_to_wb_valid,
    mem_to_wb_bus,
    clk,
    resetn);
  output [114:0]Q;
  output ertn_flush;
  output refetch_flush;
  output excp_flush;
  output [0:0]wb_to_id_bus;
  output csr_wr_en;
  output [4:0]csr_ecode;
  output [31:0]bad_va;
  output va_error;
  input mem_to_wb_valid;
  input [165:0]mem_to_wb_bus;
  input clk;
  input resetn;

  wire [114:0]Q;
  wire [31:0]bad_va;
  wire \bad_va[31]_INST_0_i_1_n_0 ;
  wire \bad_va[31]_INST_0_i_2_n_0 ;
  wire clk;
  wire [4:0]csr_ecode;
  wire \csr_ecode[0]_INST_0_i_1_n_0 ;
  wire \csr_ecode[1]_INST_0_i_1_n_0 ;
  wire \csr_ecode[1]_INST_0_i_2_n_0 ;
  wire \csr_ecode[2]_INST_0_i_1_n_0 ;
  wire \csr_ecode[2]_INST_0_i_2_n_0 ;
  wire \csr_ecode[2]_INST_0_i_3_n_0 ;
  wire \csr_ecode[2]_INST_0_i_4_n_0 ;
  wire \csr_ecode[3]_INST_0_i_1_n_0 ;
  wire \csr_ecode[4]_INST_0_i_1_n_0 ;
  wire \csr_ecode[4]_INST_0_i_2_n_0 ;
  wire csr_wr_en;
  wire [40:9]data4;
  wire ertn_flush;
  wire excp_flush;
  wire [165:0]mem_to_wb_bus;
  wire mem_to_wb_valid;
  wire refetch_flush;
  wire resetn;
  wire [13:0]sel0;
  wire va_error;
  wire va_error_INST_0_i_1_n_0;
  wire va_error_INST_0_i_2_n_0;
  wire wb_csr_we;
  wire \wb_data_reg_n_0_[119] ;
  wire wb_ertn;
  wire wb_excp;
  wire wb_gr_we;
  wire [0:0]wb_to_id_bus;
  wire wb_valid;
  wire wb_valid_i_1_n_0;

  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[0]_INST_0 
       (.I0(Q[0]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[9]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[0]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[10]_INST_0 
       (.I0(Q[10]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[19]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[10]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[11]_INST_0 
       (.I0(Q[11]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[20]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[11]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[12]_INST_0 
       (.I0(Q[12]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[21]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[12]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[13]_INST_0 
       (.I0(Q[13]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[22]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[13]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[14]_INST_0 
       (.I0(Q[14]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[23]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[14]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[15]_INST_0 
       (.I0(Q[15]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[24]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[15]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[16]_INST_0 
       (.I0(Q[16]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[25]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[16]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[17]_INST_0 
       (.I0(Q[17]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[26]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[17]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[18]_INST_0 
       (.I0(Q[18]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[27]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[18]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[19]_INST_0 
       (.I0(Q[19]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[28]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[19]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[1]_INST_0 
       (.I0(Q[1]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[10]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[1]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[20]_INST_0 
       (.I0(Q[20]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[29]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[20]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[21]_INST_0 
       (.I0(Q[21]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[30]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[21]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[22]_INST_0 
       (.I0(Q[22]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[31]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[22]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[23]_INST_0 
       (.I0(Q[23]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[32]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[23]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[24]_INST_0 
       (.I0(Q[24]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[33]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[24]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[25]_INST_0 
       (.I0(Q[25]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[34]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[25]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[26]_INST_0 
       (.I0(Q[26]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[35]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[26]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[27]_INST_0 
       (.I0(Q[27]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[36]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[27]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[28]_INST_0 
       (.I0(Q[28]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[37]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[28]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[29]_INST_0 
       (.I0(Q[29]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[38]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[29]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[2]_INST_0 
       (.I0(Q[2]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[11]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[2]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[30]_INST_0 
       (.I0(Q[30]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[39]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[30]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[31]_INST_0 
       (.I0(Q[31]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[40]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[31]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bad_va[31]_INST_0_i_1 
       (.I0(sel0[9]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(sel0[7]),
        .I3(sel0[8]),
        .I4(sel0[6]),
        .O(\bad_va[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bad_va[31]_INST_0_i_2 
       (.I0(sel0[12]),
        .I1(sel0[11]),
        .I2(sel0[10]),
        .I3(sel0[13]),
        .O(\bad_va[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[3]_INST_0 
       (.I0(Q[3]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[12]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[3]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[4]_INST_0 
       (.I0(Q[4]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[13]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[4]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[5]_INST_0 
       (.I0(Q[5]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[14]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[5]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[6]_INST_0 
       (.I0(Q[6]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[15]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[6]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[7]_INST_0 
       (.I0(Q[7]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[16]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[7]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[8]_INST_0 
       (.I0(Q[8]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[17]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[8]));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    \bad_va[9]_INST_0 
       (.I0(Q[9]),
        .I1(\wb_data_reg_n_0_[119] ),
        .I2(data4[18]),
        .I3(va_error_INST_0_i_2_n_0),
        .I4(\bad_va[31]_INST_0_i_1_n_0 ),
        .I5(\bad_va[31]_INST_0_i_2_n_0 ),
        .O(bad_va[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF50501000)) 
    \csr_ecode[0]_INST_0 
       (.I0(sel0[8]),
        .I1(sel0[6]),
        .I2(\csr_ecode[2]_INST_0_i_1_n_0 ),
        .I3(\csr_ecode[0]_INST_0_i_1_n_0 ),
        .I4(sel0[7]),
        .I5(\csr_ecode[1]_INST_0_i_1_n_0 ),
        .O(csr_ecode[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5510)) 
    \csr_ecode[0]_INST_0_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\csr_ecode[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \csr_ecode[1]_INST_0 
       (.I0(\csr_ecode[1]_INST_0_i_1_n_0 ),
        .I1(\csr_ecode[1]_INST_0_i_2_n_0 ),
        .I2(sel0[7]),
        .I3(sel0[8]),
        .I4(sel0[13]),
        .I5(\wb_data_reg_n_0_[119] ),
        .O(csr_ecode[1]));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \csr_ecode[1]_INST_0_i_1 
       (.I0(sel0[9]),
        .I1(sel0[10]),
        .I2(sel0[11]),
        .I3(sel0[12]),
        .I4(sel0[13]),
        .I5(\wb_data_reg_n_0_[119] ),
        .O(\csr_ecode[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \csr_ecode[1]_INST_0_i_2 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[4]),
        .I5(sel0[6]),
        .O(\csr_ecode[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F888)) 
    \csr_ecode[2]_INST_0 
       (.I0(sel0[12]),
        .I1(\csr_ecode[2]_INST_0_i_1_n_0 ),
        .I2(\csr_ecode[2]_INST_0_i_2_n_0 ),
        .I3(\csr_ecode[4]_INST_0_i_1_n_0 ),
        .I4(\csr_ecode[2]_INST_0_i_3_n_0 ),
        .I5(\csr_ecode[2]_INST_0_i_4_n_0 ),
        .O(csr_ecode[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \csr_ecode[2]_INST_0_i_1 
       (.I0(\wb_data_reg_n_0_[119] ),
        .I1(sel0[13]),
        .O(\csr_ecode[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \csr_ecode[2]_INST_0_i_2 
       (.I0(sel0[13]),
        .I1(sel0[11]),
        .I2(sel0[9]),
        .I3(\wb_data_reg_n_0_[119] ),
        .O(\csr_ecode[2]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \csr_ecode[2]_INST_0_i_3 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .O(\csr_ecode[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \csr_ecode[2]_INST_0_i_4 
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .I2(sel0[13]),
        .I3(\wb_data_reg_n_0_[119] ),
        .O(\csr_ecode[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000FF10)) 
    \csr_ecode[3]_INST_0 
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .I2(\csr_ecode[3]_INST_0_i_1_n_0 ),
        .I3(sel0[12]),
        .I4(\wb_data_reg_n_0_[119] ),
        .I5(sel0[13]),
        .O(csr_ecode[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \csr_ecode[3]_INST_0_i_1 
       (.I0(sel0[9]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[7]),
        .I4(sel0[8]),
        .I5(sel0[6]),
        .O(\csr_ecode[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022002F00220022)) 
    \csr_ecode[4]_INST_0 
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .I2(sel0[9]),
        .I3(\wb_data_reg_n_0_[119] ),
        .I4(\csr_ecode[4]_INST_0_i_1_n_0 ),
        .I5(\csr_ecode[4]_INST_0_i_2_n_0 ),
        .O(csr_ecode[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    \csr_ecode[4]_INST_0_i_1 
       (.I0(sel0[6]),
        .I1(sel0[8]),
        .I2(sel0[7]),
        .O(\csr_ecode[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \csr_ecode[4]_INST_0_i_2 
       (.I0(sel0[13]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[10]),
        .I4(sel0[11]),
        .O(\csr_ecode[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    csr_wr_en_INST_0
       (.I0(wb_excp),
        .I1(wb_csr_we),
        .I2(wb_valid),
        .O(csr_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \debug_wb_rf_we[0]_INST_0 
       (.I0(wb_excp),
        .I1(wb_gr_we),
        .I2(wb_valid),
        .O(wb_to_id_bus));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ertn_flush_INST_0
       (.I0(wb_excp),
        .I1(wb_ertn),
        .I2(wb_valid),
        .O(ertn_flush));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    excp_flush_INST_0
       (.I0(wb_valid),
        .I1(wb_excp),
        .O(excp_flush));
  LUT2 #(
    .INIT(4'h8)) 
    refetch_flush_INST_0
       (.I0(wb_valid),
        .I1(wb_csr_we),
        .O(refetch_flush));
  LUT6 #(
    .INIT(64'h8888888C88888888)) 
    va_error_INST_0
       (.I0(va_error_INST_0_i_1_n_0),
        .I1(wb_valid),
        .I2(\csr_ecode[4]_INST_0_i_1_n_0 ),
        .I3(\wb_data_reg_n_0_[119] ),
        .I4(sel0[9]),
        .I5(va_error_INST_0_i_2_n_0),
        .O(va_error));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    va_error_INST_0_i_1
       (.I0(sel0[13]),
        .I1(sel0[10]),
        .I2(sel0[11]),
        .I3(sel0[12]),
        .I4(\wb_data_reg_n_0_[119] ),
        .O(va_error_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    va_error_INST_0_i_2
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(va_error_INST_0_i_2_n_0));
  FDRE \wb_data_reg[0] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \wb_data_reg[100] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[100]),
        .Q(Q[97]),
        .R(1'b0));
  FDRE \wb_data_reg[101] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[101]),
        .Q(Q[98]),
        .R(1'b0));
  FDRE \wb_data_reg[102] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[102]),
        .Q(Q[99]),
        .R(1'b0));
  FDRE \wb_data_reg[103] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[103]),
        .Q(Q[100]),
        .R(1'b0));
  FDRE \wb_data_reg[104] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[104]),
        .Q(Q[101]),
        .R(1'b0));
  FDRE \wb_data_reg[105] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[105]),
        .Q(Q[102]),
        .R(1'b0));
  FDRE \wb_data_reg[106] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[106]),
        .Q(Q[103]),
        .R(1'b0));
  FDRE \wb_data_reg[107] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[107]),
        .Q(Q[104]),
        .R(1'b0));
  FDRE \wb_data_reg[108] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[108]),
        .Q(Q[105]),
        .R(1'b0));
  FDRE \wb_data_reg[109] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[109]),
        .Q(Q[106]),
        .R(1'b0));
  FDRE \wb_data_reg[10] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \wb_data_reg[110] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[110]),
        .Q(Q[107]),
        .R(1'b0));
  FDRE \wb_data_reg[111] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[111]),
        .Q(Q[108]),
        .R(1'b0));
  FDRE \wb_data_reg[112] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[112]),
        .Q(Q[109]),
        .R(1'b0));
  FDRE \wb_data_reg[113] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[113]),
        .Q(Q[110]),
        .R(1'b0));
  FDRE \wb_data_reg[114] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[114]),
        .Q(Q[111]),
        .R(1'b0));
  FDRE \wb_data_reg[115] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[115]),
        .Q(Q[112]),
        .R(1'b0));
  FDRE \wb_data_reg[116] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[116]),
        .Q(Q[113]),
        .R(1'b0));
  FDRE \wb_data_reg[117] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[117]),
        .Q(Q[114]),
        .R(1'b0));
  FDRE \wb_data_reg[118] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[118]),
        .Q(wb_csr_we),
        .R(1'b0));
  FDRE \wb_data_reg[119] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[119]),
        .Q(\wb_data_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \wb_data_reg[11] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \wb_data_reg[120] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[120]),
        .Q(sel0[13]),
        .R(1'b0));
  FDRE \wb_data_reg[121] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[121]),
        .Q(sel0[12]),
        .R(1'b0));
  FDRE \wb_data_reg[122] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[122]),
        .Q(sel0[11]),
        .R(1'b0));
  FDRE \wb_data_reg[123] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[123]),
        .Q(sel0[10]),
        .R(1'b0));
  FDRE \wb_data_reg[124] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[124]),
        .Q(sel0[9]),
        .R(1'b0));
  FDRE \wb_data_reg[125] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[125]),
        .Q(sel0[8]),
        .R(1'b0));
  FDRE \wb_data_reg[126] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[126]),
        .Q(sel0[7]),
        .R(1'b0));
  FDRE \wb_data_reg[127] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[127]),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE \wb_data_reg[128] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[128]),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE \wb_data_reg[12] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \wb_data_reg[130] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[129]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE \wb_data_reg[131] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[130]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \wb_data_reg[132] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[131]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \wb_data_reg[133] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[132]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \wb_data_reg[134] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[133]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \wb_data_reg[135] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[134]),
        .Q(data4[9]),
        .R(1'b0));
  FDRE \wb_data_reg[136] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[135]),
        .Q(data4[10]),
        .R(1'b0));
  FDRE \wb_data_reg[137] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[136]),
        .Q(data4[11]),
        .R(1'b0));
  FDRE \wb_data_reg[138] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[137]),
        .Q(data4[12]),
        .R(1'b0));
  FDRE \wb_data_reg[139] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[138]),
        .Q(data4[13]),
        .R(1'b0));
  FDRE \wb_data_reg[13] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \wb_data_reg[140] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[139]),
        .Q(data4[14]),
        .R(1'b0));
  FDRE \wb_data_reg[141] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[140]),
        .Q(data4[15]),
        .R(1'b0));
  FDRE \wb_data_reg[142] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[141]),
        .Q(data4[16]),
        .R(1'b0));
  FDRE \wb_data_reg[143] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[142]),
        .Q(data4[17]),
        .R(1'b0));
  FDRE \wb_data_reg[144] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[143]),
        .Q(data4[18]),
        .R(1'b0));
  FDRE \wb_data_reg[145] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[144]),
        .Q(data4[19]),
        .R(1'b0));
  FDRE \wb_data_reg[146] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[145]),
        .Q(data4[20]),
        .R(1'b0));
  FDRE \wb_data_reg[147] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[146]),
        .Q(data4[21]),
        .R(1'b0));
  FDRE \wb_data_reg[148] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[147]),
        .Q(data4[22]),
        .R(1'b0));
  FDRE \wb_data_reg[149] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[148]),
        .Q(data4[23]),
        .R(1'b0));
  FDRE \wb_data_reg[14] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \wb_data_reg[150] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[149]),
        .Q(data4[24]),
        .R(1'b0));
  FDRE \wb_data_reg[151] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[150]),
        .Q(data4[25]),
        .R(1'b0));
  FDRE \wb_data_reg[152] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[151]),
        .Q(data4[26]),
        .R(1'b0));
  FDRE \wb_data_reg[153] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[152]),
        .Q(data4[27]),
        .R(1'b0));
  FDRE \wb_data_reg[154] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[153]),
        .Q(data4[28]),
        .R(1'b0));
  FDRE \wb_data_reg[155] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[154]),
        .Q(data4[29]),
        .R(1'b0));
  FDRE \wb_data_reg[156] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[155]),
        .Q(data4[30]),
        .R(1'b0));
  FDRE \wb_data_reg[157] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[156]),
        .Q(data4[31]),
        .R(1'b0));
  FDRE \wb_data_reg[158] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[157]),
        .Q(data4[32]),
        .R(1'b0));
  FDRE \wb_data_reg[159] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[158]),
        .Q(data4[33]),
        .R(1'b0));
  FDRE \wb_data_reg[15] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \wb_data_reg[160] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[159]),
        .Q(data4[34]),
        .R(1'b0));
  FDRE \wb_data_reg[161] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[160]),
        .Q(data4[35]),
        .R(1'b0));
  FDRE \wb_data_reg[162] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[161]),
        .Q(data4[36]),
        .R(1'b0));
  FDRE \wb_data_reg[163] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[162]),
        .Q(data4[37]),
        .R(1'b0));
  FDRE \wb_data_reg[164] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[163]),
        .Q(data4[38]),
        .R(1'b0));
  FDRE \wb_data_reg[165] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[164]),
        .Q(data4[39]),
        .R(1'b0));
  FDRE \wb_data_reg[166] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[165]),
        .Q(data4[40]),
        .R(1'b0));
  FDRE \wb_data_reg[16] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \wb_data_reg[17] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \wb_data_reg[18] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \wb_data_reg[19] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \wb_data_reg[1] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \wb_data_reg[20] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \wb_data_reg[21] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \wb_data_reg[22] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \wb_data_reg[23] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \wb_data_reg[24] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \wb_data_reg[25] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \wb_data_reg[26] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \wb_data_reg[27] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \wb_data_reg[28] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \wb_data_reg[29] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \wb_data_reg[2] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \wb_data_reg[30] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \wb_data_reg[31] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \wb_data_reg[32] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \wb_data_reg[33] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \wb_data_reg[34] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \wb_data_reg[35] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \wb_data_reg[36] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \wb_data_reg[37] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \wb_data_reg[38] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \wb_data_reg[39] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \wb_data_reg[3] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \wb_data_reg[40] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \wb_data_reg[41] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \wb_data_reg[42] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \wb_data_reg[43] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \wb_data_reg[44] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \wb_data_reg[45] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \wb_data_reg[46] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \wb_data_reg[47] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \wb_data_reg[48] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \wb_data_reg[49] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \wb_data_reg[4] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \wb_data_reg[50] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \wb_data_reg[51] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \wb_data_reg[52] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \wb_data_reg[53] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \wb_data_reg[54] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \wb_data_reg[55] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \wb_data_reg[56] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \wb_data_reg[57] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \wb_data_reg[58] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \wb_data_reg[59] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \wb_data_reg[5] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \wb_data_reg[60] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \wb_data_reg[61] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \wb_data_reg[62] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \wb_data_reg[63] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \wb_data_reg[64] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[64]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \wb_data_reg[65] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[65]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \wb_data_reg[66] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[66]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE \wb_data_reg[67] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[67]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE \wb_data_reg[68] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[68]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE \wb_data_reg[69] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[69]),
        .Q(wb_gr_we),
        .R(1'b0));
  FDRE \wb_data_reg[6] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \wb_data_reg[70] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[70]),
        .Q(wb_excp),
        .R(1'b0));
  FDRE \wb_data_reg[71] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[71]),
        .Q(wb_ertn),
        .R(1'b0));
  FDRE \wb_data_reg[72] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[72]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE \wb_data_reg[73] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[73]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE \wb_data_reg[74] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[74]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE \wb_data_reg[75] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[75]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE \wb_data_reg[76] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[76]),
        .Q(Q[73]),
        .R(1'b0));
  FDRE \wb_data_reg[77] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[77]),
        .Q(Q[74]),
        .R(1'b0));
  FDRE \wb_data_reg[78] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[78]),
        .Q(Q[75]),
        .R(1'b0));
  FDRE \wb_data_reg[79] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[79]),
        .Q(Q[76]),
        .R(1'b0));
  FDRE \wb_data_reg[7] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \wb_data_reg[80] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[80]),
        .Q(Q[77]),
        .R(1'b0));
  FDRE \wb_data_reg[81] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[81]),
        .Q(Q[78]),
        .R(1'b0));
  FDRE \wb_data_reg[82] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[82]),
        .Q(Q[79]),
        .R(1'b0));
  FDRE \wb_data_reg[83] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[83]),
        .Q(Q[80]),
        .R(1'b0));
  FDRE \wb_data_reg[84] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[84]),
        .Q(Q[81]),
        .R(1'b0));
  FDRE \wb_data_reg[85] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[85]),
        .Q(Q[82]),
        .R(1'b0));
  FDRE \wb_data_reg[86] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[86]),
        .Q(Q[83]),
        .R(1'b0));
  FDRE \wb_data_reg[87] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[87]),
        .Q(Q[84]),
        .R(1'b0));
  FDRE \wb_data_reg[88] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[88]),
        .Q(Q[85]),
        .R(1'b0));
  FDRE \wb_data_reg[89] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[89]),
        .Q(Q[86]),
        .R(1'b0));
  FDRE \wb_data_reg[8] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \wb_data_reg[90] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[90]),
        .Q(Q[87]),
        .R(1'b0));
  FDRE \wb_data_reg[91] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[91]),
        .Q(Q[88]),
        .R(1'b0));
  FDRE \wb_data_reg[92] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[92]),
        .Q(Q[89]),
        .R(1'b0));
  FDRE \wb_data_reg[93] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[93]),
        .Q(Q[90]),
        .R(1'b0));
  FDRE \wb_data_reg[94] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[94]),
        .Q(Q[91]),
        .R(1'b0));
  FDRE \wb_data_reg[95] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[95]),
        .Q(Q[92]),
        .R(1'b0));
  FDRE \wb_data_reg[96] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[96]),
        .Q(Q[93]),
        .R(1'b0));
  FDRE \wb_data_reg[97] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[97]),
        .Q(Q[94]),
        .R(1'b0));
  FDRE \wb_data_reg[98] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[98]),
        .Q(Q[95]),
        .R(1'b0));
  FDRE \wb_data_reg[99] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[99]),
        .Q(Q[96]),
        .R(1'b0));
  FDRE \wb_data_reg[9] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0808080808080888)) 
    wb_valid_i_1
       (.I0(mem_to_wb_valid),
        .I1(resetn),
        .I2(wb_valid),
        .I3(wb_csr_we),
        .I4(wb_ertn),
        .I5(wb_excp),
        .O(wb_valid_i_1_n_0));
  FDRE wb_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(wb_valid_i_1_n_0),
        .Q(wb_valid),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
