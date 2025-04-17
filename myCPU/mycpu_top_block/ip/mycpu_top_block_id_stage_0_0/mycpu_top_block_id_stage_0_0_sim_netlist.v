// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 17 17:57:52 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_id_stage_0_0/mycpu_top_block_id_stage_0_0_sim_netlist.v
// Design      : mycpu_top_block_id_stage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mycpu_top_block_id_stage_0_0,id_stage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "id_stage,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module mycpu_top_block_id_stage_0_0
   (clk,
    resetn,
    id_allowin,
    if_to_id_valid,
    if_to_id_bus,
    exe_allowin,
    id_to_exe_valid,
    id_to_exe_bus,
    id_to_if_bus,
    exe_to_id_bus,
    mem_to_id_bus,
    wb_to_rf_bus);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output id_allowin;
  input if_to_id_valid;
  input [63:0]if_to_id_bus;
  input exe_allowin;
  output id_to_exe_valid;
  output [160:0]id_to_exe_bus;
  output [33:0]id_to_if_bus;
  input [38:0]exe_to_id_bus;
  input [38:0]mem_to_id_bus;
  input [64:0]wb_to_rf_bus;

  wire \<const0> ;
  wire clk;
  wire exe_allowin;
  wire [38:0]exe_to_id_bus;
  wire id_allowin;
  wire [160:0]\^id_to_exe_bus ;
  wire id_to_exe_valid;
  wire [32:0]\^id_to_if_bus ;
  wire [63:0]if_to_id_bus;
  wire if_to_id_valid;
  wire [38:0]mem_to_id_bus;
  wire resetn;
  wire [64:0]wb_to_rf_bus;

  assign id_to_exe_bus[160:153] = \^id_to_exe_bus [160:153];
  assign id_to_exe_bus[152] = \<const0> ;
  assign id_to_exe_bus[151] = \<const0> ;
  assign id_to_exe_bus[150:0] = \^id_to_exe_bus [150:0];
  assign id_to_if_bus[33] = \<const0> ;
  assign id_to_if_bus[32:0] = \^id_to_if_bus [32:0];
  GND GND
       (.G(\<const0> ));
  mycpu_top_block_id_stage_0_0_id_stage inst
       (.clk(clk),
        .exe_allowin(exe_allowin),
        .exe_to_id_bus(exe_to_id_bus),
        .id_allowin(id_allowin),
        .id_to_exe_bus({\^id_to_exe_bus [160:153],\^id_to_exe_bus [150:0]}),
        .id_to_exe_valid(id_to_exe_valid),
        .id_to_if_bus(\^id_to_if_bus ),
        .if_to_id_bus(if_to_id_bus),
        .if_to_id_valid(if_to_id_valid),
        .mem_to_id_bus(mem_to_id_bus),
        .resetn(resetn),
        .wb_to_rf_bus(wb_to_rf_bus[37:0]));
endmodule

(* ORIG_REF_NAME = "id_stage" *) 
module mycpu_top_block_id_stage_0_0_id_stage
   (id_to_exe_bus,
    id_to_if_bus,
    id_to_exe_valid,
    id_allowin,
    clk,
    wb_to_rf_bus,
    exe_to_id_bus,
    if_to_id_bus,
    resetn,
    mem_to_id_bus,
    exe_allowin,
    if_to_id_valid);
  output [158:0]id_to_exe_bus;
  output [32:0]id_to_if_bus;
  output id_to_exe_valid;
  output id_allowin;
  input clk;
  input [37:0]wb_to_rf_bus;
  input [38:0]exe_to_id_bus;
  input [63:0]if_to_id_bus;
  input resetn;
  input [38:0]mem_to_id_bus;
  input exe_allowin;
  input if_to_id_valid;

  wire [31:0]br_target10_out;
  wire br_target1_carry__0_n_0;
  wire br_target1_carry__0_n_1;
  wire br_target1_carry__0_n_2;
  wire br_target1_carry__0_n_3;
  wire br_target1_carry__0_n_4;
  wire br_target1_carry__0_n_5;
  wire br_target1_carry__0_n_6;
  wire br_target1_carry__0_n_7;
  wire br_target1_carry__1_n_0;
  wire br_target1_carry__1_n_1;
  wire br_target1_carry__1_n_2;
  wire br_target1_carry__1_n_3;
  wire br_target1_carry__1_n_4;
  wire br_target1_carry__1_n_5;
  wire br_target1_carry__1_n_6;
  wire br_target1_carry__1_n_7;
  wire br_target1_carry__2_n_0;
  wire br_target1_carry__2_n_1;
  wire br_target1_carry__2_n_2;
  wire br_target1_carry__2_n_3;
  wire br_target1_carry__2_n_4;
  wire br_target1_carry__2_n_5;
  wire br_target1_carry__2_n_6;
  wire br_target1_carry__2_n_7;
  wire br_target1_carry__3_n_0;
  wire br_target1_carry__3_n_1;
  wire br_target1_carry__3_n_2;
  wire br_target1_carry__3_n_3;
  wire br_target1_carry__3_n_4;
  wire br_target1_carry__3_n_5;
  wire br_target1_carry__3_n_6;
  wire br_target1_carry__3_n_7;
  wire br_target1_carry__4_n_0;
  wire br_target1_carry__4_n_1;
  wire br_target1_carry__4_n_2;
  wire br_target1_carry__4_n_3;
  wire br_target1_carry__4_n_4;
  wire br_target1_carry__4_n_5;
  wire br_target1_carry__4_n_6;
  wire br_target1_carry__4_n_7;
  wire br_target1_carry__5_n_0;
  wire br_target1_carry__5_n_1;
  wire br_target1_carry__5_n_2;
  wire br_target1_carry__5_n_3;
  wire br_target1_carry__5_n_4;
  wire br_target1_carry__5_n_5;
  wire br_target1_carry__5_n_6;
  wire br_target1_carry__5_n_7;
  wire br_target1_carry__6_n_1;
  wire br_target1_carry__6_n_2;
  wire br_target1_carry__6_n_3;
  wire br_target1_carry__6_n_4;
  wire br_target1_carry__6_n_5;
  wire br_target1_carry__6_n_6;
  wire br_target1_carry__6_n_7;
  wire br_target1_carry_n_0;
  wire br_target1_carry_n_1;
  wire br_target1_carry_n_2;
  wire br_target1_carry_n_3;
  wire br_target1_carry_n_4;
  wire br_target1_carry_n_5;
  wire br_target1_carry_n_6;
  wire br_target1_carry_n_7;
  wire \br_target1_inferred__0/i__carry__0_n_0 ;
  wire \br_target1_inferred__0/i__carry__0_n_1 ;
  wire \br_target1_inferred__0/i__carry__0_n_2 ;
  wire \br_target1_inferred__0/i__carry__0_n_3 ;
  wire \br_target1_inferred__0/i__carry__1_n_0 ;
  wire \br_target1_inferred__0/i__carry__1_n_1 ;
  wire \br_target1_inferred__0/i__carry__1_n_2 ;
  wire \br_target1_inferred__0/i__carry__1_n_3 ;
  wire \br_target1_inferred__0/i__carry__2_n_0 ;
  wire \br_target1_inferred__0/i__carry__2_n_1 ;
  wire \br_target1_inferred__0/i__carry__2_n_2 ;
  wire \br_target1_inferred__0/i__carry__2_n_3 ;
  wire \br_target1_inferred__0/i__carry__3_n_0 ;
  wire \br_target1_inferred__0/i__carry__3_n_1 ;
  wire \br_target1_inferred__0/i__carry__3_n_2 ;
  wire \br_target1_inferred__0/i__carry__3_n_3 ;
  wire \br_target1_inferred__0/i__carry__4_n_0 ;
  wire \br_target1_inferred__0/i__carry__4_n_1 ;
  wire \br_target1_inferred__0/i__carry__4_n_2 ;
  wire \br_target1_inferred__0/i__carry__4_n_3 ;
  wire \br_target1_inferred__0/i__carry__5_n_0 ;
  wire \br_target1_inferred__0/i__carry__5_n_1 ;
  wire \br_target1_inferred__0/i__carry__5_n_2 ;
  wire \br_target1_inferred__0/i__carry__5_n_3 ;
  wire \br_target1_inferred__0/i__carry__6_n_1 ;
  wire \br_target1_inferred__0/i__carry__6_n_2 ;
  wire \br_target1_inferred__0/i__carry__6_n_3 ;
  wire \br_target1_inferred__0/i__carry_n_0 ;
  wire \br_target1_inferred__0/i__carry_n_1 ;
  wire \br_target1_inferred__0/i__carry_n_2 ;
  wire \br_target1_inferred__0/i__carry_n_3 ;
  wire clk;
  wire exe_allowin;
  wire [38:0]exe_to_id_bus;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire id_allowin;
  wire id_allowin_INST_0_i_1_n_0;
  wire id_allowin_INST_0_i_2_n_0;
  wire id_allowin_INST_0_i_3_n_0;
  wire id_allowin_INST_0_i_4_n_0;
  wire id_allowin_INST_0_i_5_n_0;
  wire id_data0;
  wire \id_data_reg_n_0_[0] ;
  wire \id_data_reg_n_0_[1] ;
  wire \id_data_reg_n_0_[26] ;
  wire \id_data_reg_n_0_[27] ;
  wire \id_data_reg_n_0_[28] ;
  wire \id_data_reg_n_0_[29] ;
  wire \id_data_reg_n_0_[2] ;
  wire \id_data_reg_n_0_[30] ;
  wire \id_data_reg_n_0_[31] ;
  wire \id_data_reg_n_0_[3] ;
  wire \id_data_reg_n_0_[4] ;
  wire [158:0]id_to_exe_bus;
  wire \id_to_exe_bus[107]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[107]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[108]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[109]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[110]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[111]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[112]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[112]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[113]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[114]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[115]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[116]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[116]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[122]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[122]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[122]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[127]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[136]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[136]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[136]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[136]_INST_0_i_4_n_0 ;
  wire \id_to_exe_bus[136]_INST_0_i_5_n_0 ;
  wire \id_to_exe_bus[137]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[137]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[139]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[139]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[139]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[139]_INST_0_i_4_n_0 ;
  wire \id_to_exe_bus[139]_INST_0_i_5_n_0 ;
  wire \id_to_exe_bus[141]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[142]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[143]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[146]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[146]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[146]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[149]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[149]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[150]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[153]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[153]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[153]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[155]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[155]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[155]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[157]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[157]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[160]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_10_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_11_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_12_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_13_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_14_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_15_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_16_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_17_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_18_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_19_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_20_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_21_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_22_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_23_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_4_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_5_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_6_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_7_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_8_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_9_n_0 ;
  wire \id_to_exe_bus[94]_INST_0_i_2_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_10_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_11_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_12_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_13_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_14_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_15_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_16_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_17_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_18_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_19_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_20_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_21_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_22_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_23_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_24_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_25_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_26_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_27_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_28_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_29_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_30_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_31_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_32_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_33_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_34_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_35_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_36_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_37_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_4_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_5_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_6_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_7_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_8_n_0 ;
  wire \id_to_exe_bus[95]_INST_0_i_9_n_0 ;
  wire id_to_exe_valid;
  wire [32:0]id_to_if_bus;
  wire \id_to_if_bus[31]_INST_0_i_1_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_10_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_12_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_2_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_4_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_7_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_9_n_0 ;
  wire id_valid;
  wire id_valid_i_2_n_0;
  wire id_valid_i_3_n_0;
  wire id_valid_i_5_n_0;
  wire id_valid_i_6_n_0;
  wire id_valid_i_7_n_0;
  wire id_valid_i_8_n_0;
  wire [63:0]if_to_id_bus;
  wire if_to_id_valid;
  wire [38:0]mem_to_id_bus;
  wire [4:0]op_19_15;
  wire [1:0]op_21_20;
  wire [3:0]op_25_22;
  wire p_0_in;
  wire [4:0]p_10_in;
  wire [4:0]raddr2;
  wire resetn;
  wire [4:0]rf_raddr1;
  wire rj_eq_rd;
  wire rj_eq_rd_carry__0_n_0;
  wire rj_eq_rd_carry__0_n_1;
  wire rj_eq_rd_carry__0_n_2;
  wire rj_eq_rd_carry__0_n_3;
  wire rj_eq_rd_carry__1_n_2;
  wire rj_eq_rd_carry__1_n_3;
  wire rj_eq_rd_carry_n_0;
  wire rj_eq_rd_carry_n_1;
  wire rj_eq_rd_carry_n_2;
  wire rj_eq_rd_carry_n_3;
  wire rj_lt_rd_unsign;
  wire rj_lt_rd_unsign_carry__0_n_0;
  wire rj_lt_rd_unsign_carry__0_n_1;
  wire rj_lt_rd_unsign_carry__0_n_2;
  wire rj_lt_rd_unsign_carry__0_n_3;
  wire rj_lt_rd_unsign_carry__1_n_0;
  wire rj_lt_rd_unsign_carry__1_n_1;
  wire rj_lt_rd_unsign_carry__1_n_2;
  wire rj_lt_rd_unsign_carry__1_n_3;
  wire rj_lt_rd_unsign_carry__2_n_1;
  wire rj_lt_rd_unsign_carry__2_n_2;
  wire rj_lt_rd_unsign_carry__2_n_3;
  wire rj_lt_rd_unsign_carry_n_0;
  wire rj_lt_rd_unsign_carry_n_1;
  wire rj_lt_rd_unsign_carry_n_2;
  wire rj_lt_rd_unsign_carry_n_3;
  wire u_regfile_n_10;
  wire u_regfile_n_11;
  wire u_regfile_n_115;
  wire u_regfile_n_116;
  wire u_regfile_n_117;
  wire u_regfile_n_118;
  wire u_regfile_n_119;
  wire u_regfile_n_12;
  wire u_regfile_n_120;
  wire u_regfile_n_121;
  wire u_regfile_n_122;
  wire u_regfile_n_123;
  wire u_regfile_n_124;
  wire u_regfile_n_125;
  wire u_regfile_n_126;
  wire u_regfile_n_127;
  wire u_regfile_n_128;
  wire u_regfile_n_129;
  wire u_regfile_n_13;
  wire u_regfile_n_130;
  wire u_regfile_n_131;
  wire u_regfile_n_132;
  wire u_regfile_n_133;
  wire u_regfile_n_134;
  wire u_regfile_n_135;
  wire u_regfile_n_136;
  wire u_regfile_n_137;
  wire u_regfile_n_138;
  wire u_regfile_n_139;
  wire u_regfile_n_14;
  wire u_regfile_n_140;
  wire u_regfile_n_141;
  wire u_regfile_n_142;
  wire u_regfile_n_143;
  wire u_regfile_n_144;
  wire u_regfile_n_145;
  wire u_regfile_n_146;
  wire u_regfile_n_147;
  wire u_regfile_n_148;
  wire u_regfile_n_149;
  wire u_regfile_n_15;
  wire u_regfile_n_155;
  wire u_regfile_n_156;
  wire u_regfile_n_157;
  wire u_regfile_n_158;
  wire u_regfile_n_159;
  wire u_regfile_n_16;
  wire u_regfile_n_160;
  wire u_regfile_n_161;
  wire u_regfile_n_162;
  wire u_regfile_n_163;
  wire u_regfile_n_164;
  wire u_regfile_n_165;
  wire u_regfile_n_166;
  wire u_regfile_n_167;
  wire u_regfile_n_168;
  wire u_regfile_n_169;
  wire u_regfile_n_17;
  wire u_regfile_n_170;
  wire u_regfile_n_171;
  wire u_regfile_n_172;
  wire u_regfile_n_173;
  wire u_regfile_n_174;
  wire u_regfile_n_175;
  wire u_regfile_n_176;
  wire u_regfile_n_177;
  wire u_regfile_n_178;
  wire u_regfile_n_179;
  wire u_regfile_n_18;
  wire u_regfile_n_180;
  wire u_regfile_n_181;
  wire u_regfile_n_182;
  wire u_regfile_n_183;
  wire u_regfile_n_19;
  wire u_regfile_n_20;
  wire u_regfile_n_21;
  wire u_regfile_n_22;
  wire u_regfile_n_23;
  wire u_regfile_n_24;
  wire u_regfile_n_25;
  wire u_regfile_n_26;
  wire u_regfile_n_27;
  wire u_regfile_n_28;
  wire u_regfile_n_29;
  wire u_regfile_n_30;
  wire u_regfile_n_31;
  wire u_regfile_n_32;
  wire u_regfile_n_33;
  wire u_regfile_n_34;
  wire u_regfile_n_35;
  wire u_regfile_n_36;
  wire u_regfile_n_37;
  wire u_regfile_n_38;
  wire u_regfile_n_39;
  wire u_regfile_n_40;
  wire u_regfile_n_41;
  wire u_regfile_n_42;
  wire u_regfile_n_43;
  wire u_regfile_n_44;
  wire u_regfile_n_45;
  wire u_regfile_n_46;
  wire u_regfile_n_47;
  wire u_regfile_n_48;
  wire u_regfile_n_49;
  wire u_regfile_n_5;
  wire u_regfile_n_50;
  wire u_regfile_n_6;
  wire u_regfile_n_7;
  wire u_regfile_n_8;
  wire u_regfile_n_9;
  wire [37:0]wb_to_rf_bus;
  wire [3:3]NLW_br_target1_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_br_target1_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:0]NLW_rj_eq_rd_carry_O_UNCONNECTED;
  wire [3:0]NLW_rj_eq_rd_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_rj_eq_rd_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_rj_eq_rd_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rj_lt_rd_unsign_carry_O_UNCONNECTED;
  wire [3:0]NLW_rj_lt_rd_unsign_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rj_lt_rd_unsign_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rj_lt_rd_unsign_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry
       (.CI(1'b0),
        .CO({br_target1_carry_n_0,br_target1_carry_n_1,br_target1_carry_n_2,br_target1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_155,u_regfile_n_156,u_regfile_n_157,u_regfile_n_158}),
        .O({br_target1_carry_n_4,br_target1_carry_n_5,br_target1_carry_n_6,br_target1_carry_n_7}),
        .S({u_regfile_n_5,u_regfile_n_6,u_regfile_n_7,u_regfile_n_8}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry__0
       (.CI(br_target1_carry_n_0),
        .CO({br_target1_carry__0_n_0,br_target1_carry__0_n_1,br_target1_carry__0_n_2,br_target1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_159,u_regfile_n_160,u_regfile_n_115,u_regfile_n_161}),
        .O({br_target1_carry__0_n_4,br_target1_carry__0_n_5,br_target1_carry__0_n_6,br_target1_carry__0_n_7}),
        .S({u_regfile_n_9,u_regfile_n_10,u_regfile_n_11,u_regfile_n_12}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry__1
       (.CI(br_target1_carry__0_n_0),
        .CO({br_target1_carry__1_n_0,br_target1_carry__1_n_1,br_target1_carry__1_n_2,br_target1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_124,u_regfile_n_162,u_regfile_n_163,u_regfile_n_164}),
        .O({br_target1_carry__1_n_4,br_target1_carry__1_n_5,br_target1_carry__1_n_6,br_target1_carry__1_n_7}),
        .S({u_regfile_n_13,u_regfile_n_14,u_regfile_n_15,u_regfile_n_16}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry__2
       (.CI(br_target1_carry__1_n_0),
        .CO({br_target1_carry__2_n_0,br_target1_carry__2_n_1,br_target1_carry__2_n_2,br_target1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_165,u_regfile_n_166,u_regfile_n_167,u_regfile_n_168}),
        .O({br_target1_carry__2_n_4,br_target1_carry__2_n_5,br_target1_carry__2_n_6,br_target1_carry__2_n_7}),
        .S({u_regfile_n_17,u_regfile_n_18,u_regfile_n_19,u_regfile_n_20}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry__3
       (.CI(br_target1_carry__2_n_0),
        .CO({br_target1_carry__3_n_0,br_target1_carry__3_n_1,br_target1_carry__3_n_2,br_target1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_169,u_regfile_n_170,u_regfile_n_129,u_regfile_n_171}),
        .O({br_target1_carry__3_n_4,br_target1_carry__3_n_5,br_target1_carry__3_n_6,br_target1_carry__3_n_7}),
        .S({u_regfile_n_21,u_regfile_n_22,u_regfile_n_23,u_regfile_n_24}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry__4
       (.CI(br_target1_carry__3_n_0),
        .CO({br_target1_carry__4_n_0,br_target1_carry__4_n_1,br_target1_carry__4_n_2,br_target1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_138,u_regfile_n_172,u_regfile_n_173,u_regfile_n_174}),
        .O({br_target1_carry__4_n_4,br_target1_carry__4_n_5,br_target1_carry__4_n_6,br_target1_carry__4_n_7}),
        .S({u_regfile_n_25,u_regfile_n_26,u_regfile_n_27,u_regfile_n_28}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry__5
       (.CI(br_target1_carry__4_n_0),
        .CO({br_target1_carry__5_n_0,br_target1_carry__5_n_1,br_target1_carry__5_n_2,br_target1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_175,u_regfile_n_176,u_regfile_n_177,u_regfile_n_178}),
        .O({br_target1_carry__5_n_4,br_target1_carry__5_n_5,br_target1_carry__5_n_6,br_target1_carry__5_n_7}),
        .S({u_regfile_n_29,u_regfile_n_30,u_regfile_n_31,u_regfile_n_32}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 br_target1_carry__6
       (.CI(br_target1_carry__5_n_0),
        .CO({NLW_br_target1_carry__6_CO_UNCONNECTED[3],br_target1_carry__6_n_1,br_target1_carry__6_n_2,br_target1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,u_regfile_n_179,u_regfile_n_37,u_regfile_n_180}),
        .O({br_target1_carry__6_n_4,br_target1_carry__6_n_5,br_target1_carry__6_n_6,br_target1_carry__6_n_7}),
        .S({u_regfile_n_33,u_regfile_n_34,u_regfile_n_35,u_regfile_n_36}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\br_target1_inferred__0/i__carry_n_0 ,\br_target1_inferred__0/i__carry_n_1 ,\br_target1_inferred__0/i__carry_n_2 ,\br_target1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(id_to_exe_bus[3:0]),
        .O(br_target10_out[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry__0 
       (.CI(\br_target1_inferred__0/i__carry_n_0 ),
        .CO({\br_target1_inferred__0/i__carry__0_n_0 ,\br_target1_inferred__0/i__carry__0_n_1 ,\br_target1_inferred__0/i__carry__0_n_2 ,\br_target1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(id_to_exe_bus[7:4]),
        .O(br_target10_out[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry__1 
       (.CI(\br_target1_inferred__0/i__carry__0_n_0 ),
        .CO({\br_target1_inferred__0/i__carry__1_n_0 ,\br_target1_inferred__0/i__carry__1_n_1 ,\br_target1_inferred__0/i__carry__1_n_2 ,\br_target1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(id_to_exe_bus[11:8]),
        .O(br_target10_out[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry__2 
       (.CI(\br_target1_inferred__0/i__carry__1_n_0 ),
        .CO({\br_target1_inferred__0/i__carry__2_n_0 ,\br_target1_inferred__0/i__carry__2_n_1 ,\br_target1_inferred__0/i__carry__2_n_2 ,\br_target1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(id_to_exe_bus[15:12]),
        .O(br_target10_out[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry__3 
       (.CI(\br_target1_inferred__0/i__carry__2_n_0 ),
        .CO({\br_target1_inferred__0/i__carry__3_n_0 ,\br_target1_inferred__0/i__carry__3_n_1 ,\br_target1_inferred__0/i__carry__3_n_2 ,\br_target1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(id_to_exe_bus[19:16]),
        .O(br_target10_out[19:16]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry__4 
       (.CI(\br_target1_inferred__0/i__carry__3_n_0 ),
        .CO({\br_target1_inferred__0/i__carry__4_n_0 ,\br_target1_inferred__0/i__carry__4_n_1 ,\br_target1_inferred__0/i__carry__4_n_2 ,\br_target1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(id_to_exe_bus[23:20]),
        .O(br_target10_out[23:20]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry__5 
       (.CI(\br_target1_inferred__0/i__carry__4_n_0 ),
        .CO({\br_target1_inferred__0/i__carry__5_n_0 ,\br_target1_inferred__0/i__carry__5_n_1 ,\br_target1_inferred__0/i__carry__5_n_2 ,\br_target1_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(id_to_exe_bus[27:24]),
        .O(br_target10_out[27:24]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \br_target1_inferred__0/i__carry__6 
       (.CI(\br_target1_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_br_target1_inferred__0/i__carry__6_CO_UNCONNECTED [3],\br_target1_inferred__0/i__carry__6_n_1 ,\br_target1_inferred__0/i__carry__6_n_2 ,\br_target1_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,id_to_exe_bus[30:28]}),
        .O(br_target10_out[31:28]),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(id_to_exe_bus[7]),
        .I1(id_to_exe_bus[103]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(id_to_exe_bus[6]),
        .I1(id_to_exe_bus[102]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(id_to_exe_bus[5]),
        .I1(id_to_exe_bus[101]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(id_to_exe_bus[4]),
        .I1(id_to_exe_bus[100]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(id_to_exe_bus[11]),
        .I1(id_to_exe_bus[107]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(id_to_exe_bus[10]),
        .I1(id_to_exe_bus[106]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(id_to_exe_bus[9]),
        .I1(id_to_exe_bus[105]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(id_to_exe_bus[8]),
        .I1(id_to_exe_bus[104]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1
       (.I0(id_to_exe_bus[15]),
        .I1(id_to_exe_bus[111]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2
       (.I0(id_to_exe_bus[14]),
        .I1(id_to_exe_bus[110]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3
       (.I0(id_to_exe_bus[13]),
        .I1(id_to_exe_bus[109]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4
       (.I0(id_to_exe_bus[12]),
        .I1(id_to_exe_bus[108]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_1
       (.I0(id_to_exe_bus[19]),
        .I1(id_to_exe_bus[115]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_2
       (.I0(id_to_exe_bus[18]),
        .I1(id_to_exe_bus[114]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_3
       (.I0(id_to_exe_bus[17]),
        .I1(id_to_exe_bus[113]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_4
       (.I0(id_to_exe_bus[16]),
        .I1(id_to_exe_bus[112]),
        .O(i__carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h55555555559A9A9A)) 
    i__carry__4_i_1
       (.I0(id_to_exe_bus[23]),
        .I1(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I2(op_19_15[1]),
        .I3(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I4(rf_raddr1[0]),
        .I5(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_2
       (.I0(id_to_exe_bus[22]),
        .I1(id_to_exe_bus[118]),
        .O(i__carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h55555555559A9A9A)) 
    i__carry__4_i_3
       (.I0(id_to_exe_bus[21]),
        .I1(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I2(p_10_in[4]),
        .I3(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I4(\id_data_reg_n_0_[3] ),
        .I5(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_4
       (.I0(id_to_exe_bus[20]),
        .I1(id_to_exe_bus[116]),
        .O(i__carry__4_i_4_n_0));
  LUT6 #(
    .INIT(64'h07F807F800FF07F8)) 
    i__carry__5_i_1
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(id_to_exe_bus[27]),
        .I4(op_21_20[0]),
        .I5(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_2
       (.I0(id_to_exe_bus[26]),
        .I1(id_to_exe_bus[122]),
        .O(i__carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'h55555555559A9A9A)) 
    i__carry__5_i_3
       (.I0(id_to_exe_bus[25]),
        .I1(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I2(op_19_15[3]),
        .I3(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I4(rf_raddr1[2]),
        .I5(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .O(i__carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'h55555555559A9A9A)) 
    i__carry__5_i_4
       (.I0(id_to_exe_bus[24]),
        .I1(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I2(op_19_15[2]),
        .I3(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I4(rf_raddr1[1]),
        .I5(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .O(i__carry__5_i_4_n_0));
  LUT6 #(
    .INIT(64'h07F807F800FF07F8)) 
    i__carry__6_i_1
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(id_to_exe_bus[31]),
        .I4(op_25_22[2]),
        .I5(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(i__carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'h07F807F800FF07F8)) 
    i__carry__6_i_2
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(id_to_exe_bus[30]),
        .I4(op_25_22[1]),
        .I5(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(i__carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'h07F807F800FF07F8)) 
    i__carry__6_i_3
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(id_to_exe_bus[29]),
        .I4(op_25_22[0]),
        .I5(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(i__carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h07F807F800FF07F8)) 
    i__carry__6_i_4
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(id_to_exe_bus[28]),
        .I4(op_21_20[1]),
        .I5(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(i__carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(id_to_exe_bus[3]),
        .I1(id_to_exe_bus[99]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(id_to_exe_bus[2]),
        .I1(id_to_exe_bus[98]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    i__carry_i_3
       (.I0(p_10_in[1]),
        .I1(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .I2(id_to_exe_bus[1]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    i__carry_i_4
       (.I0(p_10_in[0]),
        .I1(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .I2(id_to_exe_bus[0]),
        .O(i__carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    id_allowin_INST_0
       (.I0(exe_allowin),
        .I1(id_allowin_INST_0_i_1_n_0),
        .I2(id_valid),
        .O(id_allowin));
  LUT6 #(
    .INIT(64'hFFFFE0FFE0E0E0E0)) 
    id_allowin_INST_0_i_1
       (.I0(\id_to_exe_bus[94]_INST_0_i_2_n_0 ),
        .I1(id_allowin_INST_0_i_2_n_0),
        .I2(exe_to_id_bus[38]),
        .I3(\id_to_exe_bus[95]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[63]_INST_0_i_2_n_0 ),
        .I5(id_allowin_INST_0_i_3_n_0),
        .O(id_allowin_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000000000100)) 
    id_allowin_INST_0_i_2
       (.I0(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .I1(id_allowin_INST_0_i_4_n_0),
        .I2(id_allowin_INST_0_i_5_n_0),
        .I3(exe_to_id_bus[37]),
        .I4(exe_to_id_bus[35]),
        .I5(raddr2[3]),
        .O(id_allowin_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    id_allowin_INST_0_i_3
       (.I0(mem_to_id_bus[38]),
        .I1(\id_to_exe_bus[122]_INST_0_i_3_n_0 ),
        .O(id_allowin_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    id_allowin_INST_0_i_4
       (.I0(raddr2[1]),
        .I1(exe_to_id_bus[33]),
        .I2(raddr2[2]),
        .I3(exe_to_id_bus[34]),
        .O(id_allowin_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    id_allowin_INST_0_i_5
       (.I0(raddr2[4]),
        .I1(exe_to_id_bus[36]),
        .I2(raddr2[0]),
        .I3(exe_to_id_bus[32]),
        .O(id_allowin_INST_0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \id_data[63]_i_1 
       (.I0(resetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h08AA)) 
    \id_data[63]_i_2 
       (.I0(if_to_id_valid),
        .I1(exe_allowin),
        .I2(id_allowin_INST_0_i_1_n_0),
        .I3(id_valid),
        .O(id_data0));
  FDRE \id_data_reg[0] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[0]),
        .Q(\id_data_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \id_data_reg[10] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[10]),
        .Q(p_10_in[0]),
        .R(p_0_in));
  FDRE \id_data_reg[11] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[11]),
        .Q(p_10_in[1]),
        .R(p_0_in));
  FDRE \id_data_reg[12] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[12]),
        .Q(p_10_in[2]),
        .R(p_0_in));
  FDRE \id_data_reg[13] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[13]),
        .Q(p_10_in[3]),
        .R(p_0_in));
  FDRE \id_data_reg[14] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[14]),
        .Q(p_10_in[4]),
        .R(p_0_in));
  FDRE \id_data_reg[15] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[15]),
        .Q(op_19_15[0]),
        .R(p_0_in));
  FDRE \id_data_reg[16] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[16]),
        .Q(op_19_15[1]),
        .R(p_0_in));
  FDRE \id_data_reg[17] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[17]),
        .Q(op_19_15[2]),
        .R(p_0_in));
  FDRE \id_data_reg[18] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[18]),
        .Q(op_19_15[3]),
        .R(p_0_in));
  FDRE \id_data_reg[19] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[19]),
        .Q(op_19_15[4]),
        .R(p_0_in));
  FDRE \id_data_reg[1] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[1]),
        .Q(\id_data_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \id_data_reg[20] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[20]),
        .Q(op_21_20[0]),
        .R(p_0_in));
  FDRE \id_data_reg[21] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[21]),
        .Q(op_21_20[1]),
        .R(p_0_in));
  FDRE \id_data_reg[22] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[22]),
        .Q(op_25_22[0]),
        .R(p_0_in));
  FDRE \id_data_reg[23] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[23]),
        .Q(op_25_22[1]),
        .R(p_0_in));
  FDRE \id_data_reg[24] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[24]),
        .Q(op_25_22[2]),
        .R(p_0_in));
  FDRE \id_data_reg[25] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[25]),
        .Q(op_25_22[3]),
        .R(p_0_in));
  FDRE \id_data_reg[26] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[26]),
        .Q(\id_data_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \id_data_reg[27] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[27]),
        .Q(\id_data_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \id_data_reg[28] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[28]),
        .Q(\id_data_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \id_data_reg[29] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[29]),
        .Q(\id_data_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \id_data_reg[2] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[2]),
        .Q(\id_data_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \id_data_reg[30] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[30]),
        .Q(\id_data_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \id_data_reg[31] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[31]),
        .Q(\id_data_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \id_data_reg[32] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[32]),
        .Q(id_to_exe_bus[0]),
        .R(p_0_in));
  FDRE \id_data_reg[33] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[33]),
        .Q(id_to_exe_bus[1]),
        .R(p_0_in));
  FDRE \id_data_reg[34] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[34]),
        .Q(id_to_exe_bus[2]),
        .R(p_0_in));
  FDRE \id_data_reg[35] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[35]),
        .Q(id_to_exe_bus[3]),
        .R(p_0_in));
  FDRE \id_data_reg[36] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[36]),
        .Q(id_to_exe_bus[4]),
        .R(p_0_in));
  FDRE \id_data_reg[37] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[37]),
        .Q(id_to_exe_bus[5]),
        .R(p_0_in));
  FDRE \id_data_reg[38] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[38]),
        .Q(id_to_exe_bus[6]),
        .R(p_0_in));
  FDRE \id_data_reg[39] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[39]),
        .Q(id_to_exe_bus[7]),
        .R(p_0_in));
  FDRE \id_data_reg[3] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[3]),
        .Q(\id_data_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \id_data_reg[40] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[40]),
        .Q(id_to_exe_bus[8]),
        .R(p_0_in));
  FDRE \id_data_reg[41] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[41]),
        .Q(id_to_exe_bus[9]),
        .R(p_0_in));
  FDRE \id_data_reg[42] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[42]),
        .Q(id_to_exe_bus[10]),
        .R(p_0_in));
  FDRE \id_data_reg[43] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[43]),
        .Q(id_to_exe_bus[11]),
        .R(p_0_in));
  FDRE \id_data_reg[44] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[44]),
        .Q(id_to_exe_bus[12]),
        .R(p_0_in));
  FDRE \id_data_reg[45] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[45]),
        .Q(id_to_exe_bus[13]),
        .R(p_0_in));
  FDRE \id_data_reg[46] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[46]),
        .Q(id_to_exe_bus[14]),
        .R(p_0_in));
  FDRE \id_data_reg[47] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[47]),
        .Q(id_to_exe_bus[15]),
        .R(p_0_in));
  FDRE \id_data_reg[48] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[48]),
        .Q(id_to_exe_bus[16]),
        .R(p_0_in));
  FDRE \id_data_reg[49] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[49]),
        .Q(id_to_exe_bus[17]),
        .R(p_0_in));
  FDRE \id_data_reg[4] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[4]),
        .Q(\id_data_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \id_data_reg[50] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[50]),
        .Q(id_to_exe_bus[18]),
        .R(p_0_in));
  FDRE \id_data_reg[51] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[51]),
        .Q(id_to_exe_bus[19]),
        .R(p_0_in));
  FDRE \id_data_reg[52] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[52]),
        .Q(id_to_exe_bus[20]),
        .R(p_0_in));
  FDRE \id_data_reg[53] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[53]),
        .Q(id_to_exe_bus[21]),
        .R(p_0_in));
  FDRE \id_data_reg[54] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[54]),
        .Q(id_to_exe_bus[22]),
        .R(p_0_in));
  FDRE \id_data_reg[55] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[55]),
        .Q(id_to_exe_bus[23]),
        .R(p_0_in));
  FDRE \id_data_reg[56] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[56]),
        .Q(id_to_exe_bus[24]),
        .R(p_0_in));
  FDRE \id_data_reg[57] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[57]),
        .Q(id_to_exe_bus[25]),
        .R(p_0_in));
  FDRE \id_data_reg[58] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[58]),
        .Q(id_to_exe_bus[26]),
        .R(p_0_in));
  FDRE \id_data_reg[59] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[59]),
        .Q(id_to_exe_bus[27]),
        .R(p_0_in));
  FDRE \id_data_reg[5] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[5]),
        .Q(rf_raddr1[0]),
        .R(p_0_in));
  FDRE \id_data_reg[60] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[60]),
        .Q(id_to_exe_bus[28]),
        .R(p_0_in));
  FDRE \id_data_reg[61] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[61]),
        .Q(id_to_exe_bus[29]),
        .R(p_0_in));
  FDRE \id_data_reg[62] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[62]),
        .Q(id_to_exe_bus[30]),
        .R(p_0_in));
  FDRE \id_data_reg[63] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[63]),
        .Q(id_to_exe_bus[31]),
        .R(p_0_in));
  FDRE \id_data_reg[6] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[6]),
        .Q(rf_raddr1[1]),
        .R(p_0_in));
  FDRE \id_data_reg[7] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[7]),
        .Q(rf_raddr1[2]),
        .R(p_0_in));
  FDRE \id_data_reg[8] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[8]),
        .Q(rf_raddr1[3]),
        .R(p_0_in));
  FDRE \id_data_reg[9] 
       (.C(clk),
        .CE(id_data0),
        .D(if_to_id_bus[9]),
        .Q(rf_raddr1[4]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[100]_INST_0 
       (.I0(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .I1(p_10_in[4]),
        .I2(rf_raddr1[2]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(p_10_in[2]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[100]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[101]_INST_0 
       (.I0(\id_to_exe_bus[107]_INST_0_i_1_n_0 ),
        .I1(op_19_15[0]),
        .I2(rf_raddr1[3]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(p_10_in[3]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[101]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[102]_INST_0 
       (.I0(\id_to_exe_bus[107]_INST_0_i_1_n_0 ),
        .I1(op_19_15[1]),
        .I2(rf_raddr1[4]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(p_10_in[4]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[102]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[103]_INST_0 
       (.I0(\id_to_exe_bus[107]_INST_0_i_1_n_0 ),
        .I1(op_19_15[2]),
        .I2(p_10_in[0]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(op_19_15[0]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[103]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[104]_INST_0 
       (.I0(\id_to_exe_bus[107]_INST_0_i_1_n_0 ),
        .I1(op_19_15[3]),
        .I2(p_10_in[1]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(op_19_15[1]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[104]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[105]_INST_0 
       (.I0(\id_to_exe_bus[107]_INST_0_i_1_n_0 ),
        .I1(op_19_15[4]),
        .I2(p_10_in[2]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(op_19_15[2]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[105]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[106]_INST_0 
       (.I0(\id_to_exe_bus[107]_INST_0_i_1_n_0 ),
        .I1(op_21_20[0]),
        .I2(p_10_in[3]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(op_19_15[3]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[106]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[107]_INST_0 
       (.I0(\id_to_exe_bus[107]_INST_0_i_1_n_0 ),
        .I1(op_21_20[1]),
        .I2(p_10_in[4]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(op_19_15[4]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[107]));
  LUT6 #(
    .INIT(64'hCCCFF555FC44F555)) 
    \id_to_exe_bus[107]_INST_0_i_1 
       (.I0(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I2(op_25_22[0]),
        .I3(op_25_22[1]),
        .I4(op_25_22[3]),
        .I5(op_25_22[2]),
        .O(\id_to_exe_bus[107]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCC13FFFF)) 
    \id_to_exe_bus[107]_INST_0_i_2 
       (.I0(\id_data_reg_n_0_[27] ),
        .I1(\id_data_reg_n_0_[28] ),
        .I2(\id_data_reg_n_0_[26] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[30] ),
        .I5(\id_data_reg_n_0_[31] ),
        .O(\id_to_exe_bus[107]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \id_to_exe_bus[108]_INST_0 
       (.I0(\id_to_exe_bus[112]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[108]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(rf_raddr1[0]),
        .I4(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I5(op_19_15[0]),
        .O(id_to_exe_bus[108]));
  LUT6 #(
    .INIT(64'h88888AA888888888)) 
    \id_to_exe_bus[108]_INST_0_i_1 
       (.I0(op_21_20[0]),
        .I1(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I2(\id_data_reg_n_0_[28] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[31] ),
        .I5(\id_data_reg_n_0_[30] ),
        .O(\id_to_exe_bus[108]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \id_to_exe_bus[109]_INST_0 
       (.I0(\id_to_exe_bus[112]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[109]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(rf_raddr1[1]),
        .I4(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I5(op_19_15[1]),
        .O(id_to_exe_bus[109]));
  LUT6 #(
    .INIT(64'h88888AA888888888)) 
    \id_to_exe_bus[109]_INST_0_i_1 
       (.I0(op_21_20[1]),
        .I1(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I2(\id_data_reg_n_0_[28] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[31] ),
        .I5(\id_data_reg_n_0_[30] ),
        .O(\id_to_exe_bus[109]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \id_to_exe_bus[110]_INST_0 
       (.I0(\id_to_exe_bus[112]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[110]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(rf_raddr1[2]),
        .I4(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I5(op_19_15[2]),
        .O(id_to_exe_bus[110]));
  LUT6 #(
    .INIT(64'h88888AA888888888)) 
    \id_to_exe_bus[110]_INST_0_i_1 
       (.I0(op_25_22[0]),
        .I1(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I2(\id_data_reg_n_0_[28] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[31] ),
        .I5(\id_data_reg_n_0_[30] ),
        .O(\id_to_exe_bus[110]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \id_to_exe_bus[111]_INST_0 
       (.I0(\id_to_exe_bus[112]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[111]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I3(op_19_15[3]),
        .I4(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I5(rf_raddr1[3]),
        .O(id_to_exe_bus[111]));
  LUT6 #(
    .INIT(64'h88888AA888888888)) 
    \id_to_exe_bus[111]_INST_0_i_1 
       (.I0(op_25_22[1]),
        .I1(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I2(\id_data_reg_n_0_[28] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[31] ),
        .I5(\id_data_reg_n_0_[30] ),
        .O(\id_to_exe_bus[111]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \id_to_exe_bus[112]_INST_0 
       (.I0(\id_to_exe_bus[112]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[112]_INST_0_i_2_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(rf_raddr1[4]),
        .I4(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I5(op_19_15[4]),
        .O(id_to_exe_bus[112]));
  LUT6 #(
    .INIT(64'h00000020F0F0F0F0)) 
    \id_to_exe_bus[112]_INST_0_i_1 
       (.I0(op_25_22[3]),
        .I1(op_25_22[2]),
        .I2(op_21_20[1]),
        .I3(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I4(op_25_22[1]),
        .I5(\id_to_exe_bus[139]_INST_0_i_1_n_0 ),
        .O(\id_to_exe_bus[112]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888AA888888888)) 
    \id_to_exe_bus[112]_INST_0_i_2 
       (.I0(op_25_22[2]),
        .I1(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I2(\id_data_reg_n_0_[28] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[31] ),
        .I5(\id_data_reg_n_0_[30] ),
        .O(\id_to_exe_bus[112]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \id_to_exe_bus[113]_INST_0 
       (.I0(\id_to_exe_bus[122]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[113]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(p_10_in[0]),
        .I4(op_21_20[0]),
        .I5(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[113]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \id_to_exe_bus[113]_INST_0_i_1 
       (.I0(op_25_22[3]),
        .I1(\id_data_reg_n_0_[31] ),
        .I2(\id_data_reg_n_0_[30] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[28] ),
        .I5(\id_data_reg_n_0_[27] ),
        .O(\id_to_exe_bus[113]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \id_to_exe_bus[114]_INST_0 
       (.I0(\id_to_exe_bus[122]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[114]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(p_10_in[1]),
        .I4(op_21_20[1]),
        .I5(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[114]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \id_to_exe_bus[114]_INST_0_i_1 
       (.I0(\id_data_reg_n_0_[31] ),
        .I1(\id_data_reg_n_0_[30] ),
        .I2(\id_data_reg_n_0_[29] ),
        .I3(\id_data_reg_n_0_[28] ),
        .I4(\id_data_reg_n_0_[27] ),
        .I5(\id_data_reg_n_0_[0] ),
        .O(\id_to_exe_bus[114]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \id_to_exe_bus[115]_INST_0 
       (.I0(\id_to_exe_bus[122]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I2(op_25_22[0]),
        .I3(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I4(p_10_in[2]),
        .I5(\id_to_exe_bus[115]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[115]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \id_to_exe_bus[115]_INST_0_i_1 
       (.I0(\id_data_reg_n_0_[1] ),
        .I1(\id_data_reg_n_0_[31] ),
        .I2(\id_data_reg_n_0_[30] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[28] ),
        .I5(\id_data_reg_n_0_[27] ),
        .O(\id_to_exe_bus[115]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \id_to_exe_bus[116]_INST_0 
       (.I0(\id_to_exe_bus[122]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[116]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(p_10_in[3]),
        .I4(op_25_22[1]),
        .I5(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[116]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \id_to_exe_bus[116]_INST_0_i_1 
       (.I0(\id_data_reg_n_0_[2] ),
        .I1(\id_data_reg_n_0_[31] ),
        .I2(\id_data_reg_n_0_[30] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[28] ),
        .I5(\id_data_reg_n_0_[27] ),
        .O(\id_to_exe_bus[116]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \id_to_exe_bus[116]_INST_0_i_2 
       (.I0(op_25_22[3]),
        .I1(\id_to_exe_bus[137]_INST_0_i_2_n_0 ),
        .I2(\id_data_reg_n_0_[27] ),
        .I3(\id_data_reg_n_0_[28] ),
        .I4(\id_data_reg_n_0_[26] ),
        .O(\id_to_exe_bus[116]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \id_to_exe_bus[117]_INST_0 
       (.I0(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I1(\id_data_reg_n_0_[3] ),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I3(p_10_in[4]),
        .I4(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[117]));
  LUT6 #(
    .INIT(64'hFFFFEFEEEFEEEFEE)) 
    \id_to_exe_bus[118]_INST_0 
       (.I0(\id_to_exe_bus[122]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[122]_INST_0_i_2_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(op_19_15[0]),
        .I4(\id_data_reg_n_0_[4] ),
        .I5(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[118]));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \id_to_exe_bus[119]_INST_0 
       (.I0(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I1(rf_raddr1[0]),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I3(op_19_15[1]),
        .I4(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[119]));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \id_to_exe_bus[120]_INST_0 
       (.I0(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I1(rf_raddr1[1]),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I3(op_19_15[2]),
        .I4(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[120]));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \id_to_exe_bus[121]_INST_0 
       (.I0(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I1(rf_raddr1[2]),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I3(op_19_15[3]),
        .I4(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[121]));
  LUT6 #(
    .INIT(64'hFFFFEFEEEFEEEFEE)) 
    \id_to_exe_bus[122]_INST_0 
       (.I0(\id_to_exe_bus[122]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[122]_INST_0_i_2_n_0 ),
        .I2(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I3(op_19_15[4]),
        .I4(rf_raddr1[3]),
        .I5(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[122]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \id_to_exe_bus[122]_INST_0_i_1 
       (.I0(\id_to_exe_bus[112]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[122]_INST_0_i_3_n_0 ),
        .I2(op_25_22[3]),
        .O(\id_to_exe_bus[122]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \id_to_exe_bus[122]_INST_0_i_2 
       (.I0(op_25_22[2]),
        .I1(op_25_22[3]),
        .I2(\id_to_exe_bus[137]_INST_0_i_2_n_0 ),
        .I3(\id_data_reg_n_0_[27] ),
        .I4(\id_data_reg_n_0_[28] ),
        .I5(\id_data_reg_n_0_[26] ),
        .O(\id_to_exe_bus[122]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDFDDFFFDFFFDF)) 
    \id_to_exe_bus[122]_INST_0_i_3 
       (.I0(\id_data_reg_n_0_[30] ),
        .I1(\id_data_reg_n_0_[31] ),
        .I2(\id_data_reg_n_0_[29] ),
        .I3(\id_data_reg_n_0_[28] ),
        .I4(\id_data_reg_n_0_[26] ),
        .I5(\id_data_reg_n_0_[27] ),
        .O(\id_to_exe_bus[122]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \id_to_exe_bus[123]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I4(op_21_20[0]),
        .O(id_to_exe_bus[123]));
  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \id_to_exe_bus[124]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I4(op_21_20[1]),
        .O(id_to_exe_bus[124]));
  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \id_to_exe_bus[125]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I4(op_25_22[0]),
        .O(id_to_exe_bus[125]));
  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \id_to_exe_bus[126]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .I4(op_25_22[1]),
        .O(id_to_exe_bus[126]));
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    \id_to_exe_bus[127]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .I3(op_25_22[2]),
        .I4(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[127]));
  LUT2 #(
    .INIT(4'hE)) 
    \id_to_exe_bus[127]_INST_0_i_1 
       (.I0(\id_to_exe_bus[122]_INST_0_i_2_n_0 ),
        .I1(\id_to_exe_bus[122]_INST_0_i_1_n_0 ),
        .O(\id_to_exe_bus[127]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \id_to_exe_bus[128]_INST_0 
       (.I0(\id_data_reg_n_0_[0] ),
        .I1(\id_data_reg_n_0_[26] ),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[128]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \id_to_exe_bus[129]_INST_0 
       (.I0(\id_data_reg_n_0_[1] ),
        .I1(\id_data_reg_n_0_[26] ),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[129]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \id_to_exe_bus[130]_INST_0 
       (.I0(\id_data_reg_n_0_[2] ),
        .I1(\id_data_reg_n_0_[26] ),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[130]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \id_to_exe_bus[131]_INST_0 
       (.I0(\id_data_reg_n_0_[3] ),
        .I1(\id_data_reg_n_0_[26] ),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[131]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \id_to_exe_bus[132]_INST_0 
       (.I0(\id_data_reg_n_0_[4] ),
        .I1(\id_data_reg_n_0_[26] ),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[132]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00700000)) 
    \id_to_exe_bus[133]_INST_0 
       (.I0(op_25_22[1]),
        .I1(op_25_22[0]),
        .I2(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I3(op_25_22[3]),
        .I4(op_25_22[2]),
        .O(id_to_exe_bus[133]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \id_to_exe_bus[134]_INST_0 
       (.I0(u_regfile_n_181),
        .I1(\id_data_reg_n_0_[26] ),
        .I2(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .O(id_to_exe_bus[134]));
  LUT6 #(
    .INIT(64'h0000000000600000)) 
    \id_to_exe_bus[135]_INST_0 
       (.I0(\id_data_reg_n_0_[27] ),
        .I1(\id_data_reg_n_0_[28] ),
        .I2(\id_data_reg_n_0_[26] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[30] ),
        .I5(\id_data_reg_n_0_[31] ),
        .O(id_to_exe_bus[135]));
  LUT6 #(
    .INIT(64'h00440040FFFFFFFF)) 
    \id_to_exe_bus[136]_INST_0 
       (.I0(op_25_22[3]),
        .I1(\id_data_reg_n_0_[28] ),
        .I2(\id_data_reg_n_0_[27] ),
        .I3(\id_to_exe_bus[137]_INST_0_i_2_n_0 ),
        .I4(\id_data_reg_n_0_[26] ),
        .I5(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[136]));
  LUT2 #(
    .INIT(4'h2)) 
    \id_to_exe_bus[136]_INST_0_i_1 
       (.I0(\id_to_exe_bus[136]_INST_0_i_2_n_0 ),
        .I1(\id_to_exe_bus[136]_INST_0_i_3_n_0 ),
        .O(\id_to_exe_bus[136]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFFF8BCF3F)) 
    \id_to_exe_bus[136]_INST_0_i_2 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_25_22[3]),
        .I2(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I3(op_25_22[0]),
        .I4(op_25_22[1]),
        .I5(op_25_22[2]),
        .O(\id_to_exe_bus[136]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEEAAAA)) 
    \id_to_exe_bus[136]_INST_0_i_3 
       (.I0(\id_to_exe_bus[136]_INST_0_i_4_n_0 ),
        .I1(\id_to_exe_bus[149]_INST_0_i_1_n_0 ),
        .I2(op_19_15[3]),
        .I3(op_19_15[4]),
        .I4(\id_to_exe_bus[153]_INST_0_i_2_n_0 ),
        .I5(\id_to_exe_bus[136]_INST_0_i_5_n_0 ),
        .O(\id_to_exe_bus[136]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00008C84)) 
    \id_to_exe_bus[136]_INST_0_i_4 
       (.I0(op_25_22[2]),
        .I1(op_25_22[3]),
        .I2(op_25_22[1]),
        .I3(op_25_22[0]),
        .I4(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[136]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h000A0802)) 
    \id_to_exe_bus[136]_INST_0_i_5 
       (.I0(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I1(op_25_22[0]),
        .I2(op_25_22[1]),
        .I3(op_25_22[3]),
        .I4(op_25_22[2]),
        .O(\id_to_exe_bus[136]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \id_to_exe_bus[137]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(\id_to_exe_bus[137]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[137]_INST_0_i_2_n_0 ),
        .I3(\id_data_reg_n_0_[27] ),
        .I4(\id_data_reg_n_0_[28] ),
        .I5(op_25_22[3]),
        .O(id_to_exe_bus[137]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \id_to_exe_bus[137]_INST_0_i_1 
       (.I0(\id_data_reg_n_0_[31] ),
        .I1(\id_data_reg_n_0_[30] ),
        .I2(\id_data_reg_n_0_[29] ),
        .I3(\id_data_reg_n_0_[28] ),
        .I4(\id_data_reg_n_0_[27] ),
        .I5(\id_data_reg_n_0_[26] ),
        .O(\id_to_exe_bus[137]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \id_to_exe_bus[137]_INST_0_i_2 
       (.I0(\id_data_reg_n_0_[29] ),
        .I1(\id_data_reg_n_0_[31] ),
        .I2(\id_data_reg_n_0_[30] ),
        .O(\id_to_exe_bus[137]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0044004C)) 
    \id_to_exe_bus[138]_INST_0 
       (.I0(op_25_22[1]),
        .I1(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I2(op_25_22[0]),
        .I3(op_25_22[2]),
        .I4(op_25_22[3]),
        .O(id_to_exe_bus[138]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFDFD)) 
    \id_to_exe_bus[139]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[139]_INST_0_i_2_n_0 ),
        .I2(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I3(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .I4(\id_data_reg_n_0_[26] ),
        .I5(\id_to_exe_bus[139]_INST_0_i_5_n_0 ),
        .O(id_to_exe_bus[139]));
  LUT6 #(
    .INIT(64'hFFC0E0C0FFFFEFFF)) 
    \id_to_exe_bus[139]_INST_0_i_1 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_25_22[2]),
        .I2(op_25_22[3]),
        .I3(op_25_22[1]),
        .I4(op_25_22[0]),
        .I5(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .O(\id_to_exe_bus[139]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \id_to_exe_bus[139]_INST_0_i_2 
       (.I0(op_19_15[1]),
        .I1(op_19_15[4]),
        .I2(op_19_15[3]),
        .I3(op_19_15[2]),
        .I4(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[139]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \id_to_exe_bus[139]_INST_0_i_3 
       (.I0(\id_data_reg_n_0_[31] ),
        .I1(\id_data_reg_n_0_[30] ),
        .I2(\id_data_reg_n_0_[29] ),
        .I3(\id_data_reg_n_0_[26] ),
        .I4(\id_data_reg_n_0_[28] ),
        .I5(\id_data_reg_n_0_[27] ),
        .O(\id_to_exe_bus[139]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \id_to_exe_bus[139]_INST_0_i_4 
       (.I0(\id_data_reg_n_0_[27] ),
        .I1(\id_data_reg_n_0_[28] ),
        .I2(\id_data_reg_n_0_[29] ),
        .I3(\id_data_reg_n_0_[30] ),
        .I4(\id_data_reg_n_0_[31] ),
        .O(\id_to_exe_bus[139]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \id_to_exe_bus[139]_INST_0_i_5 
       (.I0(op_25_22[3]),
        .I1(\id_data_reg_n_0_[28] ),
        .I2(\id_data_reg_n_0_[27] ),
        .I3(\id_data_reg_n_0_[30] ),
        .I4(\id_data_reg_n_0_[31] ),
        .I5(\id_data_reg_n_0_[29] ),
        .O(\id_to_exe_bus[139]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \id_to_exe_bus[140]_INST_0 
       (.I0(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I1(op_19_15[2]),
        .I2(op_19_15[1]),
        .I3(op_19_15[3]),
        .I4(op_19_15[4]),
        .O(id_to_exe_bus[140]));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \id_to_exe_bus[141]_INST_0 
       (.I0(op_19_15[3]),
        .I1(op_19_15[4]),
        .I2(op_19_15[1]),
        .I3(op_19_15[2]),
        .I4(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I5(\id_to_exe_bus[141]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[141]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \id_to_exe_bus[141]_INST_0_i_1 
       (.I0(op_25_22[0]),
        .I1(op_25_22[1]),
        .I2(op_25_22[3]),
        .I3(op_25_22[2]),
        .I4(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[141]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \id_to_exe_bus[142]_INST_0 
       (.I0(op_19_15[3]),
        .I1(op_19_15[4]),
        .I2(op_19_15[1]),
        .I3(op_19_15[2]),
        .I4(\id_to_exe_bus[155]_INST_0_i_1_n_0 ),
        .I5(\id_to_exe_bus[142]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[142]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \id_to_exe_bus[142]_INST_0_i_1 
       (.I0(op_25_22[2]),
        .I1(op_25_22[3]),
        .I2(op_25_22[1]),
        .I3(op_25_22[0]),
        .I4(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[142]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888F8888888888)) 
    \id_to_exe_bus[143]_INST_0 
       (.I0(\id_to_exe_bus[143]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[155]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I3(op_25_22[0]),
        .I4(op_25_22[1]),
        .I5(\id_to_exe_bus[146]_INST_0_i_3_n_0 ),
        .O(id_to_exe_bus[143]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \id_to_exe_bus[143]_INST_0_i_1 
       (.I0(op_19_15[2]),
        .I1(op_19_15[1]),
        .I2(op_19_15[3]),
        .I3(op_19_15[4]),
        .O(\id_to_exe_bus[143]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \id_to_exe_bus[144]_INST_0 
       (.I0(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I1(op_19_15[4]),
        .I2(op_19_15[3]),
        .I3(op_19_15[1]),
        .I4(op_19_15[2]),
        .O(id_to_exe_bus[144]));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    \id_to_exe_bus[145]_INST_0 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(\id_to_exe_bus[146]_INST_0_i_3_n_0 ),
        .I2(op_25_22[1]),
        .I3(op_25_22[0]),
        .I4(\id_to_exe_bus[146]_INST_0_i_1_n_0 ),
        .I5(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[145]));
  LUT6 #(
    .INIT(64'h4F44444444444444)) 
    \id_to_exe_bus[146]_INST_0 
       (.I0(\id_to_exe_bus[146]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[155]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I3(\id_to_exe_bus[146]_INST_0_i_3_n_0 ),
        .I4(op_25_22[1]),
        .I5(op_25_22[0]),
        .O(id_to_exe_bus[146]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \id_to_exe_bus[146]_INST_0_i_1 
       (.I0(op_19_15[1]),
        .I1(op_19_15[2]),
        .I2(op_19_15[3]),
        .I3(op_19_15[4]),
        .O(\id_to_exe_bus[146]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \id_to_exe_bus[146]_INST_0_i_2 
       (.I0(\id_data_reg_n_0_[30] ),
        .I1(\id_data_reg_n_0_[31] ),
        .I2(\id_data_reg_n_0_[29] ),
        .I3(\id_data_reg_n_0_[28] ),
        .I4(\id_data_reg_n_0_[26] ),
        .I5(\id_data_reg_n_0_[27] ),
        .O(\id_to_exe_bus[146]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \id_to_exe_bus[146]_INST_0_i_3 
       (.I0(op_25_22[3]),
        .I1(op_25_22[2]),
        .O(\id_to_exe_bus[146]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000000C)) 
    \id_to_exe_bus[147]_INST_0 
       (.I0(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I1(\id_to_exe_bus[149]_INST_0_i_1_n_0 ),
        .I2(op_19_15[2]),
        .I3(op_19_15[3]),
        .I4(op_19_15[4]),
        .I5(op_19_15[1]),
        .O(id_to_exe_bus[147]));
  LUT6 #(
    .INIT(64'h0000830000008000)) 
    \id_to_exe_bus[148]_INST_0 
       (.I0(\id_to_exe_bus[155]_INST_0_i_1_n_0 ),
        .I1(op_19_15[2]),
        .I2(op_19_15[1]),
        .I3(op_19_15[3]),
        .I4(op_19_15[4]),
        .I5(\id_to_exe_bus[149]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[148]));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    \id_to_exe_bus[149]_INST_0 
       (.I0(\id_to_exe_bus[149]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I2(op_19_15[4]),
        .I3(op_19_15[3]),
        .I4(op_19_15[1]),
        .I5(op_19_15[2]),
        .O(id_to_exe_bus[149]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \id_to_exe_bus[149]_INST_0_i_1 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_21_20[0]),
        .I2(\id_to_exe_bus[149]_INST_0_i_2_n_0 ),
        .I3(op_19_15[0]),
        .I4(op_21_20[1]),
        .I5(\id_to_exe_bus[157]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[149]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \id_to_exe_bus[149]_INST_0_i_2 
       (.I0(op_25_22[1]),
        .I1(op_25_22[0]),
        .O(\id_to_exe_bus[149]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \id_to_exe_bus[150]_INST_0 
       (.I0(\id_data_reg_n_0_[27] ),
        .I1(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[150]));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \id_to_exe_bus[150]_INST_0_i_1 
       (.I0(\id_data_reg_n_0_[30] ),
        .I1(\id_data_reg_n_0_[31] ),
        .I2(\id_data_reg_n_0_[29] ),
        .I3(\id_data_reg_n_0_[26] ),
        .I4(op_25_22[3]),
        .I5(\id_data_reg_n_0_[28] ),
        .O(\id_to_exe_bus[150]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3333333B3333333)) 
    \id_to_exe_bus[153]_INST_0 
       (.I0(\id_to_exe_bus[155]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[153]_INST_0_i_1_n_0 ),
        .I2(op_19_15[3]),
        .I3(op_19_15[4]),
        .I4(\id_to_exe_bus[153]_INST_0_i_2_n_0 ),
        .I5(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[151]));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \id_to_exe_bus[153]_INST_0_i_1 
       (.I0(\id_to_exe_bus[153]_INST_0_i_3_n_0 ),
        .I1(\id_to_exe_bus[155]_INST_0_i_3_n_0 ),
        .I2(op_21_20[1]),
        .I3(op_21_20[0]),
        .I4(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[153]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \id_to_exe_bus[153]_INST_0_i_2 
       (.I0(op_19_15[1]),
        .I1(op_19_15[2]),
        .O(\id_to_exe_bus[153]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \id_to_exe_bus[153]_INST_0_i_3 
       (.I0(op_19_15[2]),
        .I1(op_19_15[3]),
        .I2(op_19_15[4]),
        .I3(op_19_15[1]),
        .O(\id_to_exe_bus[153]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \id_to_exe_bus[154]_INST_0 
       (.I0(op_19_15[3]),
        .I1(op_19_15[4]),
        .I2(op_19_15[1]),
        .I3(op_19_15[2]),
        .I4(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[152]));
  LUT6 #(
    .INIT(64'h0E00000002000000)) 
    \id_to_exe_bus[155]_INST_0 
       (.I0(\id_to_exe_bus[155]_INST_0_i_1_n_0 ),
        .I1(op_19_15[1]),
        .I2(op_19_15[2]),
        .I3(op_19_15[4]),
        .I4(op_19_15[3]),
        .I5(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[153]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \id_to_exe_bus[155]_INST_0_i_1 
       (.I0(op_19_15[0]),
        .I1(\id_to_exe_bus[155]_INST_0_i_3_n_0 ),
        .I2(op_21_20[0]),
        .I3(op_21_20[1]),
        .I4(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[155]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \id_to_exe_bus[155]_INST_0_i_2 
       (.I0(op_19_15[0]),
        .I1(\id_to_exe_bus[155]_INST_0_i_3_n_0 ),
        .I2(op_21_20[0]),
        .I3(op_21_20[1]),
        .I4(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[155]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \id_to_exe_bus[155]_INST_0_i_3 
       (.I0(op_25_22[2]),
        .I1(op_25_22[3]),
        .I2(op_25_22[1]),
        .I3(op_25_22[0]),
        .O(\id_to_exe_bus[155]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \id_to_exe_bus[156]_INST_0 
       (.I0(op_19_15[0]),
        .I1(op_19_15[2]),
        .I2(op_19_15[3]),
        .I3(op_19_15[4]),
        .I4(\id_to_exe_bus[157]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[154]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \id_to_exe_bus[157]_INST_0 
       (.I0(op_19_15[2]),
        .I1(op_19_15[3]),
        .I2(op_19_15[4]),
        .I3(op_19_15[0]),
        .I4(\id_to_exe_bus[157]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[155]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \id_to_exe_bus[157]_INST_0_i_1 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_21_20[0]),
        .I2(op_21_20[1]),
        .I3(\id_to_exe_bus[157]_INST_0_i_2_n_0 ),
        .I4(op_25_22[1]),
        .I5(op_25_22[0]),
        .O(\id_to_exe_bus[157]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \id_to_exe_bus[157]_INST_0_i_2 
       (.I0(op_25_22[3]),
        .I1(op_25_22[2]),
        .O(\id_to_exe_bus[157]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    \id_to_exe_bus[158]_INST_0 
       (.I0(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I1(op_25_22[0]),
        .I2(op_25_22[1]),
        .I3(op_25_22[3]),
        .I4(op_25_22[2]),
        .O(id_to_exe_bus[156]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    \id_to_exe_bus[159]_INST_0 
       (.I0(op_25_22[1]),
        .I1(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I2(op_25_22[0]),
        .I3(op_25_22[2]),
        .I4(op_25_22[3]),
        .O(id_to_exe_bus[157]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \id_to_exe_bus[160]_INST_0 
       (.I0(op_25_22[2]),
        .I1(op_25_22[3]),
        .I2(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I3(op_25_22[1]),
        .O(id_to_exe_bus[158]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \id_to_exe_bus[160]_INST_0_i_1 
       (.I0(\id_data_reg_n_0_[31] ),
        .I1(\id_data_reg_n_0_[30] ),
        .I2(\id_data_reg_n_0_[26] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[28] ),
        .I5(\id_data_reg_n_0_[27] ),
        .O(\id_to_exe_bus[160]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \id_to_exe_bus[63]_INST_0_i_1 
       (.I0(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .I1(raddr2[2]),
        .I2(mem_to_id_bus[34]),
        .I3(mem_to_id_bus[36]),
        .I4(raddr2[4]),
        .I5(\id_to_exe_bus[63]_INST_0_i_6_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    \id_to_exe_bus[63]_INST_0_i_10 
       (.I0(raddr2[1]),
        .I1(raddr2[4]),
        .I2(raddr2[3]),
        .I3(\id_to_exe_bus[63]_INST_0_i_22_n_0 ),
        .I4(\id_to_exe_bus[63]_INST_0_i_7_n_0 ),
        .I5(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \id_to_exe_bus[63]_INST_0_i_11 
       (.I0(exe_to_id_bus[36]),
        .I1(\id_data_reg_n_0_[4] ),
        .I2(u_regfile_n_181),
        .I3(p_10_in[4]),
        .O(\id_to_exe_bus[63]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \id_to_exe_bus[63]_INST_0_i_12 
       (.I0(raddr2[0]),
        .I1(exe_to_id_bus[32]),
        .I2(exe_to_id_bus[34]),
        .I3(raddr2[2]),
        .I4(exe_to_id_bus[33]),
        .I5(raddr2[1]),
        .O(\id_to_exe_bus[63]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \id_to_exe_bus[63]_INST_0_i_13 
       (.I0(op_19_15[1]),
        .I1(op_19_15[2]),
        .I2(op_19_15[4]),
        .I3(op_19_15[3]),
        .I4(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I5(\id_to_exe_bus[95]_INST_0_i_17_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \id_to_exe_bus[63]_INST_0_i_14 
       (.I0(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I1(op_19_15[2]),
        .I2(op_19_15[3]),
        .I3(op_19_15[4]),
        .O(\id_to_exe_bus[63]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \id_to_exe_bus[63]_INST_0_i_15 
       (.I0(op_25_22[1]),
        .I1(op_25_22[2]),
        .I2(op_25_22[3]),
        .I3(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I4(u_regfile_n_182),
        .O(\id_to_exe_bus[63]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \id_to_exe_bus[63]_INST_0_i_16 
       (.I0(mem_to_id_bus[32]),
        .I1(\id_data_reg_n_0_[0] ),
        .I2(u_regfile_n_181),
        .I3(p_10_in[0]),
        .O(\id_to_exe_bus[63]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h47B8FFFF)) 
    \id_to_exe_bus[63]_INST_0_i_17 
       (.I0(p_10_in[3]),
        .I1(u_regfile_n_181),
        .I2(\id_data_reg_n_0_[3] ),
        .I3(exe_to_id_bus[35]),
        .I4(exe_to_id_bus[37]),
        .O(\id_to_exe_bus[63]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \id_to_exe_bus[63]_INST_0_i_18 
       (.I0(exe_to_id_bus[32]),
        .I1(\id_data_reg_n_0_[0] ),
        .I2(u_regfile_n_181),
        .I3(p_10_in[0]),
        .O(\id_to_exe_bus[63]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \id_to_exe_bus[63]_INST_0_i_19 
       (.I0(exe_to_id_bus[34]),
        .I1(\id_data_reg_n_0_[2] ),
        .I2(u_regfile_n_181),
        .I3(p_10_in[2]),
        .O(\id_to_exe_bus[63]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002002)) 
    \id_to_exe_bus[63]_INST_0_i_2 
       (.I0(\id_to_exe_bus[63]_INST_0_i_7_n_0 ),
        .I1(\id_to_exe_bus[63]_INST_0_i_6_n_0 ),
        .I2(raddr2[4]),
        .I3(mem_to_id_bus[36]),
        .I4(\id_to_exe_bus[63]_INST_0_i_8_n_0 ),
        .I5(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \id_to_exe_bus[63]_INST_0_i_20 
       (.I0(raddr2[1]),
        .I1(wb_to_rf_bus[33]),
        .I2(raddr2[4]),
        .I3(wb_to_rf_bus[36]),
        .O(\id_to_exe_bus[63]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h7D7D7DFF)) 
    \id_to_exe_bus[63]_INST_0_i_21 
       (.I0(wb_to_rf_bus[37]),
        .I1(raddr2[2]),
        .I2(wb_to_rf_bus[34]),
        .I3(wb_to_rf_bus[32]),
        .I4(\id_to_exe_bus[63]_INST_0_i_23_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \id_to_exe_bus[63]_INST_0_i_22 
       (.I0(\id_data_reg_n_0_[0] ),
        .I1(p_10_in[0]),
        .I2(\id_data_reg_n_0_[2] ),
        .I3(u_regfile_n_181),
        .I4(p_10_in[2]),
        .O(\id_to_exe_bus[63]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \id_to_exe_bus[63]_INST_0_i_23 
       (.I0(p_10_in[0]),
        .I1(u_regfile_n_181),
        .I2(\id_data_reg_n_0_[0] ),
        .O(\id_to_exe_bus[63]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFD)) 
    \id_to_exe_bus[63]_INST_0_i_4 
       (.I0(exe_to_id_bus[37]),
        .I1(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .I2(\id_to_exe_bus[63]_INST_0_i_11_n_0 ),
        .I3(\id_to_exe_bus[63]_INST_0_i_12_n_0 ),
        .I4(exe_to_id_bus[35]),
        .I5(raddr2[3]),
        .O(\id_to_exe_bus[63]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \id_to_exe_bus[63]_INST_0_i_5 
       (.I0(\id_to_exe_bus[63]_INST_0_i_13_n_0 ),
        .I1(\id_to_exe_bus[95]_INST_0_i_18_n_0 ),
        .I2(\id_to_exe_bus[95]_INST_0_i_11_n_0 ),
        .I3(id_to_exe_bus[151]),
        .I4(\id_to_exe_bus[63]_INST_0_i_14_n_0 ),
        .I5(\id_to_exe_bus[63]_INST_0_i_15_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6FF6FFFF)) 
    \id_to_exe_bus[63]_INST_0_i_6 
       (.I0(mem_to_id_bus[35]),
        .I1(raddr2[3]),
        .I2(raddr2[1]),
        .I3(mem_to_id_bus[33]),
        .I4(mem_to_id_bus[37]),
        .I5(\id_to_exe_bus[63]_INST_0_i_16_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFE)) 
    \id_to_exe_bus[63]_INST_0_i_7 
       (.I0(\id_to_exe_bus[63]_INST_0_i_17_n_0 ),
        .I1(\id_to_exe_bus[63]_INST_0_i_11_n_0 ),
        .I2(\id_to_exe_bus[63]_INST_0_i_18_n_0 ),
        .I3(\id_to_exe_bus[63]_INST_0_i_19_n_0 ),
        .I4(exe_to_id_bus[33]),
        .I5(raddr2[1]),
        .O(\id_to_exe_bus[63]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \id_to_exe_bus[63]_INST_0_i_8 
       (.I0(mem_to_id_bus[34]),
        .I1(raddr2[2]),
        .O(\id_to_exe_bus[63]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009099)) 
    \id_to_exe_bus[63]_INST_0_i_9 
       (.I0(wb_to_rf_bus[35]),
        .I1(raddr2[3]),
        .I2(raddr2[0]),
        .I3(wb_to_rf_bus[32]),
        .I4(\id_to_exe_bus[63]_INST_0_i_20_n_0 ),
        .I5(\id_to_exe_bus[63]_INST_0_i_21_n_0 ),
        .O(\id_to_exe_bus[63]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \id_to_exe_bus[94]_INST_0_i_2 
       (.I0(\id_to_exe_bus[95]_INST_0_i_8_n_0 ),
        .I1(\id_to_exe_bus[136]_INST_0_i_3_n_0 ),
        .I2(\id_to_exe_bus[95]_INST_0_i_7_n_0 ),
        .I3(id_to_exe_bus[151]),
        .I4(\id_to_exe_bus[95]_INST_0_i_11_n_0 ),
        .I5(\id_to_exe_bus[95]_INST_0_i_12_n_0 ),
        .O(\id_to_exe_bus[94]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \id_to_exe_bus[95]_INST_0_i_1 
       (.I0(\id_to_exe_bus[95]_INST_0_i_5_n_0 ),
        .I1(\id_to_exe_bus[95]_INST_0_i_6_n_0 ),
        .I2(id_to_exe_bus[151]),
        .I3(\id_to_exe_bus[95]_INST_0_i_7_n_0 ),
        .I4(\id_to_exe_bus[136]_INST_0_i_3_n_0 ),
        .I5(\id_to_exe_bus[95]_INST_0_i_8_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF6FFFFF6FFFFFFFF)) 
    \id_to_exe_bus[95]_INST_0_i_10 
       (.I0(wb_to_rf_bus[36]),
        .I1(rf_raddr1[4]),
        .I2(\id_to_exe_bus[95]_INST_0_i_25_n_0 ),
        .I3(rf_raddr1[3]),
        .I4(wb_to_rf_bus[35]),
        .I5(wb_to_rf_bus[37]),
        .O(\id_to_exe_bus[95]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03070F0F)) 
    \id_to_exe_bus[95]_INST_0_i_11 
       (.I0(\id_to_exe_bus[95]_INST_0_i_26_n_0 ),
        .I1(\id_to_exe_bus[95]_INST_0_i_27_n_0 ),
        .I2(\id_to_exe_bus[95]_INST_0_i_28_n_0 ),
        .I3(op_19_15[0]),
        .I4(\id_to_exe_bus[95]_INST_0_i_29_n_0 ),
        .I5(\id_to_exe_bus[95]_INST_0_i_19_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEFEEEEEEEEE)) 
    \id_to_exe_bus[95]_INST_0_i_12 
       (.I0(\id_to_exe_bus[95]_INST_0_i_18_n_0 ),
        .I1(\id_to_exe_bus[95]_INST_0_i_17_n_0 ),
        .I2(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I3(\id_to_exe_bus[95]_INST_0_i_30_n_0 ),
        .I4(op_19_15[2]),
        .I5(op_19_15[1]),
        .O(\id_to_exe_bus[95]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \id_to_exe_bus[95]_INST_0_i_13 
       (.I0(exe_to_id_bus[35]),
        .I1(rf_raddr1[3]),
        .I2(\id_to_exe_bus[95]_INST_0_i_31_n_0 ),
        .I3(rf_raddr1[4]),
        .I4(exe_to_id_bus[36]),
        .O(\id_to_exe_bus[95]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \id_to_exe_bus[95]_INST_0_i_14 
       (.I0(\id_to_exe_bus[95]_INST_0_i_12_n_0 ),
        .I1(\id_to_exe_bus[95]_INST_0_i_11_n_0 ),
        .I2(id_to_exe_bus[151]),
        .I3(\id_to_exe_bus[95]_INST_0_i_32_n_0 ),
        .I4(\id_to_exe_bus[95]_INST_0_i_23_n_0 ),
        .I5(\id_to_exe_bus[136]_INST_0_i_3_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \id_to_exe_bus[95]_INST_0_i_15 
       (.I0(mem_to_id_bus[34]),
        .I1(rf_raddr1[2]),
        .I2(rf_raddr1[0]),
        .I3(mem_to_id_bus[32]),
        .I4(rf_raddr1[4]),
        .I5(mem_to_id_bus[36]),
        .O(\id_to_exe_bus[95]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \id_to_exe_bus[95]_INST_0_i_16 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_21_20[1]),
        .I2(op_21_20[0]),
        .I3(\id_to_exe_bus[155]_INST_0_i_3_n_0 ),
        .I4(op_19_15[0]),
        .I5(\id_to_exe_bus[95]_INST_0_i_33_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \id_to_exe_bus[95]_INST_0_i_17 
       (.I0(u_regfile_n_183),
        .I1(op_25_22[1]),
        .I2(op_25_22[0]),
        .I3(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I4(op_25_22[3]),
        .I5(op_25_22[2]),
        .O(\id_to_exe_bus[95]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \id_to_exe_bus[95]_INST_0_i_18 
       (.I0(\id_to_exe_bus[155]_INST_0_i_3_n_0 ),
        .I1(op_21_20[1]),
        .I2(op_21_20[0]),
        .I3(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I4(\id_to_exe_bus[95]_INST_0_i_22_n_0 ),
        .I5(op_19_15[0]),
        .O(\id_to_exe_bus[95]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \id_to_exe_bus[95]_INST_0_i_19 
       (.I0(\id_to_exe_bus[155]_INST_0_i_3_n_0 ),
        .I1(op_21_20[1]),
        .I2(op_21_20[0]),
        .I3(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I4(op_19_15[0]),
        .I5(\id_to_exe_bus[95]_INST_0_i_22_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \id_to_exe_bus[95]_INST_0_i_20 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_21_20[1]),
        .I2(op_21_20[0]),
        .I3(\id_to_exe_bus[155]_INST_0_i_3_n_0 ),
        .I4(op_19_15[0]),
        .I5(\id_to_exe_bus[95]_INST_0_i_29_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DDDF)) 
    \id_to_exe_bus[95]_INST_0_i_21 
       (.I0(\id_to_exe_bus[95]_INST_0_i_34_n_0 ),
        .I1(\id_to_exe_bus[143]_INST_0_i_1_n_0 ),
        .I2(\id_to_exe_bus[95]_INST_0_i_35_n_0 ),
        .I3(op_19_15[0]),
        .I4(\id_to_exe_bus[95]_INST_0_i_36_n_0 ),
        .I5(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \id_to_exe_bus[95]_INST_0_i_22 
       (.I0(op_19_15[4]),
        .I1(op_19_15[3]),
        .I2(op_19_15[1]),
        .I3(op_19_15[2]),
        .O(\id_to_exe_bus[95]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0013001003300000)) 
    \id_to_exe_bus[95]_INST_0_i_23 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_25_22[2]),
        .I2(op_25_22[1]),
        .I3(op_25_22[0]),
        .I4(\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .I5(op_25_22[3]),
        .O(\id_to_exe_bus[95]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \id_to_exe_bus[95]_INST_0_i_24 
       (.I0(exe_to_id_bus[34]),
        .I1(rf_raddr1[2]),
        .I2(rf_raddr1[4]),
        .I3(exe_to_id_bus[36]),
        .I4(rf_raddr1[0]),
        .I5(exe_to_id_bus[32]),
        .O(\id_to_exe_bus[95]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \id_to_exe_bus[95]_INST_0_i_25 
       (.I0(wb_to_rf_bus[32]),
        .I1(rf_raddr1[0]),
        .I2(rf_raddr1[1]),
        .I3(wb_to_rf_bus[33]),
        .I4(rf_raddr1[2]),
        .I5(wb_to_rf_bus[34]),
        .O(\id_to_exe_bus[95]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \id_to_exe_bus[95]_INST_0_i_26 
       (.I0(op_19_15[2]),
        .I1(op_19_15[1]),
        .I2(op_19_15[3]),
        .I3(op_19_15[4]),
        .O(\id_to_exe_bus[95]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hBFBB)) 
    \id_to_exe_bus[95]_INST_0_i_27 
       (.I0(op_19_15[4]),
        .I1(op_19_15[3]),
        .I2(op_19_15[1]),
        .I3(op_19_15[2]),
        .O(\id_to_exe_bus[95]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \id_to_exe_bus[95]_INST_0_i_28 
       (.I0(\id_to_exe_bus[146]_INST_0_i_2_n_0 ),
        .I1(op_21_20[1]),
        .I2(op_21_20[0]),
        .I3(\id_to_exe_bus[157]_INST_0_i_2_n_0 ),
        .I4(op_25_22[1]),
        .I5(op_25_22[0]),
        .O(\id_to_exe_bus[95]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \id_to_exe_bus[95]_INST_0_i_29 
       (.I0(op_19_15[3]),
        .I1(op_19_15[4]),
        .I2(op_19_15[1]),
        .I3(op_19_15[2]),
        .O(\id_to_exe_bus[95]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \id_to_exe_bus[95]_INST_0_i_3 
       (.I0(\id_to_exe_bus[136]_INST_0_i_3_n_0 ),
        .I1(\id_to_exe_bus[95]_INST_0_i_7_n_0 ),
        .I2(id_to_exe_bus[151]),
        .I3(\id_to_exe_bus[95]_INST_0_i_11_n_0 ),
        .I4(\id_to_exe_bus[95]_INST_0_i_12_n_0 ),
        .I5(\id_to_exe_bus[95]_INST_0_i_5_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \id_to_exe_bus[95]_INST_0_i_30 
       (.I0(op_19_15[3]),
        .I1(op_19_15[4]),
        .O(\id_to_exe_bus[95]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \id_to_exe_bus[95]_INST_0_i_31 
       (.I0(exe_to_id_bus[32]),
        .I1(rf_raddr1[0]),
        .I2(rf_raddr1[2]),
        .I3(exe_to_id_bus[34]),
        .I4(rf_raddr1[1]),
        .I5(exe_to_id_bus[33]),
        .O(\id_to_exe_bus[95]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \id_to_exe_bus[95]_INST_0_i_32 
       (.I0(\id_to_exe_bus[95]_INST_0_i_37_n_0 ),
        .I1(op_19_15[4]),
        .I2(op_19_15[3]),
        .I3(op_19_15[2]),
        .I4(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \id_to_exe_bus[95]_INST_0_i_33 
       (.I0(op_19_15[1]),
        .I1(op_19_15[2]),
        .I2(op_19_15[4]),
        .I3(op_19_15[3]),
        .O(\id_to_exe_bus[95]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \id_to_exe_bus[95]_INST_0_i_34 
       (.I0(op_19_15[3]),
        .I1(op_19_15[4]),
        .I2(op_19_15[1]),
        .O(\id_to_exe_bus[95]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFED)) 
    \id_to_exe_bus[95]_INST_0_i_35 
       (.I0(op_19_15[2]),
        .I1(op_19_15[1]),
        .I2(op_19_15[4]),
        .I3(op_19_15[3]),
        .O(\id_to_exe_bus[95]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \id_to_exe_bus[95]_INST_0_i_36 
       (.I0(op_25_22[0]),
        .I1(op_25_22[1]),
        .I2(op_25_22[3]),
        .I3(op_25_22[2]),
        .I4(op_21_20[0]),
        .I5(op_21_20[1]),
        .O(\id_to_exe_bus[95]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000F0800000000)) 
    \id_to_exe_bus[95]_INST_0_i_37 
       (.I0(\id_data_reg_n_0_[27] ),
        .I1(\id_data_reg_n_0_[26] ),
        .I2(\id_data_reg_n_0_[28] ),
        .I3(\id_data_reg_n_0_[29] ),
        .I4(\id_data_reg_n_0_[31] ),
        .I5(\id_data_reg_n_0_[30] ),
        .O(\id_to_exe_bus[95]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \id_to_exe_bus[95]_INST_0_i_4 
       (.I0(exe_to_id_bus[31]),
        .I1(\id_to_exe_bus[95]_INST_0_i_13_n_0 ),
        .I2(\id_to_exe_bus[95]_INST_0_i_14_n_0 ),
        .I3(exe_to_id_bus[37]),
        .O(\id_to_exe_bus[95]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF6FFFFF6FFFFFFFF)) 
    \id_to_exe_bus[95]_INST_0_i_5 
       (.I0(mem_to_id_bus[33]),
        .I1(rf_raddr1[1]),
        .I2(\id_to_exe_bus[95]_INST_0_i_15_n_0 ),
        .I3(mem_to_id_bus[35]),
        .I4(rf_raddr1[3]),
        .I5(mem_to_id_bus[37]),
        .O(\id_to_exe_bus[95]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \id_to_exe_bus[95]_INST_0_i_6 
       (.I0(\id_to_exe_bus[95]_INST_0_i_16_n_0 ),
        .I1(\id_to_exe_bus[95]_INST_0_i_17_n_0 ),
        .I2(\id_to_exe_bus[95]_INST_0_i_18_n_0 ),
        .I3(\id_to_exe_bus[95]_INST_0_i_19_n_0 ),
        .I4(\id_to_exe_bus[95]_INST_0_i_20_n_0 ),
        .I5(\id_to_exe_bus[95]_INST_0_i_21_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFC4)) 
    \id_to_exe_bus[95]_INST_0_i_7 
       (.I0(\id_to_exe_bus[95]_INST_0_i_22_n_0 ),
        .I1(\id_to_exe_bus[155]_INST_0_i_2_n_0 ),
        .I2(\id_to_exe_bus[153]_INST_0_i_3_n_0 ),
        .I3(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I4(u_regfile_n_182),
        .I5(\id_to_exe_bus[95]_INST_0_i_23_n_0 ),
        .O(\id_to_exe_bus[95]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0900000900000000)) 
    \id_to_exe_bus[95]_INST_0_i_8 
       (.I0(exe_to_id_bus[33]),
        .I1(rf_raddr1[1]),
        .I2(\id_to_exe_bus[95]_INST_0_i_24_n_0 ),
        .I3(exe_to_id_bus[35]),
        .I4(rf_raddr1[3]),
        .I5(exe_to_id_bus[37]),
        .O(\id_to_exe_bus[95]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \id_to_exe_bus[95]_INST_0_i_9 
       (.I0(rf_raddr1[1]),
        .I1(rf_raddr1[0]),
        .I2(rf_raddr1[3]),
        .I3(rf_raddr1[4]),
        .I4(rf_raddr1[2]),
        .O(\id_to_exe_bus[95]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_to_exe_bus[96]_INST_0 
       (.I0(p_10_in[0]),
        .I1(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[96]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_to_exe_bus[97]_INST_0 
       (.I0(p_10_in[1]),
        .I1(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .O(id_to_exe_bus[97]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[98]_INST_0 
       (.I0(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .I1(p_10_in[2]),
        .I2(rf_raddr1[0]),
        .I3(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .I4(p_10_in[0]),
        .I5(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[98]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \id_to_exe_bus[99]_INST_0 
       (.I0(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .I1(p_10_in[3]),
        .I2(p_10_in[1]),
        .I3(\id_to_exe_bus[107]_INST_0_i_2_n_0 ),
        .I4(rf_raddr1[1]),
        .I5(\id_to_exe_bus[116]_INST_0_i_2_n_0 ),
        .O(id_to_exe_bus[99]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    id_to_exe_valid_INST_0
       (.I0(id_valid),
        .I1(id_allowin_INST_0_i_1_n_0),
        .O(id_to_exe_valid));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[0]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry_n_7),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[0]),
        .O(id_to_if_bus[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[10]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__1_n_5),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[10]),
        .O(id_to_if_bus[10]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[11]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__1_n_4),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[11]),
        .O(id_to_if_bus[11]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[12]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__2_n_7),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[12]),
        .O(id_to_if_bus[12]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[13]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__2_n_6),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[13]),
        .O(id_to_if_bus[13]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[14]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__2_n_5),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[14]),
        .O(id_to_if_bus[14]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[15]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__2_n_4),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[15]),
        .O(id_to_if_bus[15]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[16]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__3_n_7),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[16]),
        .O(id_to_if_bus[16]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[17]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__3_n_6),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[17]),
        .O(id_to_if_bus[17]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[18]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__3_n_5),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[18]),
        .O(id_to_if_bus[18]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[19]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__3_n_4),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[19]),
        .O(id_to_if_bus[19]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[1]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry_n_6),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[1]),
        .O(id_to_if_bus[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[20]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__4_n_7),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[20]),
        .O(id_to_if_bus[20]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[21]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__4_n_6),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[21]),
        .O(id_to_if_bus[21]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[22]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__4_n_5),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[22]),
        .O(id_to_if_bus[22]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[23]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__4_n_4),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[23]),
        .O(id_to_if_bus[23]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[24]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__5_n_7),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[24]),
        .O(id_to_if_bus[24]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[25]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__5_n_6),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[25]),
        .O(id_to_if_bus[25]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[26]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__5_n_5),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[26]),
        .O(id_to_if_bus[26]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[27]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__5_n_4),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[27]),
        .O(id_to_if_bus[27]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[2]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry_n_5),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[2]),
        .O(id_to_if_bus[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \id_to_if_bus[31]_INST_0_i_1 
       (.I0(\id_data_reg_n_0_[28] ),
        .I1(\id_data_reg_n_0_[29] ),
        .I2(\id_data_reg_n_0_[31] ),
        .I3(\id_data_reg_n_0_[30] ),
        .O(\id_to_if_bus[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD00D)) 
    \id_to_if_bus[32]_INST_0_i_10 
       (.I0(wb_to_rf_bus[32]),
        .I1(raddr2[0]),
        .I2(raddr2[3]),
        .I3(wb_to_rf_bus[35]),
        .O(\id_to_if_bus[32]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBEFFFFFFFFFFBEFF)) 
    \id_to_if_bus[32]_INST_0_i_12 
       (.I0(\id_to_exe_bus[63]_INST_0_i_18_n_0 ),
        .I1(exe_to_id_bus[36]),
        .I2(raddr2[4]),
        .I3(exe_to_id_bus[37]),
        .I4(exe_to_id_bus[35]),
        .I5(raddr2[3]),
        .O(\id_to_if_bus[32]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \id_to_if_bus[32]_INST_0_i_2 
       (.I0(\id_data_reg_n_0_[28] ),
        .I1(\id_data_reg_n_0_[29] ),
        .I2(\id_data_reg_n_0_[31] ),
        .I3(\id_data_reg_n_0_[30] ),
        .I4(\id_data_reg_n_0_[27] ),
        .O(\id_to_if_bus[32]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008AA0808)) 
    \id_to_if_bus[32]_INST_0_i_4 
       (.I0(exe_allowin),
        .I1(\id_to_exe_bus[122]_INST_0_i_3_n_0 ),
        .I2(mem_to_id_bus[38]),
        .I3(\id_to_exe_bus[63]_INST_0_i_2_n_0 ),
        .I4(\id_to_exe_bus[95]_INST_0_i_1_n_0 ),
        .I5(\id_to_if_bus[32]_INST_0_i_9_n_0 ),
        .O(\id_to_if_bus[32]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \id_to_if_bus[32]_INST_0_i_7 
       (.I0(\id_data_reg_n_0_[29] ),
        .I1(\id_data_reg_n_0_[30] ),
        .I2(\id_data_reg_n_0_[31] ),
        .O(\id_to_if_bus[32]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0002)) 
    \id_to_if_bus[32]_INST_0_i_9 
       (.I0(exe_to_id_bus[38]),
        .I1(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .I2(id_allowin_INST_0_i_4_n_0),
        .I3(\id_to_if_bus[32]_INST_0_i_12_n_0 ),
        .I4(\id_to_exe_bus[94]_INST_0_i_2_n_0 ),
        .O(\id_to_if_bus[32]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[3]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry_n_4),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[3]),
        .O(id_to_if_bus[3]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[4]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__0_n_7),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[4]),
        .O(id_to_if_bus[4]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[5]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__0_n_6),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[5]),
        .O(id_to_if_bus[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[6]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__0_n_5),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[6]),
        .O(id_to_if_bus[6]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[7]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__0_n_4),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[7]),
        .O(id_to_if_bus[7]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[8]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__1_n_7),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[8]),
        .O(id_to_if_bus[8]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[9]_INST_0 
       (.I0(\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .I1(br_target1_carry__1_n_6),
        .I2(\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .I3(br_target10_out[9]),
        .O(id_to_if_bus[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8A88AAAA)) 
    id_valid_i_2
       (.I0(id_valid),
        .I1(\id_to_if_bus[32]_INST_0_i_9_n_0 ),
        .I2(id_valid_i_5_n_0),
        .I3(id_allowin_INST_0_i_3_n_0),
        .I4(exe_allowin),
        .I5(if_to_id_valid),
        .O(id_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFDFDDDDFFFFFFFF)) 
    id_valid_i_3
       (.I0(id_valid),
        .I1(\id_to_if_bus[32]_INST_0_i_9_n_0 ),
        .I2(\id_to_exe_bus[95]_INST_0_i_1_n_0 ),
        .I3(\id_to_exe_bus[63]_INST_0_i_2_n_0 ),
        .I4(id_allowin_INST_0_i_3_n_0),
        .I5(exe_allowin),
        .O(id_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    id_valid_i_5
       (.I0(\id_to_exe_bus[95]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .I2(\id_to_exe_bus[63]_INST_0_i_8_n_0 ),
        .I3(id_valid_i_7_n_0),
        .I4(\id_to_exe_bus[63]_INST_0_i_6_n_0 ),
        .I5(\id_to_exe_bus[63]_INST_0_i_7_n_0 ),
        .O(id_valid_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000008200000000)) 
    id_valid_i_6
       (.I0(exe_to_id_bus[31]),
        .I1(raddr2[3]),
        .I2(exe_to_id_bus[35]),
        .I3(id_valid_i_8_n_0),
        .I4(\id_to_exe_bus[63]_INST_0_i_5_n_0 ),
        .I5(exe_to_id_bus[37]),
        .O(id_valid_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    id_valid_i_7
       (.I0(mem_to_id_bus[36]),
        .I1(raddr2[4]),
        .O(id_valid_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    id_valid_i_8
       (.I0(\id_to_exe_bus[63]_INST_0_i_11_n_0 ),
        .I1(raddr2[1]),
        .I2(exe_to_id_bus[33]),
        .I3(raddr2[2]),
        .I4(exe_to_id_bus[34]),
        .I5(\id_to_exe_bus[63]_INST_0_i_18_n_0 ),
        .O(id_valid_i_8_n_0));
  FDRE id_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_regfile_n_38),
        .Q(id_valid),
        .R(1'b0));
  CARRY4 rj_eq_rd_carry
       (.CI(1'b0),
        .CO({rj_eq_rd_carry_n_0,rj_eq_rd_carry_n_1,rj_eq_rd_carry_n_2,rj_eq_rd_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rj_eq_rd_carry_O_UNCONNECTED[3:0]),
        .S({u_regfile_n_39,u_regfile_n_40,u_regfile_n_41,u_regfile_n_42}));
  CARRY4 rj_eq_rd_carry__0
       (.CI(rj_eq_rd_carry_n_0),
        .CO({rj_eq_rd_carry__0_n_0,rj_eq_rd_carry__0_n_1,rj_eq_rd_carry__0_n_2,rj_eq_rd_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rj_eq_rd_carry__0_O_UNCONNECTED[3:0]),
        .S({u_regfile_n_125,u_regfile_n_126,u_regfile_n_127,u_regfile_n_128}));
  CARRY4 rj_eq_rd_carry__1
       (.CI(rj_eq_rd_carry__0_n_0),
        .CO({NLW_rj_eq_rd_carry__1_CO_UNCONNECTED[3],rj_eq_rd,rj_eq_rd_carry__1_n_2,rj_eq_rd_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rj_eq_rd_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,u_regfile_n_139,u_regfile_n_140,u_regfile_n_141}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rj_lt_rd_unsign_carry
       (.CI(1'b0),
        .CO({rj_lt_rd_unsign_carry_n_0,rj_lt_rd_unsign_carry_n_1,rj_lt_rd_unsign_carry_n_2,rj_lt_rd_unsign_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_47,u_regfile_n_48,u_regfile_n_49,u_regfile_n_50}),
        .O(NLW_rj_lt_rd_unsign_carry_O_UNCONNECTED[3:0]),
        .S({u_regfile_n_43,u_regfile_n_44,u_regfile_n_45,u_regfile_n_46}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rj_lt_rd_unsign_carry__0
       (.CI(rj_lt_rd_unsign_carry_n_0),
        .CO({rj_lt_rd_unsign_carry__0_n_0,rj_lt_rd_unsign_carry__0_n_1,rj_lt_rd_unsign_carry__0_n_2,rj_lt_rd_unsign_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_120,u_regfile_n_121,u_regfile_n_122,u_regfile_n_123}),
        .O(NLW_rj_lt_rd_unsign_carry__0_O_UNCONNECTED[3:0]),
        .S({u_regfile_n_116,u_regfile_n_117,u_regfile_n_118,u_regfile_n_119}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rj_lt_rd_unsign_carry__1
       (.CI(rj_lt_rd_unsign_carry__0_n_0),
        .CO({rj_lt_rd_unsign_carry__1_n_0,rj_lt_rd_unsign_carry__1_n_1,rj_lt_rd_unsign_carry__1_n_2,rj_lt_rd_unsign_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_134,u_regfile_n_135,u_regfile_n_136,u_regfile_n_137}),
        .O(NLW_rj_lt_rd_unsign_carry__1_O_UNCONNECTED[3:0]),
        .S({u_regfile_n_130,u_regfile_n_131,u_regfile_n_132,u_regfile_n_133}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rj_lt_rd_unsign_carry__2
       (.CI(rj_lt_rd_unsign_carry__1_n_0),
        .CO({rj_lt_rd_unsign,rj_lt_rd_unsign_carry__2_n_1,rj_lt_rd_unsign_carry__2_n_2,rj_lt_rd_unsign_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({u_regfile_n_146,u_regfile_n_147,u_regfile_n_148,u_regfile_n_149}),
        .O(NLW_rj_lt_rd_unsign_carry__2_O_UNCONNECTED[3:0]),
        .S({u_regfile_n_142,u_regfile_n_143,u_regfile_n_144,u_regfile_n_145}));
  mycpu_top_block_id_stage_0_0_regfile u_regfile
       (.CO(rj_lt_rd_unsign),
        .DI({u_regfile_n_47,u_regfile_n_48,u_regfile_n_49,u_regfile_n_50}),
        .O({br_target1_carry__6_n_4,br_target1_carry__6_n_5,br_target1_carry__6_n_6,br_target1_carry__6_n_7}),
        .Q({\id_data_reg_n_0_[31] ,\id_data_reg_n_0_[30] ,\id_data_reg_n_0_[29] ,\id_data_reg_n_0_[28] ,\id_data_reg_n_0_[27] ,\id_data_reg_n_0_[26] ,op_25_22,op_21_20,op_19_15[3:1],p_10_in,\id_data_reg_n_0_[4] ,\id_data_reg_n_0_[3] ,\id_data_reg_n_0_[2] ,\id_data_reg_n_0_[1] ,\id_data_reg_n_0_[0] }),
        .S({u_regfile_n_5,u_regfile_n_6,u_regfile_n_7,u_regfile_n_8}),
        .br_target1_carry(\id_to_exe_bus[136]_INST_0_i_1_n_0 ),
        .br_target1_carry__6(\id_to_exe_bus[150]_INST_0_i_1_n_0 ),
        .br_target1_carry__6_0(\id_to_exe_bus[139]_INST_0_i_4_n_0 ),
        .br_target1_carry__6_1(\id_to_exe_bus[127]_INST_0_i_1_n_0 ),
        .clk(clk),
        .exe_to_id_bus({exe_to_id_bus[37],exe_to_id_bus[31:0]}),
        .\exe_to_id_bus[10] ({u_regfile_n_39,u_regfile_n_40,u_regfile_n_41,u_regfile_n_42}),
        .\exe_to_id_bus[10]_0 ({u_regfile_n_162,u_regfile_n_163,u_regfile_n_164}),
        .\exe_to_id_bus[11] ({u_regfile_n_13,u_regfile_n_14,u_regfile_n_15,u_regfile_n_16}),
        .\exe_to_id_bus[11]_0 (u_regfile_n_124),
        .\exe_to_id_bus[15] ({u_regfile_n_17,u_regfile_n_18,u_regfile_n_19,u_regfile_n_20}),
        .\exe_to_id_bus[15]_0 ({u_regfile_n_120,u_regfile_n_121,u_regfile_n_122,u_regfile_n_123}),
        .\exe_to_id_bus[15]_1 ({u_regfile_n_165,u_regfile_n_166,u_regfile_n_167,u_regfile_n_168}),
        .\exe_to_id_bus[19] ({u_regfile_n_21,u_regfile_n_22,u_regfile_n_23,u_regfile_n_24}),
        .\exe_to_id_bus[19]_0 ({u_regfile_n_169,u_regfile_n_170,u_regfile_n_171}),
        .\exe_to_id_bus[22] ({u_regfile_n_125,u_regfile_n_126,u_regfile_n_127,u_regfile_n_128}),
        .\exe_to_id_bus[22]_0 ({u_regfile_n_172,u_regfile_n_173,u_regfile_n_174}),
        .\exe_to_id_bus[23] ({u_regfile_n_134,u_regfile_n_135,u_regfile_n_136,u_regfile_n_137}),
        .\exe_to_id_bus[23]_0 (u_regfile_n_138),
        .\exe_to_id_bus[27] ({u_regfile_n_175,u_regfile_n_176,u_regfile_n_177,u_regfile_n_178}),
        .\exe_to_id_bus[30] ({u_regfile_n_146,u_regfile_n_147,u_regfile_n_148,u_regfile_n_149}),
        .\exe_to_id_bus[30]_0 ({u_regfile_n_179,u_regfile_n_180}),
        .\exe_to_id_bus[3] ({u_regfile_n_155,u_regfile_n_156,u_regfile_n_157,u_regfile_n_158}),
        .\exe_to_id_bus[7] ({u_regfile_n_9,u_regfile_n_10,u_regfile_n_11,u_regfile_n_12}),
        .\exe_to_id_bus[7]_0 ({u_regfile_n_159,u_regfile_n_160,u_regfile_n_161}),
        .exe_to_id_bus_17_sp_1(u_regfile_n_129),
        .exe_to_id_bus_29_sp_1(u_regfile_n_37),
        .exe_to_id_bus_5_sp_1(u_regfile_n_115),
        .\id_data_reg[16] ({u_regfile_n_25,u_regfile_n_26,u_regfile_n_27,u_regfile_n_28}),
        .\id_data_reg[22] (u_regfile_n_181),
        .\id_data_reg[30] (u_regfile_n_182),
        .\id_data_reg[31] (u_regfile_n_183),
        .\id_data_reg[9] ({u_regfile_n_29,u_regfile_n_30,u_regfile_n_31,u_regfile_n_32}),
        .\id_data_reg[9]_0 ({u_regfile_n_33,u_regfile_n_34,u_regfile_n_35,u_regfile_n_36}),
        .id_to_exe_bus({id_to_exe_bus[122],id_to_exe_bus[118],id_to_exe_bus[116:98]}),
        .\id_to_exe_bus[134] (\id_to_exe_bus[160]_INST_0_i_1_n_0 ),
        .\id_to_exe_bus[32] (\id_to_exe_bus[63]_INST_0_i_4_n_0 ),
        .\id_to_exe_bus[32]_0 (\id_to_exe_bus[63]_INST_0_i_1_n_0 ),
        .\id_to_exe_bus[32]_1 (\id_to_exe_bus[63]_INST_0_i_2_n_0 ),
        .\id_to_exe_bus[62] (\id_to_exe_bus[63]_INST_0_i_9_n_0 ),
        .\id_to_exe_bus[64] (\id_to_exe_bus[94]_INST_0_i_2_n_0 ),
        .\id_to_exe_bus[64]_0 (\id_to_exe_bus[95]_INST_0_i_10_n_0 ),
        .\id_to_exe_bus[64]_1 (\id_to_exe_bus[95]_INST_0_i_9_n_0 ),
        .\id_to_exe_bus[95] (\id_to_exe_bus[95]_INST_0_i_1_n_0 ),
        .\id_to_exe_bus[95]_0 (\id_to_exe_bus[95]_INST_0_i_3_n_0 ),
        .\id_to_exe_bus[95]_1 (\id_to_exe_bus[95]_INST_0_i_4_n_0 ),
        .id_to_if_bus(id_to_if_bus[32:28]),
        .\id_to_if_bus[28] (\id_to_exe_bus[139]_INST_0_i_3_n_0 ),
        .\id_to_if_bus[28]_0 (\id_to_if_bus[31]_INST_0_i_1_n_0 ),
        .\id_to_if_bus[31] (br_target10_out[31:28]),
        .\id_to_if_bus[32] (\id_to_if_bus[32]_INST_0_i_4_n_0 ),
        .\id_to_if_bus[32]_0 (rj_eq_rd),
        .\id_to_if_bus[32]_1 (\id_to_if_bus[32]_INST_0_i_7_n_0 ),
        .id_valid(id_valid),
        .id_valid_i_4_0(\id_to_if_bus[32]_INST_0_i_10_n_0 ),
        .id_valid_i_4_1(\id_to_exe_bus[63]_INST_0_i_20_n_0 ),
        .id_valid_i_4_2(\id_to_exe_bus[63]_INST_0_i_21_n_0 ),
        .id_valid_reg(\id_to_exe_bus[63]_INST_0_i_10_n_0 ),
        .id_valid_reg_0(id_valid_i_6_n_0),
        .id_valid_reg_1(id_valid_i_2_n_0),
        .id_valid_reg_2(id_valid_i_3_n_0),
        .id_valid_reg_3(\id_to_if_bus[32]_INST_0_i_2_n_0 ),
        .mem_to_id_bus(mem_to_id_bus[31:0]),
        .\mem_to_id_bus[31] (id_to_exe_bus[95:32]),
        .raddr2(raddr2),
        .resetn(resetn),
        .resetn_0(u_regfile_n_38),
        .rf_raddr1(rf_raddr1),
        .rj_eq_rd_carry__1_i_1_0(\id_to_exe_bus[95]_INST_0_i_14_n_0 ),
        .rj_eq_rd_carry__1_i_1_1(\id_to_exe_bus[95]_INST_0_i_13_n_0 ),
        .wb_to_rf_bus(wb_to_rf_bus),
        .\wb_to_rf_bus[15] ({u_regfile_n_116,u_regfile_n_117,u_regfile_n_118,u_regfile_n_119}),
        .\wb_to_rf_bus[23] ({u_regfile_n_130,u_regfile_n_131,u_regfile_n_132,u_regfile_n_133}),
        .\wb_to_rf_bus[30] ({u_regfile_n_139,u_regfile_n_140,u_regfile_n_141}),
        .\wb_to_rf_bus[30]_0 ({u_regfile_n_142,u_regfile_n_143,u_regfile_n_144,u_regfile_n_145}),
        .\wb_to_rf_bus[7] ({u_regfile_n_43,u_regfile_n_44,u_regfile_n_45,u_regfile_n_46}));
endmodule

(* ORIG_REF_NAME = "regfile" *) 
module mycpu_top_block_id_stage_0_0_regfile
   (raddr2,
    S,
    \exe_to_id_bus[7] ,
    \exe_to_id_bus[11] ,
    \exe_to_id_bus[15] ,
    \exe_to_id_bus[19] ,
    \id_data_reg[16] ,
    \id_data_reg[9] ,
    \id_data_reg[9]_0 ,
    exe_to_id_bus_29_sp_1,
    resetn_0,
    \exe_to_id_bus[10] ,
    \wb_to_rf_bus[7] ,
    DI,
    \mem_to_id_bus[31] ,
    exe_to_id_bus_5_sp_1,
    \wb_to_rf_bus[15] ,
    \exe_to_id_bus[15]_0 ,
    \exe_to_id_bus[11]_0 ,
    \exe_to_id_bus[22] ,
    exe_to_id_bus_17_sp_1,
    \wb_to_rf_bus[23] ,
    \exe_to_id_bus[23] ,
    \exe_to_id_bus[23]_0 ,
    \wb_to_rf_bus[30] ,
    \wb_to_rf_bus[30]_0 ,
    \exe_to_id_bus[30] ,
    id_to_if_bus,
    \exe_to_id_bus[3] ,
    \exe_to_id_bus[7]_0 ,
    \exe_to_id_bus[10]_0 ,
    \exe_to_id_bus[15]_1 ,
    \exe_to_id_bus[19]_0 ,
    \exe_to_id_bus[22]_0 ,
    \exe_to_id_bus[27] ,
    \exe_to_id_bus[30]_0 ,
    \id_data_reg[22] ,
    \id_data_reg[30] ,
    \id_data_reg[31] ,
    clk,
    wb_to_rf_bus,
    rf_raddr1,
    Q,
    CO,
    id_valid_reg,
    id_valid_reg_0,
    \id_to_exe_bus[62] ,
    id_to_exe_bus,
    br_target1_carry__6,
    br_target1_carry__6_0,
    br_target1_carry__6_1,
    br_target1_carry,
    resetn,
    id_valid_reg_1,
    id_valid_reg_2,
    id_valid_reg_3,
    \id_to_exe_bus[32] ,
    exe_to_id_bus,
    mem_to_id_bus,
    \id_to_exe_bus[32]_0 ,
    \id_to_exe_bus[32]_1 ,
    \id_to_if_bus[32] ,
    id_valid,
    \id_to_exe_bus[64] ,
    rj_eq_rd_carry__1_i_1_0,
    rj_eq_rd_carry__1_i_1_1,
    \id_to_exe_bus[95] ,
    \id_to_exe_bus[95]_0 ,
    \id_to_exe_bus[95]_1 ,
    \id_to_exe_bus[64]_0 ,
    \id_to_exe_bus[64]_1 ,
    id_valid_i_4_0,
    id_valid_i_4_1,
    id_valid_i_4_2,
    \id_to_exe_bus[134] ,
    \id_to_if_bus[28] ,
    O,
    \id_to_if_bus[28]_0 ,
    \id_to_if_bus[31] ,
    \id_to_if_bus[32]_0 ,
    \id_to_if_bus[32]_1 );
  output [4:0]raddr2;
  output [3:0]S;
  output [3:0]\exe_to_id_bus[7] ;
  output [3:0]\exe_to_id_bus[11] ;
  output [3:0]\exe_to_id_bus[15] ;
  output [3:0]\exe_to_id_bus[19] ;
  output [3:0]\id_data_reg[16] ;
  output [3:0]\id_data_reg[9] ;
  output [3:0]\id_data_reg[9]_0 ;
  output exe_to_id_bus_29_sp_1;
  output resetn_0;
  output [3:0]\exe_to_id_bus[10] ;
  output [3:0]\wb_to_rf_bus[7] ;
  output [3:0]DI;
  output [63:0]\mem_to_id_bus[31] ;
  output exe_to_id_bus_5_sp_1;
  output [3:0]\wb_to_rf_bus[15] ;
  output [3:0]\exe_to_id_bus[15]_0 ;
  output \exe_to_id_bus[11]_0 ;
  output [3:0]\exe_to_id_bus[22] ;
  output exe_to_id_bus_17_sp_1;
  output [3:0]\wb_to_rf_bus[23] ;
  output [3:0]\exe_to_id_bus[23] ;
  output \exe_to_id_bus[23]_0 ;
  output [2:0]\wb_to_rf_bus[30] ;
  output [3:0]\wb_to_rf_bus[30]_0 ;
  output [3:0]\exe_to_id_bus[30] ;
  output [4:0]id_to_if_bus;
  output [3:0]\exe_to_id_bus[3] ;
  output [2:0]\exe_to_id_bus[7]_0 ;
  output [2:0]\exe_to_id_bus[10]_0 ;
  output [3:0]\exe_to_id_bus[15]_1 ;
  output [2:0]\exe_to_id_bus[19]_0 ;
  output [2:0]\exe_to_id_bus[22]_0 ;
  output [3:0]\exe_to_id_bus[27] ;
  output [1:0]\exe_to_id_bus[30]_0 ;
  output \id_data_reg[22] ;
  output \id_data_reg[30] ;
  output \id_data_reg[31] ;
  input clk;
  input [37:0]wb_to_rf_bus;
  input [4:0]rf_raddr1;
  input [24:0]Q;
  input [0:0]CO;
  input id_valid_reg;
  input id_valid_reg_0;
  input \id_to_exe_bus[62] ;
  input [20:0]id_to_exe_bus;
  input br_target1_carry__6;
  input br_target1_carry__6_0;
  input br_target1_carry__6_1;
  input br_target1_carry;
  input resetn;
  input id_valid_reg_1;
  input id_valid_reg_2;
  input id_valid_reg_3;
  input \id_to_exe_bus[32] ;
  input [32:0]exe_to_id_bus;
  input [31:0]mem_to_id_bus;
  input \id_to_exe_bus[32]_0 ;
  input \id_to_exe_bus[32]_1 ;
  input \id_to_if_bus[32] ;
  input id_valid;
  input \id_to_exe_bus[64] ;
  input rj_eq_rd_carry__1_i_1_0;
  input rj_eq_rd_carry__1_i_1_1;
  input \id_to_exe_bus[95] ;
  input \id_to_exe_bus[95]_0 ;
  input \id_to_exe_bus[95]_1 ;
  input \id_to_exe_bus[64]_0 ;
  input \id_to_exe_bus[64]_1 ;
  input id_valid_i_4_0;
  input id_valid_i_4_1;
  input id_valid_i_4_2;
  input \id_to_exe_bus[134] ;
  input \id_to_if_bus[28] ;
  input [3:0]O;
  input \id_to_if_bus[28]_0 ;
  input [3:0]\id_to_if_bus[31] ;
  input [0:0]\id_to_if_bus[32]_0 ;
  input \id_to_if_bus[32]_1 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]O;
  wire [24:0]Q;
  wire [3:0]S;
  wire br_target1_carry;
  wire br_target1_carry__6;
  wire br_target1_carry__6_0;
  wire br_target1_carry__6_1;
  wire clk;
  wire [32:0]exe_to_id_bus;
  wire [3:0]\exe_to_id_bus[10] ;
  wire [2:0]\exe_to_id_bus[10]_0 ;
  wire [3:0]\exe_to_id_bus[11] ;
  wire \exe_to_id_bus[11]_0 ;
  wire [3:0]\exe_to_id_bus[15] ;
  wire [3:0]\exe_to_id_bus[15]_0 ;
  wire [3:0]\exe_to_id_bus[15]_1 ;
  wire [3:0]\exe_to_id_bus[19] ;
  wire [2:0]\exe_to_id_bus[19]_0 ;
  wire [3:0]\exe_to_id_bus[22] ;
  wire [2:0]\exe_to_id_bus[22]_0 ;
  wire [3:0]\exe_to_id_bus[23] ;
  wire \exe_to_id_bus[23]_0 ;
  wire [3:0]\exe_to_id_bus[27] ;
  wire [3:0]\exe_to_id_bus[30] ;
  wire [1:0]\exe_to_id_bus[30]_0 ;
  wire [3:0]\exe_to_id_bus[3] ;
  wire [3:0]\exe_to_id_bus[7] ;
  wire [2:0]\exe_to_id_bus[7]_0 ;
  wire exe_to_id_bus_17_sn_1;
  wire exe_to_id_bus_29_sn_1;
  wire exe_to_id_bus_5_sn_1;
  wire [3:0]\id_data_reg[16] ;
  wire \id_data_reg[22] ;
  wire \id_data_reg[30] ;
  wire \id_data_reg[31] ;
  wire [3:0]\id_data_reg[9] ;
  wire [3:0]\id_data_reg[9]_0 ;
  wire [20:0]id_to_exe_bus;
  wire \id_to_exe_bus[134] ;
  wire \id_to_exe_bus[134]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[32] ;
  wire \id_to_exe_bus[32]_0 ;
  wire \id_to_exe_bus[32]_1 ;
  wire \id_to_exe_bus[32]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[33]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[34]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[35]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[36]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[37]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[38]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[39]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[40]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[41]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[42]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[43]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[44]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[45]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[46]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[47]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[48]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[49]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[50]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[51]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[52]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[53]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[54]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[55]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[56]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[57]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[58]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[59]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[60]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[61]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[62] ;
  wire \id_to_exe_bus[62]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[63]_INST_0_i_3_n_0 ;
  wire \id_to_exe_bus[64] ;
  wire \id_to_exe_bus[64]_0 ;
  wire \id_to_exe_bus[64]_1 ;
  wire \id_to_exe_bus[64]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[65]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[66]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[67]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[68]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[70]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[71]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[72]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[73]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[74]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[76]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[77]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[78]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[79]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[80]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[82]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[83]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[84]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[85]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[86]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[88]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[89]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[90]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[91]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[92]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[94]_INST_0_i_1_n_0 ;
  wire \id_to_exe_bus[95] ;
  wire \id_to_exe_bus[95]_0 ;
  wire \id_to_exe_bus[95]_1 ;
  wire \id_to_exe_bus[95]_INST_0_i_2_n_0 ;
  wire [4:0]id_to_if_bus;
  wire \id_to_if_bus[28] ;
  wire \id_to_if_bus[28]_0 ;
  wire [3:0]\id_to_if_bus[31] ;
  wire \id_to_if_bus[32] ;
  wire [0:0]\id_to_if_bus[32]_0 ;
  wire \id_to_if_bus[32]_1 ;
  wire \id_to_if_bus[32]_INST_0_i_11_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_1_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_3_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_5_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_6_n_0 ;
  wire \id_to_if_bus[32]_INST_0_i_8_n_0 ;
  wire id_valid;
  wire id_valid_i_4_0;
  wire id_valid_i_4_1;
  wire id_valid_i_4_2;
  wire id_valid_i_4_n_0;
  wire id_valid_reg;
  wire id_valid_reg_0;
  wire id_valid_reg_1;
  wire id_valid_reg_2;
  wire id_valid_reg_3;
  wire [31:0]mem_to_id_bus;
  wire [63:0]\mem_to_id_bus[31] ;
  wire [4:0]raddr2;
  wire [31:0]rdata11;
  wire [31:0]rdata21;
  wire resetn;
  wire resetn_0;
  wire [4:0]rf_raddr1;
  wire rj_eq_rd_carry__1_i_1_0;
  wire rj_eq_rd_carry__1_i_1_1;
  wire rj_lt_rd_unsign_carry__0_i_10_n_0;
  wire rj_lt_rd_unsign_carry__0_i_11_n_0;
  wire rj_lt_rd_unsign_carry__0_i_12_n_0;
  wire rj_lt_rd_unsign_carry__0_i_13_n_0;
  wire rj_lt_rd_unsign_carry__0_i_14_n_0;
  wire rj_lt_rd_unsign_carry__0_i_15_n_0;
  wire rj_lt_rd_unsign_carry__0_i_16_n_0;
  wire rj_lt_rd_unsign_carry__0_i_9_n_0;
  wire rj_lt_rd_unsign_carry__1_i_10_n_0;
  wire rj_lt_rd_unsign_carry__1_i_11_n_0;
  wire rj_lt_rd_unsign_carry__1_i_12_n_0;
  wire rj_lt_rd_unsign_carry__1_i_13_n_0;
  wire rj_lt_rd_unsign_carry__1_i_14_n_0;
  wire rj_lt_rd_unsign_carry__1_i_15_n_0;
  wire rj_lt_rd_unsign_carry__1_i_16_n_0;
  wire rj_lt_rd_unsign_carry__1_i_9_n_0;
  wire rj_lt_rd_unsign_carry__2_i_10_n_0;
  wire rj_lt_rd_unsign_carry__2_i_11_n_0;
  wire rj_lt_rd_unsign_carry__2_i_12_n_0;
  wire rj_lt_rd_unsign_carry__2_i_13_n_0;
  wire rj_lt_rd_unsign_carry__2_i_14_n_0;
  wire rj_lt_rd_unsign_carry__2_i_15_n_0;
  wire rj_lt_rd_unsign_carry__2_i_16_n_0;
  wire rj_lt_rd_unsign_carry__2_i_9_n_0;
  wire rj_lt_rd_unsign_carry_i_10_n_0;
  wire rj_lt_rd_unsign_carry_i_11_n_0;
  wire rj_lt_rd_unsign_carry_i_12_n_0;
  wire rj_lt_rd_unsign_carry_i_13_n_0;
  wire rj_lt_rd_unsign_carry_i_14_n_0;
  wire rj_lt_rd_unsign_carry_i_15_n_0;
  wire rj_lt_rd_unsign_carry_i_16_n_0;
  wire rj_lt_rd_unsign_carry_i_9_n_0;
  wire [37:0]wb_to_rf_bus;
  wire [3:0]\wb_to_rf_bus[15] ;
  wire [3:0]\wb_to_rf_bus[23] ;
  wire [2:0]\wb_to_rf_bus[30] ;
  wire [3:0]\wb_to_rf_bus[30]_0 ;
  wire [3:0]\wb_to_rf_bus[7] ;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  assign exe_to_id_bus_17_sp_1 = exe_to_id_bus_17_sn_1;
  assign exe_to_id_bus_29_sp_1 = exe_to_id_bus_29_sn_1;
  assign exe_to_id_bus_5_sp_1 = exe_to_id_bus_5_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__0_i_1
       (.I0(\id_to_exe_bus[71]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[7]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__0_i_2
       (.I0(\id_to_exe_bus[70]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[7]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__0_i_3
       (.I0(\id_to_exe_bus[68]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__0_i_4
       (.I0(\id_to_exe_bus[71]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[5]),
        .O(\exe_to_id_bus[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__0_i_5
       (.I0(\id_to_exe_bus[70]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[4]),
        .O(\exe_to_id_bus[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    br_target1_carry__0_i_6
       (.I0(exe_to_id_bus_5_sn_1),
        .I1(id_to_exe_bus[3]),
        .O(\exe_to_id_bus[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__0_i_7
       (.I0(\id_to_exe_bus[68]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[2]),
        .O(\exe_to_id_bus[7] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__1_i_1
       (.I0(\id_to_exe_bus[74]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[10]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__1_i_2
       (.I0(\id_to_exe_bus[73]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[10]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__1_i_3
       (.I0(\id_to_exe_bus[72]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[10]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    br_target1_carry__1_i_4
       (.I0(\exe_to_id_bus[11]_0 ),
        .I1(id_to_exe_bus[9]),
        .O(\exe_to_id_bus[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__1_i_5
       (.I0(\id_to_exe_bus[74]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[8]),
        .O(\exe_to_id_bus[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__1_i_6
       (.I0(\id_to_exe_bus[73]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[7]),
        .O(\exe_to_id_bus[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__1_i_7
       (.I0(\id_to_exe_bus[72]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[6]),
        .O(\exe_to_id_bus[11] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__2_i_1
       (.I0(\id_to_exe_bus[79]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[15]_1 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__2_i_2
       (.I0(\id_to_exe_bus[78]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[15]_1 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__2_i_3
       (.I0(\id_to_exe_bus[77]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[15]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__2_i_4
       (.I0(\id_to_exe_bus[76]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[15]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__2_i_5
       (.I0(\id_to_exe_bus[79]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[13]),
        .O(\exe_to_id_bus[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__2_i_6
       (.I0(\id_to_exe_bus[78]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[12]),
        .O(\exe_to_id_bus[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__2_i_7
       (.I0(\id_to_exe_bus[77]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[11]),
        .O(\exe_to_id_bus[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__2_i_8
       (.I0(\id_to_exe_bus[76]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[10]),
        .O(\exe_to_id_bus[15] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__3_i_1
       (.I0(\id_to_exe_bus[83]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[19]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__3_i_2
       (.I0(\id_to_exe_bus[82]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[19]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__3_i_3
       (.I0(\id_to_exe_bus[80]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__3_i_4
       (.I0(\id_to_exe_bus[83]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[17]),
        .O(\exe_to_id_bus[19] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__3_i_5
       (.I0(\id_to_exe_bus[82]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[16]),
        .O(\exe_to_id_bus[19] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    br_target1_carry__3_i_6
       (.I0(exe_to_id_bus_17_sn_1),
        .I1(id_to_exe_bus[15]),
        .O(\exe_to_id_bus[19] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__3_i_7
       (.I0(\id_to_exe_bus[80]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[14]),
        .O(\exe_to_id_bus[19] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__4_i_1
       (.I0(\id_to_exe_bus[86]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[22]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__4_i_2
       (.I0(\id_to_exe_bus[85]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[22]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__4_i_3
       (.I0(\id_to_exe_bus[84]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[22]_0 [0]));
  LUT6 #(
    .INIT(64'h55555555559A9A9A)) 
    br_target1_carry__4_i_4
       (.I0(\exe_to_id_bus[23]_0 ),
        .I1(br_target1_carry__6),
        .I2(Q[10]),
        .I3(br_target1_carry__6_0),
        .I4(rf_raddr1[0]),
        .I5(br_target1_carry__6_1),
        .O(\id_data_reg[16] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__4_i_5
       (.I0(\id_to_exe_bus[86]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[19]),
        .O(\id_data_reg[16] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA656565)) 
    br_target1_carry__4_i_6
       (.I0(\id_to_exe_bus[85]_INST_0_i_1_n_0 ),
        .I1(br_target1_carry__6),
        .I2(Q[9]),
        .I3(br_target1_carry__6_0),
        .I4(Q[3]),
        .I5(br_target1_carry__6_1),
        .O(\id_data_reg[16] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__4_i_7
       (.I0(\id_to_exe_bus[84]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[18]),
        .O(\id_data_reg[16] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__5_i_1
       (.I0(\id_to_exe_bus[91]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[27] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__5_i_2
       (.I0(\id_to_exe_bus[90]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[27] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__5_i_3
       (.I0(\id_to_exe_bus[89]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[27] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__5_i_4
       (.I0(\id_to_exe_bus[88]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[27] [0]));
  LUT6 #(
    .INIT(64'hF807F807FF00F807)) 
    br_target1_carry__5_i_5
       (.I0(br_target1_carry__6_0),
        .I1(rf_raddr1[4]),
        .I2(br_target1_carry__6_1),
        .I3(\id_to_exe_bus[91]_INST_0_i_1_n_0 ),
        .I4(Q[13]),
        .I5(br_target1_carry__6),
        .O(\id_data_reg[9] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry__5_i_6
       (.I0(\id_to_exe_bus[90]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[20]),
        .O(\id_data_reg[9] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA656565)) 
    br_target1_carry__5_i_7
       (.I0(\id_to_exe_bus[89]_INST_0_i_1_n_0 ),
        .I1(br_target1_carry__6),
        .I2(Q[12]),
        .I3(br_target1_carry__6_0),
        .I4(rf_raddr1[2]),
        .I5(br_target1_carry__6_1),
        .O(\id_data_reg[9] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA656565)) 
    br_target1_carry__5_i_8
       (.I0(\id_to_exe_bus[88]_INST_0_i_1_n_0 ),
        .I1(br_target1_carry__6),
        .I2(Q[11]),
        .I3(br_target1_carry__6_0),
        .I4(rf_raddr1[1]),
        .I5(br_target1_carry__6_1),
        .O(\id_data_reg[9] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__6_i_1
       (.I0(\id_to_exe_bus[94]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[30]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry__6_i_2
       (.I0(\id_to_exe_bus[92]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[30]_0 [0]));
  LUT6 #(
    .INIT(64'hF8F8FFF807070007)) 
    br_target1_carry__6_i_3
       (.I0(br_target1_carry__6_0),
        .I1(rf_raddr1[4]),
        .I2(br_target1_carry__6_1),
        .I3(Q[17]),
        .I4(br_target1_carry__6),
        .I5(\id_to_if_bus[32]_INST_0_i_6_n_0 ),
        .O(\id_data_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'hF807F807FF00F807)) 
    br_target1_carry__6_i_4
       (.I0(br_target1_carry__6_0),
        .I1(rf_raddr1[4]),
        .I2(br_target1_carry__6_1),
        .I3(\id_to_exe_bus[94]_INST_0_i_1_n_0 ),
        .I4(Q[16]),
        .I5(br_target1_carry__6),
        .O(\id_data_reg[9]_0 [2]));
  LUT6 #(
    .INIT(64'h07F807F800FF07F8)) 
    br_target1_carry__6_i_5
       (.I0(br_target1_carry__6_0),
        .I1(rf_raddr1[4]),
        .I2(br_target1_carry__6_1),
        .I3(exe_to_id_bus_29_sn_1),
        .I4(Q[15]),
        .I5(br_target1_carry__6),
        .O(\id_data_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'hF807F807FF00F807)) 
    br_target1_carry__6_i_6
       (.I0(br_target1_carry__6_0),
        .I1(rf_raddr1[4]),
        .I2(br_target1_carry__6_1),
        .I3(\id_to_exe_bus[92]_INST_0_i_1_n_0 ),
        .I4(Q[14]),
        .I5(br_target1_carry__6),
        .O(\id_data_reg[9]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry_i_1
       (.I0(\id_to_exe_bus[67]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[3] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry_i_2
       (.I0(\id_to_exe_bus[66]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[3] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry_i_3
       (.I0(\id_to_exe_bus[65]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[3] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    br_target1_carry_i_4
       (.I0(\id_to_exe_bus[64]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry_i_5
       (.I0(\id_to_exe_bus[67]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[1]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    br_target1_carry_i_6
       (.I0(\id_to_exe_bus[66]_INST_0_i_1_n_0 ),
        .I1(id_to_exe_bus[0]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h2D)) 
    br_target1_carry_i_7
       (.I0(Q[6]),
        .I1(br_target1_carry),
        .I2(\id_to_exe_bus[65]_INST_0_i_1_n_0 ),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h2D)) 
    br_target1_carry_i_8
       (.I0(Q[5]),
        .I1(br_target1_carry),
        .I2(\id_to_exe_bus[64]_INST_0_i_1_n_0 ),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000000055454545)) 
    \id_to_exe_bus[134]_INST_0_i_1 
       (.I0(\id_data_reg[30] ),
        .I1(\id_to_exe_bus[134]_INST_0_i_3_n_0 ),
        .I2(\id_to_exe_bus[134] ),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(\id_data_reg[31] ),
        .O(\id_data_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \id_to_exe_bus[134]_INST_0_i_2 
       (.I0(Q[23]),
        .I1(Q[24]),
        .I2(Q[22]),
        .I3(Q[21]),
        .O(\id_data_reg[30] ));
  LUT2 #(
    .INIT(4'hB)) 
    \id_to_exe_bus[134]_INST_0_i_3 
       (.I0(Q[18]),
        .I1(Q[17]),
        .O(\id_to_exe_bus[134]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \id_to_exe_bus[134]_INST_0_i_4 
       (.I0(Q[24]),
        .I1(Q[23]),
        .I2(Q[22]),
        .I3(Q[20]),
        .I4(Q[21]),
        .O(\id_data_reg[31] ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[32]_INST_0 
       (.I0(mem_to_id_bus[0]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[32]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[0]),
        .O(\mem_to_id_bus[31] [0]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[32]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[0]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[0]),
        .O(\id_to_exe_bus[32]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[33]_INST_0 
       (.I0(mem_to_id_bus[1]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[33]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[1]),
        .O(\mem_to_id_bus[31] [1]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[33]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[1]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[1]),
        .O(\id_to_exe_bus[33]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[34]_INST_0 
       (.I0(mem_to_id_bus[2]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[34]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[2]),
        .O(\mem_to_id_bus[31] [2]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[34]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[2]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[2]),
        .O(\id_to_exe_bus[34]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[35]_INST_0 
       (.I0(mem_to_id_bus[3]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[35]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[3]),
        .O(\mem_to_id_bus[31] [3]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[35]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[3]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[3]),
        .O(\id_to_exe_bus[35]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[36]_INST_0 
       (.I0(mem_to_id_bus[4]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[36]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[4]),
        .O(\mem_to_id_bus[31] [4]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[36]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[4]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[4]),
        .O(\id_to_exe_bus[36]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[37]_INST_0 
       (.I0(mem_to_id_bus[5]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[37]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[5]),
        .O(\mem_to_id_bus[31] [5]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[37]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[5]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[5]),
        .O(\id_to_exe_bus[37]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[38]_INST_0 
       (.I0(mem_to_id_bus[6]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[38]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[6]),
        .O(\mem_to_id_bus[31] [6]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[38]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[6]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[6]),
        .O(\id_to_exe_bus[38]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[39]_INST_0 
       (.I0(mem_to_id_bus[7]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[39]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[7]),
        .O(\mem_to_id_bus[31] [7]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[39]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[7]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[7]),
        .O(\id_to_exe_bus[39]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[40]_INST_0 
       (.I0(mem_to_id_bus[8]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[40]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[8]),
        .O(\mem_to_id_bus[31] [8]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[40]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[8]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[8]),
        .O(\id_to_exe_bus[40]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[41]_INST_0 
       (.I0(mem_to_id_bus[9]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[41]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[9]),
        .O(\mem_to_id_bus[31] [9]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[41]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[9]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[9]),
        .O(\id_to_exe_bus[41]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[42]_INST_0 
       (.I0(mem_to_id_bus[10]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[42]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[10]),
        .O(\mem_to_id_bus[31] [10]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[42]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[10]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[10]),
        .O(\id_to_exe_bus[42]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[43]_INST_0 
       (.I0(mem_to_id_bus[11]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[43]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[11]),
        .O(\mem_to_id_bus[31] [11]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[43]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[11]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[11]),
        .O(\id_to_exe_bus[43]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[44]_INST_0 
       (.I0(mem_to_id_bus[12]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[44]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[12]),
        .O(\mem_to_id_bus[31] [12]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[44]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[12]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[12]),
        .O(\id_to_exe_bus[44]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[45]_INST_0 
       (.I0(mem_to_id_bus[13]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[45]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[13]),
        .O(\mem_to_id_bus[31] [13]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[45]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[13]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[13]),
        .O(\id_to_exe_bus[45]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[46]_INST_0 
       (.I0(mem_to_id_bus[14]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[46]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[14]),
        .O(\mem_to_id_bus[31] [14]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[46]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[14]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[14]),
        .O(\id_to_exe_bus[46]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[47]_INST_0 
       (.I0(mem_to_id_bus[15]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[47]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[15]),
        .O(\mem_to_id_bus[31] [15]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[47]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[15]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[15]),
        .O(\id_to_exe_bus[47]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[48]_INST_0 
       (.I0(mem_to_id_bus[16]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[48]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[16]),
        .O(\mem_to_id_bus[31] [16]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[48]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[16]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[16]),
        .O(\id_to_exe_bus[48]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[49]_INST_0 
       (.I0(mem_to_id_bus[17]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[49]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[17]),
        .O(\mem_to_id_bus[31] [17]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[49]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[17]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[17]),
        .O(\id_to_exe_bus[49]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[50]_INST_0 
       (.I0(mem_to_id_bus[18]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[50]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[18]),
        .O(\mem_to_id_bus[31] [18]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[50]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[18]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[18]),
        .O(\id_to_exe_bus[50]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[51]_INST_0 
       (.I0(mem_to_id_bus[19]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[51]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[19]),
        .O(\mem_to_id_bus[31] [19]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[51]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[19]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[19]),
        .O(\id_to_exe_bus[51]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[52]_INST_0 
       (.I0(mem_to_id_bus[20]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[52]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[20]),
        .O(\mem_to_id_bus[31] [20]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[52]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[20]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[20]),
        .O(\id_to_exe_bus[52]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[53]_INST_0 
       (.I0(mem_to_id_bus[21]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[53]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[21]),
        .O(\mem_to_id_bus[31] [21]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[53]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[21]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[21]),
        .O(\id_to_exe_bus[53]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[54]_INST_0 
       (.I0(mem_to_id_bus[22]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[54]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[22]),
        .O(\mem_to_id_bus[31] [22]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[54]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[22]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[22]),
        .O(\id_to_exe_bus[54]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[55]_INST_0 
       (.I0(mem_to_id_bus[23]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[55]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[23]),
        .O(\mem_to_id_bus[31] [23]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[55]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[23]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[23]),
        .O(\id_to_exe_bus[55]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[56]_INST_0 
       (.I0(mem_to_id_bus[24]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[56]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[24]),
        .O(\mem_to_id_bus[31] [24]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[56]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[24]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[24]),
        .O(\id_to_exe_bus[56]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[57]_INST_0 
       (.I0(mem_to_id_bus[25]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[57]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[25]),
        .O(\mem_to_id_bus[31] [25]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[57]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[25]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[25]),
        .O(\id_to_exe_bus[57]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[58]_INST_0 
       (.I0(mem_to_id_bus[26]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[58]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[26]),
        .O(\mem_to_id_bus[31] [26]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[58]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[26]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[26]),
        .O(\id_to_exe_bus[58]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[59]_INST_0 
       (.I0(mem_to_id_bus[27]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[59]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[27]),
        .O(\mem_to_id_bus[31] [27]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[59]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[27]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[27]),
        .O(\id_to_exe_bus[59]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[60]_INST_0 
       (.I0(mem_to_id_bus[28]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[60]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[28]),
        .O(\mem_to_id_bus[31] [28]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[60]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[28]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[28]),
        .O(\id_to_exe_bus[60]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[61]_INST_0 
       (.I0(mem_to_id_bus[29]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[61]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[29]),
        .O(\mem_to_id_bus[31] [29]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[61]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[29]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[29]),
        .O(\id_to_exe_bus[61]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \id_to_exe_bus[62]_INST_0 
       (.I0(mem_to_id_bus[30]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[62]_INST_0_i_1_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[30]),
        .O(\mem_to_id_bus[31] [30]));
  LUT4 #(
    .INIT(16'h5404)) 
    \id_to_exe_bus[62]_INST_0_i_1 
       (.I0(id_valid_reg),
        .I1(rdata21[30]),
        .I2(\id_to_exe_bus[62] ),
        .I3(wb_to_rf_bus[30]),
        .O(\id_to_exe_bus[62]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEFFFFE0EEE0EE)) 
    \id_to_exe_bus[63]_INST_0 
       (.I0(mem_to_id_bus[31]),
        .I1(\id_to_exe_bus[32]_0 ),
        .I2(\id_to_exe_bus[32]_1 ),
        .I3(\id_to_exe_bus[63]_INST_0_i_3_n_0 ),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[31]),
        .O(\mem_to_id_bus[31] [31]));
  LUT4 #(
    .INIT(16'hFF1D)) 
    \id_to_exe_bus[63]_INST_0_i_3 
       (.I0(rdata21[31]),
        .I1(\id_to_exe_bus[62] ),
        .I2(wb_to_rf_bus[31]),
        .I3(id_valid_reg),
        .O(\id_to_exe_bus[63]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[64]_INST_0 
       (.I0(\id_to_exe_bus[64]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[0]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[0]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [32]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[64]_INST_0_i_1 
       (.I0(exe_to_id_bus[0]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[0]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[0]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[64]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[65]_INST_0 
       (.I0(\id_to_exe_bus[65]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[1]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[1]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [33]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[65]_INST_0_i_1 
       (.I0(exe_to_id_bus[1]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[1]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[1]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[65]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[66]_INST_0 
       (.I0(\id_to_exe_bus[66]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[2]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[2]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [34]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[66]_INST_0_i_1 
       (.I0(exe_to_id_bus[2]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[2]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[2]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[66]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[67]_INST_0 
       (.I0(\id_to_exe_bus[67]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[3]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[3]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [35]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[67]_INST_0_i_1 
       (.I0(exe_to_id_bus[3]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[3]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[3]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[67]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[68]_INST_0 
       (.I0(\id_to_exe_bus[68]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[4]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[4]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [36]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[68]_INST_0_i_1 
       (.I0(exe_to_id_bus[4]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[4]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[4]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[68]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD000)) 
    \id_to_exe_bus[69]_INST_0 
       (.I0(\id_to_exe_bus[95] ),
        .I1(exe_to_id_bus_5_sn_1),
        .I2(exe_to_id_bus[5]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[5]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [37]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \id_to_exe_bus[69]_INST_0_i_1 
       (.I0(exe_to_id_bus[5]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[5]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[5]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(exe_to_id_bus_5_sn_1));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[70]_INST_0 
       (.I0(\id_to_exe_bus[70]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[6]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[6]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [38]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[70]_INST_0_i_1 
       (.I0(exe_to_id_bus[6]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[6]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[6]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[70]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[71]_INST_0 
       (.I0(\id_to_exe_bus[71]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[7]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[7]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [39]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[71]_INST_0_i_1 
       (.I0(exe_to_id_bus[7]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[7]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[7]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[71]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[72]_INST_0 
       (.I0(\id_to_exe_bus[72]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[8]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[8]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [40]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[72]_INST_0_i_1 
       (.I0(exe_to_id_bus[8]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[8]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[8]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[72]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[73]_INST_0 
       (.I0(\id_to_exe_bus[73]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[9]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[9]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [41]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[73]_INST_0_i_1 
       (.I0(exe_to_id_bus[9]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[9]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[9]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[73]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[74]_INST_0 
       (.I0(\id_to_exe_bus[74]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[10]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[10]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [42]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[74]_INST_0_i_1 
       (.I0(exe_to_id_bus[10]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[10]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[10]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[74]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD000)) 
    \id_to_exe_bus[75]_INST_0 
       (.I0(\id_to_exe_bus[95] ),
        .I1(\exe_to_id_bus[11]_0 ),
        .I2(exe_to_id_bus[11]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[11]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [43]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \id_to_exe_bus[75]_INST_0_i_1 
       (.I0(exe_to_id_bus[11]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[11]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[11]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\exe_to_id_bus[11]_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[76]_INST_0 
       (.I0(\id_to_exe_bus[76]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[12]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[12]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [44]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[76]_INST_0_i_1 
       (.I0(exe_to_id_bus[12]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[12]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[12]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[76]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[77]_INST_0 
       (.I0(\id_to_exe_bus[77]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[13]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[13]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [45]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[77]_INST_0_i_1 
       (.I0(exe_to_id_bus[13]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[13]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[13]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[77]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[78]_INST_0 
       (.I0(\id_to_exe_bus[78]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[14]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[14]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [46]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[78]_INST_0_i_1 
       (.I0(exe_to_id_bus[14]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[14]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[14]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[78]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[79]_INST_0 
       (.I0(\id_to_exe_bus[79]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[15]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[15]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [47]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[79]_INST_0_i_1 
       (.I0(exe_to_id_bus[15]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[15]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[15]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[79]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[80]_INST_0 
       (.I0(\id_to_exe_bus[80]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[16]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[16]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [48]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[80]_INST_0_i_1 
       (.I0(exe_to_id_bus[16]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[16]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[16]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[80]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD000)) 
    \id_to_exe_bus[81]_INST_0 
       (.I0(\id_to_exe_bus[95] ),
        .I1(exe_to_id_bus_17_sn_1),
        .I2(exe_to_id_bus[17]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[17]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [49]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \id_to_exe_bus[81]_INST_0_i_1 
       (.I0(exe_to_id_bus[17]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[17]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[17]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(exe_to_id_bus_17_sn_1));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[82]_INST_0 
       (.I0(\id_to_exe_bus[82]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[18]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[18]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [50]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[82]_INST_0_i_1 
       (.I0(exe_to_id_bus[18]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[18]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[18]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[82]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[83]_INST_0 
       (.I0(\id_to_exe_bus[83]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[19]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[19]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [51]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[83]_INST_0_i_1 
       (.I0(exe_to_id_bus[19]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[19]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[19]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[83]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[84]_INST_0 
       (.I0(\id_to_exe_bus[84]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[20]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[20]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [52]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[84]_INST_0_i_1 
       (.I0(exe_to_id_bus[20]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[20]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[20]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[84]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[85]_INST_0 
       (.I0(\id_to_exe_bus[85]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[21]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[21]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [53]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[85]_INST_0_i_1 
       (.I0(exe_to_id_bus[21]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[21]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[21]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[85]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[86]_INST_0 
       (.I0(\id_to_exe_bus[86]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[22]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[22]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [54]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[86]_INST_0_i_1 
       (.I0(exe_to_id_bus[22]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[22]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[22]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[86]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD000)) 
    \id_to_exe_bus[87]_INST_0 
       (.I0(\id_to_exe_bus[95] ),
        .I1(\exe_to_id_bus[23]_0 ),
        .I2(exe_to_id_bus[23]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[23]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [55]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \id_to_exe_bus[87]_INST_0_i_1 
       (.I0(exe_to_id_bus[23]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[23]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[23]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\exe_to_id_bus[23]_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[88]_INST_0 
       (.I0(\id_to_exe_bus[88]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[24]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[24]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [56]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[88]_INST_0_i_1 
       (.I0(exe_to_id_bus[24]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[24]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[24]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[88]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[89]_INST_0 
       (.I0(\id_to_exe_bus[89]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[25]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[25]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [57]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[89]_INST_0_i_1 
       (.I0(exe_to_id_bus[25]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[25]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[25]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[89]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[90]_INST_0 
       (.I0(\id_to_exe_bus[90]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[26]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[26]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [58]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[90]_INST_0_i_1 
       (.I0(exe_to_id_bus[26]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[26]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[26]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[90]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[91]_INST_0 
       (.I0(\id_to_exe_bus[91]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[27]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[27]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [59]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[91]_INST_0_i_1 
       (.I0(exe_to_id_bus[27]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[27]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[27]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[91]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[92]_INST_0 
       (.I0(\id_to_exe_bus[92]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[28]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[28]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [60]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[92]_INST_0_i_1 
       (.I0(exe_to_id_bus[28]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[28]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[28]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[92]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD000)) 
    \id_to_exe_bus[93]_INST_0 
       (.I0(\id_to_exe_bus[95] ),
        .I1(exe_to_id_bus_29_sn_1),
        .I2(exe_to_id_bus[29]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[29]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [61]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \id_to_exe_bus[93]_INST_0_i_1 
       (.I0(exe_to_id_bus[29]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[29]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[29]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(exe_to_id_bus_29_sn_1));
  LUT6 #(
    .INIT(64'h7777777777777000)) 
    \id_to_exe_bus[94]_INST_0 
       (.I0(\id_to_exe_bus[94]_INST_0_i_1_n_0 ),
        .I1(\id_to_exe_bus[95] ),
        .I2(exe_to_id_bus[30]),
        .I3(\id_to_exe_bus[64] ),
        .I4(mem_to_id_bus[30]),
        .I5(\id_to_exe_bus[95]_0 ),
        .O(\mem_to_id_bus[31] [62]));
  LUT6 #(
    .INIT(64'h7777777744477747)) 
    \id_to_exe_bus[94]_INST_0_i_1 
       (.I0(exe_to_id_bus[30]),
        .I1(\id_to_exe_bus[64] ),
        .I2(wb_to_rf_bus[30]),
        .I3(\id_to_exe_bus[64]_0 ),
        .I4(rdata11[30]),
        .I5(\id_to_exe_bus[64]_1 ),
        .O(\id_to_exe_bus[94]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDDD0)) 
    \id_to_exe_bus[95]_INST_0 
       (.I0(\id_to_exe_bus[95] ),
        .I1(\id_to_exe_bus[95]_INST_0_i_2_n_0 ),
        .I2(mem_to_id_bus[31]),
        .I3(\id_to_exe_bus[95]_0 ),
        .I4(\id_to_exe_bus[95]_1 ),
        .O(\mem_to_id_bus[31] [63]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \id_to_exe_bus[95]_INST_0_i_2 
       (.I0(\id_to_exe_bus[64]_1 ),
        .I1(rdata11[31]),
        .I2(\id_to_exe_bus[64]_0 ),
        .I3(wb_to_rf_bus[31]),
        .I4(\id_to_exe_bus[64] ),
        .O(\id_to_exe_bus[95]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[28]_INST_0 
       (.I0(\id_to_if_bus[28] ),
        .I1(O[0]),
        .I2(\id_to_if_bus[28]_0 ),
        .I3(\id_to_if_bus[31] [0]),
        .O(id_to_if_bus[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[29]_INST_0 
       (.I0(\id_to_if_bus[28] ),
        .I1(O[1]),
        .I2(\id_to_if_bus[28]_0 ),
        .I3(\id_to_if_bus[31] [1]),
        .O(id_to_if_bus[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[30]_INST_0 
       (.I0(\id_to_if_bus[28] ),
        .I1(O[2]),
        .I2(\id_to_if_bus[28]_0 ),
        .I3(\id_to_if_bus[31] [2]),
        .O(id_to_if_bus[2]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \id_to_if_bus[31]_INST_0 
       (.I0(\id_to_if_bus[28] ),
        .I1(O[3]),
        .I2(\id_to_if_bus[28]_0 ),
        .I3(\id_to_if_bus[31] [3]),
        .O(id_to_if_bus[3]));
  LUT6 #(
    .INIT(64'hFF60000000000000)) 
    \id_to_if_bus[32]_INST_0 
       (.I0(\id_to_if_bus[32]_INST_0_i_1_n_0 ),
        .I1(Q[19]),
        .I2(id_valid_reg_3),
        .I3(\id_to_if_bus[32]_INST_0_i_3_n_0 ),
        .I4(\id_to_if_bus[32] ),
        .I5(id_valid),
        .O(id_to_if_bus[4]));
  LUT6 #(
    .INIT(64'hDDD0FFFF0000DDD0)) 
    \id_to_if_bus[32]_INST_0_i_1 
       (.I0(exe_to_id_bus[31]),
        .I1(\id_to_exe_bus[32] ),
        .I2(\id_to_if_bus[32]_INST_0_i_5_n_0 ),
        .I3(id_valid_reg),
        .I4(\id_to_if_bus[32]_INST_0_i_6_n_0 ),
        .I5(CO),
        .O(\id_to_if_bus[32]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \id_to_if_bus[32]_INST_0_i_11 
       (.I0(wb_to_rf_bus[31]),
        .I1(\id_to_exe_bus[64]_0 ),
        .I2(rdata11[31]),
        .I3(\id_to_exe_bus[64]_1 ),
        .O(\id_to_if_bus[32]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0078FFFF00CC00CC)) 
    \id_to_if_bus[32]_INST_0_i_3 
       (.I0(\id_to_if_bus[32]_0 ),
        .I1(Q[21]),
        .I2(Q[19]),
        .I3(\id_to_if_bus[32]_1 ),
        .I4(\id_to_if_bus[32]_INST_0_i_8_n_0 ),
        .I5(Q[20]),
        .O(\id_to_if_bus[32]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0004FFF7)) 
    \id_to_if_bus[32]_INST_0_i_5 
       (.I0(wb_to_rf_bus[31]),
        .I1(id_valid_i_4_0),
        .I2(id_valid_i_4_1),
        .I3(id_valid_i_4_2),
        .I4(rdata21[31]),
        .O(\id_to_if_bus[32]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBB0BBBBBBBBB)) 
    \id_to_if_bus[32]_INST_0_i_6 
       (.I0(\id_to_exe_bus[64] ),
        .I1(\id_to_if_bus[32]_INST_0_i_11_n_0 ),
        .I2(exe_to_id_bus[32]),
        .I3(rj_eq_rd_carry__1_i_1_0),
        .I4(rj_eq_rd_carry__1_i_1_1),
        .I5(exe_to_id_bus[31]),
        .O(\id_to_if_bus[32]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFBFFFFFF)) 
    \id_to_if_bus[32]_INST_0_i_8 
       (.I0(Q[21]),
        .I1(Q[22]),
        .I2(Q[24]),
        .I3(Q[23]),
        .I4(Q[19]),
        .I5(CO),
        .O(\id_to_if_bus[32]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8088808880808088)) 
    id_valid_i_1
       (.I0(resetn),
        .I1(id_valid_reg_1),
        .I2(id_valid_reg_2),
        .I3(\id_to_if_bus[32]_INST_0_i_3_n_0 ),
        .I4(id_valid_reg_3),
        .I5(id_valid_i_4_n_0),
        .O(resetn_0));
  LUT6 #(
    .INIT(64'h595959599A9A9A59)) 
    id_valid_i_4
       (.I0(Q[19]),
        .I1(CO),
        .I2(\id_to_if_bus[32]_INST_0_i_6_n_0 ),
        .I3(id_valid_reg),
        .I4(\id_to_if_bus[32]_INST_0_i_5_n_0 ),
        .I5(id_valid_reg_0),
        .O(id_valid_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r1_0_31_0_5
       (.ADDRA(rf_raddr1),
        .ADDRB(rf_raddr1),
        .ADDRC(rf_raddr1),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[1:0]),
        .DIB(wb_to_rf_bus[3:2]),
        .DIC(wb_to_rf_bus[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rdata11[1:0]),
        .DOB(rdata11[3:2]),
        .DOC(rdata11[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r1_0_31_12_17
       (.ADDRA(rf_raddr1),
        .ADDRB(rf_raddr1),
        .ADDRC(rf_raddr1),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[13:12]),
        .DIB(wb_to_rf_bus[15:14]),
        .DIC(wb_to_rf_bus[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rdata11[13:12]),
        .DOB(rdata11[15:14]),
        .DOC(rdata11[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r1_0_31_18_23
       (.ADDRA(rf_raddr1),
        .ADDRB(rf_raddr1),
        .ADDRC(rf_raddr1),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[19:18]),
        .DIB(wb_to_rf_bus[21:20]),
        .DIC(wb_to_rf_bus[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rdata11[19:18]),
        .DOB(rdata11[21:20]),
        .DOC(rdata11[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r1_0_31_24_29
       (.ADDRA(rf_raddr1),
        .ADDRB(rf_raddr1),
        .ADDRC(rf_raddr1),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[25:24]),
        .DIB(wb_to_rf_bus[27:26]),
        .DIC(wb_to_rf_bus[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rdata11[25:24]),
        .DOB(rdata11[27:26]),
        .DOC(rdata11[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31
       (.A0(wb_to_rf_bus[32]),
        .A1(wb_to_rf_bus[33]),
        .A2(wb_to_rf_bus[34]),
        .A3(wb_to_rf_bus[35]),
        .A4(wb_to_rf_bus[36]),
        .D(wb_to_rf_bus[30]),
        .DPO(rdata11[30]),
        .DPRA0(rf_raddr1[0]),
        .DPRA1(rf_raddr1[1]),
        .DPRA2(rf_raddr1[2]),
        .DPRA3(rf_raddr1[3]),
        .DPRA4(rf_raddr1[4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31__0
       (.A0(wb_to_rf_bus[32]),
        .A1(wb_to_rf_bus[33]),
        .A2(wb_to_rf_bus[34]),
        .A3(wb_to_rf_bus[35]),
        .A4(wb_to_rf_bus[36]),
        .D(wb_to_rf_bus[31]),
        .DPO(rdata11[31]),
        .DPRA0(rf_raddr1[0]),
        .DPRA1(rf_raddr1[1]),
        .DPRA2(rf_raddr1[2]),
        .DPRA3(rf_raddr1[3]),
        .DPRA4(rf_raddr1[4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r1_0_31_6_11
       (.ADDRA(rf_raddr1),
        .ADDRB(rf_raddr1),
        .ADDRC(rf_raddr1),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[7:6]),
        .DIB(wb_to_rf_bus[9:8]),
        .DIC(wb_to_rf_bus[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rdata11[7:6]),
        .DOB(rdata11[9:8]),
        .DOC(rdata11[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r2_0_31_0_5
       (.ADDRA(raddr2),
        .ADDRB(raddr2),
        .ADDRC(raddr2),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[1:0]),
        .DIB(wb_to_rf_bus[3:2]),
        .DIC(wb_to_rf_bus[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rdata21[1:0]),
        .DOB(rdata21[3:2]),
        .DOC(rdata21[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r2_0_31_0_5_i_1
       (.I0(Q[9]),
        .I1(\id_data_reg[22] ),
        .I2(Q[4]),
        .O(raddr2[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r2_0_31_0_5_i_2
       (.I0(Q[8]),
        .I1(\id_data_reg[22] ),
        .I2(Q[3]),
        .O(raddr2[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r2_0_31_0_5_i_3
       (.I0(Q[7]),
        .I1(\id_data_reg[22] ),
        .I2(Q[2]),
        .O(raddr2[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r2_0_31_0_5_i_4
       (.I0(Q[6]),
        .I1(\id_data_reg[22] ),
        .I2(Q[1]),
        .O(raddr2[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r2_0_31_0_5_i_5
       (.I0(Q[5]),
        .I1(\id_data_reg[22] ),
        .I2(Q[0]),
        .O(raddr2[0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r2_0_31_12_17
       (.ADDRA(raddr2),
        .ADDRB(raddr2),
        .ADDRC(raddr2),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[13:12]),
        .DIB(wb_to_rf_bus[15:14]),
        .DIC(wb_to_rf_bus[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rdata21[13:12]),
        .DOB(rdata21[15:14]),
        .DOC(rdata21[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r2_0_31_18_23
       (.ADDRA(raddr2),
        .ADDRB(raddr2),
        .ADDRC(raddr2),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[19:18]),
        .DIB(wb_to_rf_bus[21:20]),
        .DIC(wb_to_rf_bus[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rdata21[19:18]),
        .DOB(rdata21[21:20]),
        .DOC(rdata21[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r2_0_31_24_29
       (.ADDRA(raddr2),
        .ADDRB(raddr2),
        .ADDRC(raddr2),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[25:24]),
        .DIB(wb_to_rf_bus[27:26]),
        .DIC(wb_to_rf_bus[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rdata21[25:24]),
        .DOB(rdata21[27:26]),
        .DOC(rdata21[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31
       (.A0(wb_to_rf_bus[32]),
        .A1(wb_to_rf_bus[33]),
        .A2(wb_to_rf_bus[34]),
        .A3(wb_to_rf_bus[35]),
        .A4(wb_to_rf_bus[36]),
        .D(wb_to_rf_bus[30]),
        .DPO(rdata21[30]),
        .DPRA0(raddr2[0]),
        .DPRA1(raddr2[1]),
        .DPRA2(raddr2[2]),
        .DPRA3(raddr2[3]),
        .DPRA4(raddr2[4]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31__0
       (.A0(wb_to_rf_bus[32]),
        .A1(wb_to_rf_bus[33]),
        .A2(wb_to_rf_bus[34]),
        .A3(wb_to_rf_bus[35]),
        .A4(wb_to_rf_bus[36]),
        .D(wb_to_rf_bus[31]),
        .DPO(rdata21[31]),
        .DPRA0(raddr2[0]),
        .DPRA1(raddr2[1]),
        .DPRA2(raddr2[2]),
        .DPRA3(raddr2[3]),
        .DPRA4(raddr2[4]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/u_regfile/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r2_0_31_6_11
       (.ADDRA(raddr2),
        .ADDRB(raddr2),
        .ADDRC(raddr2),
        .ADDRD(wb_to_rf_bus[36:32]),
        .DIA(wb_to_rf_bus[7:6]),
        .DIB(wb_to_rf_bus[9:8]),
        .DIC(wb_to_rf_bus[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rdata21[7:6]),
        .DOB(rdata21[9:8]),
        .DOC(rdata21[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(wb_to_rf_bus[37]));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    rj_eq_rd_carry__0_i_1
       (.I0(\id_to_exe_bus[86]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__1_i_10_n_0),
        .I2(\exe_to_id_bus[23]_0 ),
        .I3(rj_lt_rd_unsign_carry__1_i_9_n_0),
        .I4(rj_lt_rd_unsign_carry__1_i_11_n_0),
        .I5(\id_to_exe_bus[85]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[22] [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rj_eq_rd_carry__0_i_2
       (.I0(\id_to_exe_bus[82]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__1_i_14_n_0),
        .I2(\id_to_exe_bus[83]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__1_i_13_n_0),
        .I4(rj_lt_rd_unsign_carry__1_i_12_n_0),
        .I5(\id_to_exe_bus[84]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[22] [2]));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    rj_eq_rd_carry__0_i_3
       (.I0(\id_to_exe_bus[80]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__1_i_16_n_0),
        .I2(exe_to_id_bus_17_sn_1),
        .I3(rj_lt_rd_unsign_carry__1_i_15_n_0),
        .I4(rj_lt_rd_unsign_carry__0_i_9_n_0),
        .I5(\id_to_exe_bus[79]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[22] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rj_eq_rd_carry__0_i_4
       (.I0(\id_to_exe_bus[76]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__0_i_12_n_0),
        .I2(\id_to_exe_bus[77]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__0_i_11_n_0),
        .I4(rj_lt_rd_unsign_carry__0_i_10_n_0),
        .I5(\id_to_exe_bus[78]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[22] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_eq_rd_carry__1_i_1
       (.I0(rj_lt_rd_unsign_carry__2_i_9_n_0),
        .I1(\id_to_exe_bus[94]_INST_0_i_1_n_0 ),
        .I2(\id_to_if_bus[32]_INST_0_i_6_n_0 ),
        .I3(rj_lt_rd_unsign_carry__2_i_10_n_0),
        .O(\wb_to_rf_bus[30] [2]));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    rj_eq_rd_carry__1_i_2
       (.I0(\id_to_exe_bus[92]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__2_i_12_n_0),
        .I2(exe_to_id_bus_29_sn_1),
        .I3(rj_lt_rd_unsign_carry__2_i_11_n_0),
        .I4(rj_lt_rd_unsign_carry__2_i_13_n_0),
        .I5(\id_to_exe_bus[91]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[30] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rj_eq_rd_carry__1_i_3
       (.I0(\id_to_exe_bus[88]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__2_i_16_n_0),
        .I2(\id_to_exe_bus[89]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__2_i_15_n_0),
        .I4(rj_lt_rd_unsign_carry__2_i_14_n_0),
        .I5(\id_to_exe_bus[90]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[30] [0]));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    rj_eq_rd_carry_i_1
       (.I0(\id_to_exe_bus[74]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__0_i_14_n_0),
        .I2(\exe_to_id_bus[11]_0 ),
        .I3(rj_lt_rd_unsign_carry__0_i_13_n_0),
        .I4(rj_lt_rd_unsign_carry__0_i_15_n_0),
        .I5(\id_to_exe_bus[73]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[10] [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rj_eq_rd_carry_i_2
       (.I0(\id_to_exe_bus[70]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry_i_10_n_0),
        .I2(\id_to_exe_bus[71]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry_i_9_n_0),
        .I4(rj_lt_rd_unsign_carry__0_i_16_n_0),
        .I5(\id_to_exe_bus[72]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[10] [2]));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    rj_eq_rd_carry_i_3
       (.I0(\id_to_exe_bus[68]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry_i_12_n_0),
        .I2(exe_to_id_bus_5_sn_1),
        .I3(rj_lt_rd_unsign_carry_i_11_n_0),
        .I4(rj_lt_rd_unsign_carry_i_13_n_0),
        .I5(\id_to_exe_bus[67]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[10] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rj_eq_rd_carry_i_4
       (.I0(\id_to_exe_bus[64]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry_i_16_n_0),
        .I2(\id_to_exe_bus[65]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry_i_15_n_0),
        .I4(rj_lt_rd_unsign_carry_i_14_n_0),
        .I5(\id_to_exe_bus[66]_INST_0_i_1_n_0 ),
        .O(\exe_to_id_bus[10] [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry__0_i_1
       (.I0(\id_to_exe_bus[79]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__0_i_9_n_0),
        .I2(\id_to_exe_bus[78]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__0_i_10_n_0),
        .O(\exe_to_id_bus[15]_0 [3]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_10
       (.I0(wb_to_rf_bus[14]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[14]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[14]),
        .O(rj_lt_rd_unsign_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_11
       (.I0(wb_to_rf_bus[13]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[13]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[13]),
        .O(rj_lt_rd_unsign_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_12
       (.I0(wb_to_rf_bus[12]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[12]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[12]),
        .O(rj_lt_rd_unsign_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_13
       (.I0(wb_to_rf_bus[11]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[11]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[11]),
        .O(rj_lt_rd_unsign_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_14
       (.I0(wb_to_rf_bus[10]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[10]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[10]),
        .O(rj_lt_rd_unsign_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_15
       (.I0(wb_to_rf_bus[9]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[9]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[9]),
        .O(rj_lt_rd_unsign_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_16
       (.I0(wb_to_rf_bus[8]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[8]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[8]),
        .O(rj_lt_rd_unsign_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry__0_i_2
       (.I0(\id_to_exe_bus[77]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__0_i_11_n_0),
        .I2(\id_to_exe_bus[76]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__0_i_12_n_0),
        .O(\exe_to_id_bus[15]_0 [2]));
  LUT4 #(
    .INIT(16'h1171)) 
    rj_lt_rd_unsign_carry__0_i_3
       (.I0(\exe_to_id_bus[11]_0 ),
        .I1(rj_lt_rd_unsign_carry__0_i_13_n_0),
        .I2(\id_to_exe_bus[74]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__0_i_14_n_0),
        .O(\exe_to_id_bus[15]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry__0_i_4
       (.I0(\id_to_exe_bus[73]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__0_i_15_n_0),
        .I2(\id_to_exe_bus[72]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__0_i_16_n_0),
        .O(\exe_to_id_bus[15]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__0_i_5
       (.I0(rj_lt_rd_unsign_carry__0_i_9_n_0),
        .I1(\id_to_exe_bus[79]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry__0_i_10_n_0),
        .I3(\id_to_exe_bus[78]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[15] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__0_i_6
       (.I0(rj_lt_rd_unsign_carry__0_i_11_n_0),
        .I1(\id_to_exe_bus[77]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry__0_i_12_n_0),
        .I3(\id_to_exe_bus[76]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[15] [2]));
  LUT4 #(
    .INIT(16'h6006)) 
    rj_lt_rd_unsign_carry__0_i_7
       (.I0(rj_lt_rd_unsign_carry__0_i_13_n_0),
        .I1(\exe_to_id_bus[11]_0 ),
        .I2(rj_lt_rd_unsign_carry__0_i_14_n_0),
        .I3(\id_to_exe_bus[74]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[15] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__0_i_8
       (.I0(rj_lt_rd_unsign_carry__0_i_15_n_0),
        .I1(\id_to_exe_bus[73]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry__0_i_16_n_0),
        .I3(\id_to_exe_bus[72]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[15] [0]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__0_i_9
       (.I0(wb_to_rf_bus[15]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[15]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[15]),
        .O(rj_lt_rd_unsign_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h1171)) 
    rj_lt_rd_unsign_carry__1_i_1
       (.I0(\exe_to_id_bus[23]_0 ),
        .I1(rj_lt_rd_unsign_carry__1_i_9_n_0),
        .I2(\id_to_exe_bus[86]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__1_i_10_n_0),
        .O(\exe_to_id_bus[23] [3]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_10
       (.I0(wb_to_rf_bus[22]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[22]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[22]),
        .O(rj_lt_rd_unsign_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_11
       (.I0(wb_to_rf_bus[21]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[21]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[21]),
        .O(rj_lt_rd_unsign_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_12
       (.I0(wb_to_rf_bus[20]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[20]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[20]),
        .O(rj_lt_rd_unsign_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_13
       (.I0(wb_to_rf_bus[19]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[19]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[19]),
        .O(rj_lt_rd_unsign_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_14
       (.I0(wb_to_rf_bus[18]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[18]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[18]),
        .O(rj_lt_rd_unsign_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_15
       (.I0(wb_to_rf_bus[17]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[17]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[17]),
        .O(rj_lt_rd_unsign_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_16
       (.I0(wb_to_rf_bus[16]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[16]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[16]),
        .O(rj_lt_rd_unsign_carry__1_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry__1_i_2
       (.I0(\id_to_exe_bus[85]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__1_i_11_n_0),
        .I2(\id_to_exe_bus[84]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__1_i_12_n_0),
        .O(\exe_to_id_bus[23] [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry__1_i_3
       (.I0(\id_to_exe_bus[83]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__1_i_13_n_0),
        .I2(\id_to_exe_bus[82]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__1_i_14_n_0),
        .O(\exe_to_id_bus[23] [1]));
  LUT4 #(
    .INIT(16'h1171)) 
    rj_lt_rd_unsign_carry__1_i_4
       (.I0(exe_to_id_bus_17_sn_1),
        .I1(rj_lt_rd_unsign_carry__1_i_15_n_0),
        .I2(\id_to_exe_bus[80]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__1_i_16_n_0),
        .O(\exe_to_id_bus[23] [0]));
  LUT4 #(
    .INIT(16'h6006)) 
    rj_lt_rd_unsign_carry__1_i_5
       (.I0(rj_lt_rd_unsign_carry__1_i_9_n_0),
        .I1(\exe_to_id_bus[23]_0 ),
        .I2(rj_lt_rd_unsign_carry__1_i_10_n_0),
        .I3(\id_to_exe_bus[86]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[23] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__1_i_6
       (.I0(rj_lt_rd_unsign_carry__1_i_11_n_0),
        .I1(\id_to_exe_bus[85]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry__1_i_12_n_0),
        .I3(\id_to_exe_bus[84]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[23] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__1_i_7
       (.I0(rj_lt_rd_unsign_carry__1_i_13_n_0),
        .I1(\id_to_exe_bus[83]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry__1_i_14_n_0),
        .I3(\id_to_exe_bus[82]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[23] [1]));
  LUT4 #(
    .INIT(16'h6006)) 
    rj_lt_rd_unsign_carry__1_i_8
       (.I0(rj_lt_rd_unsign_carry__1_i_15_n_0),
        .I1(exe_to_id_bus_17_sn_1),
        .I2(rj_lt_rd_unsign_carry__1_i_16_n_0),
        .I3(\id_to_exe_bus[80]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[23] [0]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__1_i_9
       (.I0(wb_to_rf_bus[23]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[23]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[23]),
        .O(rj_lt_rd_unsign_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    rj_lt_rd_unsign_carry__2_i_1
       (.I0(\id_to_exe_bus[94]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__2_i_9_n_0),
        .I2(\id_to_if_bus[32]_INST_0_i_6_n_0 ),
        .I3(rj_lt_rd_unsign_carry__2_i_10_n_0),
        .O(\exe_to_id_bus[30] [3]));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    rj_lt_rd_unsign_carry__2_i_10
       (.I0(id_valid_reg),
        .I1(wb_to_rf_bus[31]),
        .I2(\id_to_exe_bus[62] ),
        .I3(rdata21[31]),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[31]),
        .O(rj_lt_rd_unsign_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__2_i_11
       (.I0(wb_to_rf_bus[29]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[29]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[29]),
        .O(rj_lt_rd_unsign_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__2_i_12
       (.I0(wb_to_rf_bus[28]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[28]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[28]),
        .O(rj_lt_rd_unsign_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__2_i_13
       (.I0(wb_to_rf_bus[27]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[27]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[27]),
        .O(rj_lt_rd_unsign_carry__2_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__2_i_14
       (.I0(wb_to_rf_bus[26]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[26]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[26]),
        .O(rj_lt_rd_unsign_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__2_i_15
       (.I0(wb_to_rf_bus[25]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[25]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[25]),
        .O(rj_lt_rd_unsign_carry__2_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__2_i_16
       (.I0(wb_to_rf_bus[24]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[24]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[24]),
        .O(rj_lt_rd_unsign_carry__2_i_16_n_0));
  LUT4 #(
    .INIT(16'h1171)) 
    rj_lt_rd_unsign_carry__2_i_2
       (.I0(exe_to_id_bus_29_sn_1),
        .I1(rj_lt_rd_unsign_carry__2_i_11_n_0),
        .I2(\id_to_exe_bus[92]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__2_i_12_n_0),
        .O(\exe_to_id_bus[30] [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry__2_i_3
       (.I0(\id_to_exe_bus[91]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__2_i_13_n_0),
        .I2(\id_to_exe_bus[90]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__2_i_14_n_0),
        .O(\exe_to_id_bus[30] [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry__2_i_4
       (.I0(\id_to_exe_bus[89]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry__2_i_15_n_0),
        .I2(\id_to_exe_bus[88]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry__2_i_16_n_0),
        .O(\exe_to_id_bus[30] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__2_i_5
       (.I0(rj_lt_rd_unsign_carry__2_i_9_n_0),
        .I1(\id_to_exe_bus[94]_INST_0_i_1_n_0 ),
        .I2(\id_to_if_bus[32]_INST_0_i_6_n_0 ),
        .I3(rj_lt_rd_unsign_carry__2_i_10_n_0),
        .O(\wb_to_rf_bus[30]_0 [3]));
  LUT4 #(
    .INIT(16'h6006)) 
    rj_lt_rd_unsign_carry__2_i_6
       (.I0(rj_lt_rd_unsign_carry__2_i_11_n_0),
        .I1(exe_to_id_bus_29_sn_1),
        .I2(rj_lt_rd_unsign_carry__2_i_12_n_0),
        .I3(\id_to_exe_bus[92]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[30]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__2_i_7
       (.I0(rj_lt_rd_unsign_carry__2_i_13_n_0),
        .I1(\id_to_exe_bus[91]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry__2_i_14_n_0),
        .I3(\id_to_exe_bus[90]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[30]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry__2_i_8
       (.I0(rj_lt_rd_unsign_carry__2_i_15_n_0),
        .I1(\id_to_exe_bus[89]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry__2_i_16_n_0),
        .I3(\id_to_exe_bus[88]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[30]_0 [0]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry__2_i_9
       (.I0(wb_to_rf_bus[30]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[30]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[30]),
        .O(rj_lt_rd_unsign_carry__2_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry_i_1
       (.I0(\id_to_exe_bus[71]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry_i_9_n_0),
        .I2(\id_to_exe_bus[70]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry_i_10_n_0),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_10
       (.I0(wb_to_rf_bus[6]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[6]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[6]),
        .O(rj_lt_rd_unsign_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_11
       (.I0(wb_to_rf_bus[5]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[5]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[5]),
        .O(rj_lt_rd_unsign_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_12
       (.I0(wb_to_rf_bus[4]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[4]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[4]),
        .O(rj_lt_rd_unsign_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_13
       (.I0(wb_to_rf_bus[3]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[3]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[3]),
        .O(rj_lt_rd_unsign_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_14
       (.I0(wb_to_rf_bus[2]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[2]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[2]),
        .O(rj_lt_rd_unsign_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_15
       (.I0(wb_to_rf_bus[1]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[1]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[1]),
        .O(rj_lt_rd_unsign_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_16
       (.I0(wb_to_rf_bus[0]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[0]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[0]),
        .O(rj_lt_rd_unsign_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h1171)) 
    rj_lt_rd_unsign_carry_i_2
       (.I0(exe_to_id_bus_5_sn_1),
        .I1(rj_lt_rd_unsign_carry_i_11_n_0),
        .I2(\id_to_exe_bus[68]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry_i_12_n_0),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry_i_3
       (.I0(\id_to_exe_bus[67]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry_i_13_n_0),
        .I2(\id_to_exe_bus[66]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry_i_14_n_0),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    rj_lt_rd_unsign_carry_i_4
       (.I0(\id_to_exe_bus[65]_INST_0_i_1_n_0 ),
        .I1(rj_lt_rd_unsign_carry_i_15_n_0),
        .I2(\id_to_exe_bus[64]_INST_0_i_1_n_0 ),
        .I3(rj_lt_rd_unsign_carry_i_16_n_0),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry_i_5
       (.I0(rj_lt_rd_unsign_carry_i_9_n_0),
        .I1(\id_to_exe_bus[71]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry_i_10_n_0),
        .I3(\id_to_exe_bus[70]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[7] [3]));
  LUT4 #(
    .INIT(16'h6006)) 
    rj_lt_rd_unsign_carry_i_6
       (.I0(rj_lt_rd_unsign_carry_i_11_n_0),
        .I1(exe_to_id_bus_5_sn_1),
        .I2(rj_lt_rd_unsign_carry_i_12_n_0),
        .I3(\id_to_exe_bus[68]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[7] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry_i_7
       (.I0(rj_lt_rd_unsign_carry_i_13_n_0),
        .I1(\id_to_exe_bus[67]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry_i_14_n_0),
        .I3(\id_to_exe_bus[66]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[7] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    rj_lt_rd_unsign_carry_i_8
       (.I0(rj_lt_rd_unsign_carry_i_15_n_0),
        .I1(\id_to_exe_bus[65]_INST_0_i_1_n_0 ),
        .I2(rj_lt_rd_unsign_carry_i_16_n_0),
        .I3(\id_to_exe_bus[64]_INST_0_i_1_n_0 ),
        .O(\wb_to_rf_bus[7] [0]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    rj_lt_rd_unsign_carry_i_9
       (.I0(wb_to_rf_bus[7]),
        .I1(\id_to_exe_bus[62] ),
        .I2(rdata21[7]),
        .I3(id_valid_reg),
        .I4(\id_to_exe_bus[32] ),
        .I5(exe_to_id_bus[7]),
        .O(rj_lt_rd_unsign_carry_i_9_n_0));
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
