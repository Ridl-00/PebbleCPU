// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:04:57 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_mem_stage_0_0/mycpu_top_block_mem_stage_0_0_sim_netlist.v
// Design      : mycpu_top_block_mem_stage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mycpu_top_block_mem_stage_0_0,mem_stage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mem_stage,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module mycpu_top_block_mem_stage_0_0
   (clk,
    resetn,
    mem_allowin,
    exe_to_mem_valid,
    exe_to_mem_bus,
    wb_allowin,
    mem_to_wb_valid,
    mem_to_wb_bus,
    mem_to_id_bus,
    data_sram_rdata,
    excp_flush,
    ertn_flush,
    refetch_flush,
    mem_flush);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
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

  wire \<const0> ;
  wire clk;
  wire [31:0]data_sram_rdata;
  wire ertn_flush;
  wire excp_flush;
  wire [169:0]exe_to_mem_bus;
  wire exe_to_mem_valid;
  wire mem_allowin;
  wire mem_flush;
  wire [38:37]\^mem_to_id_bus ;
  wire [167:0]\^mem_to_wb_bus ;
  wire mem_to_wb_valid;
  wire refetch_flush;
  wire resetn;
  wire wb_allowin;

  assign mem_to_id_bus[38:37] = \^mem_to_id_bus [38:37];
  assign mem_to_id_bus[36:0] = \^mem_to_wb_bus [68:32];
  assign mem_to_wb_bus[167:135] = \^mem_to_wb_bus [167:135];
  assign mem_to_wb_bus[134] = \<const0> ;
  assign mem_to_wb_bus[133] = \<const0> ;
  assign mem_to_wb_bus[132] = \<const0> ;
  assign mem_to_wb_bus[131] = \<const0> ;
  assign mem_to_wb_bus[130] = \<const0> ;
  assign mem_to_wb_bus[129] = \<const0> ;
  assign mem_to_wb_bus[128:0] = \^mem_to_wb_bus [128:0];
  GND GND
       (.G(\<const0> ));
  mycpu_top_block_mem_stage_0_0_mem_stage inst
       (.clk(clk),
        .data_sram_rdata(data_sram_rdata),
        .ertn_flush(ertn_flush),
        .excp_flush(excp_flush),
        .exe_to_mem_bus({exe_to_mem_bus[169:75],exe_to_mem_bus[70:0]}),
        .exe_to_mem_valid(exe_to_mem_valid),
        .mem_allowin(mem_allowin),
        .mem_flush(mem_flush),
        .mem_to_id_bus(\^mem_to_id_bus ),
        .mem_to_wb_bus({\^mem_to_wb_bus [167:135],\^mem_to_wb_bus [128:0]}),
        .mem_valid_reg_0(mem_to_wb_valid),
        .refetch_flush(refetch_flush),
        .resetn(resetn),
        .wb_allowin(wb_allowin));
endmodule

(* ORIG_REF_NAME = "mem_stage" *) 
module mycpu_top_block_mem_stage_0_0_mem_stage
   (mem_to_wb_bus,
    mem_valid_reg_0,
    mem_allowin,
    mem_to_id_bus,
    mem_flush,
    data_sram_rdata,
    exe_to_mem_bus,
    clk,
    resetn,
    excp_flush,
    ertn_flush,
    refetch_flush,
    exe_to_mem_valid,
    wb_allowin);
  output [161:0]mem_to_wb_bus;
  output mem_valid_reg_0;
  output mem_allowin;
  output [1:0]mem_to_id_bus;
  output mem_flush;
  input [31:0]data_sram_rdata;
  input [165:0]exe_to_mem_bus;
  input clk;
  input resetn;
  input excp_flush;
  input ertn_flush;
  input refetch_flush;
  input exe_to_mem_valid;
  input wb_allowin;

  wire clk;
  wire [31:0]data_sram_rdata;
  wire ertn_flush;
  wire excp_flush;
  wire [165:0]exe_to_mem_bus;
  wire exe_to_mem_valid;
  wire mem_allowin;
  wire mem_data0;
  wire \mem_data_reg_n_0_[136] ;
  wire \mem_data_reg_n_0_[32] ;
  wire \mem_data_reg_n_0_[33] ;
  wire \mem_data_reg_n_0_[34] ;
  wire \mem_data_reg_n_0_[35] ;
  wire \mem_data_reg_n_0_[36] ;
  wire \mem_data_reg_n_0_[37] ;
  wire \mem_data_reg_n_0_[38] ;
  wire \mem_data_reg_n_0_[39] ;
  wire \mem_data_reg_n_0_[40] ;
  wire \mem_data_reg_n_0_[41] ;
  wire \mem_data_reg_n_0_[42] ;
  wire \mem_data_reg_n_0_[43] ;
  wire \mem_data_reg_n_0_[44] ;
  wire \mem_data_reg_n_0_[45] ;
  wire \mem_data_reg_n_0_[46] ;
  wire \mem_data_reg_n_0_[47] ;
  wire \mem_data_reg_n_0_[48] ;
  wire \mem_data_reg_n_0_[49] ;
  wire \mem_data_reg_n_0_[50] ;
  wire \mem_data_reg_n_0_[51] ;
  wire \mem_data_reg_n_0_[52] ;
  wire \mem_data_reg_n_0_[53] ;
  wire \mem_data_reg_n_0_[54] ;
  wire \mem_data_reg_n_0_[55] ;
  wire \mem_data_reg_n_0_[56] ;
  wire \mem_data_reg_n_0_[57] ;
  wire \mem_data_reg_n_0_[58] ;
  wire \mem_data_reg_n_0_[59] ;
  wire \mem_data_reg_n_0_[60] ;
  wire \mem_data_reg_n_0_[61] ;
  wire \mem_data_reg_n_0_[62] ;
  wire \mem_data_reg_n_0_[63] ;
  wire \mem_data_reg_n_0_[75] ;
  wire mem_flush;
  wire mem_load_op;
  wire mem_mem_sign_exted;
  wire [1:0]mem_to_id_bus;
  wire \mem_to_id_bus[0]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[0]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[0]_INST_0_i_3_n_0 ;
  wire \mem_to_id_bus[10]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[11]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[12]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[13]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[14]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[15]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[16]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[17]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[18]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[19]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[1]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[1]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[20]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[21]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[22]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[23]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[24]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[25]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[26]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[27]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[28]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[29]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[2]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[2]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[30]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[31]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[31]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[31]_INST_0_i_3_n_0 ;
  wire \mem_to_id_bus[31]_INST_0_i_4_n_0 ;
  wire \mem_to_id_bus[37]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[3]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[3]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[4]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[4]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[5]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[5]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[5]_INST_0_i_3_n_0 ;
  wire \mem_to_id_bus[6]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[6]_INST_0_i_2_n_0 ;
  wire \mem_to_id_bus[7]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[8]_INST_0_i_1_n_0 ;
  wire \mem_to_id_bus[9]_INST_0_i_1_n_0 ;
  wire [161:0]mem_to_wb_bus;
  wire mem_valid0__0;
  wire mem_valid_i_1_n_0;
  wire mem_valid_reg_0;
  wire p_1_in;
  wire refetch_flush;
  wire resetn;
  wire wb_allowin;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mem_allowin_INST_0
       (.I0(wb_allowin),
        .I1(mem_valid_reg_0),
        .O(mem_allowin));
  LUT3 #(
    .INIT(8'h8A)) 
    \mem_data[169]_i_1 
       (.I0(exe_to_mem_valid),
        .I1(wb_allowin),
        .I2(mem_valid_reg_0),
        .O(mem_data0));
  FDRE \mem_data_reg[0] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[0]),
        .Q(mem_to_wb_bus[0]),
        .R(1'b0));
  FDRE \mem_data_reg[100] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[96]),
        .Q(mem_to_wb_bus[93]),
        .R(1'b0));
  FDRE \mem_data_reg[101] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[97]),
        .Q(mem_to_wb_bus[94]),
        .R(1'b0));
  FDRE \mem_data_reg[102] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[98]),
        .Q(mem_to_wb_bus[95]),
        .R(1'b0));
  FDRE \mem_data_reg[103] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[99]),
        .Q(mem_to_wb_bus[96]),
        .R(1'b0));
  FDRE \mem_data_reg[104] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[100]),
        .Q(mem_to_wb_bus[97]),
        .R(1'b0));
  FDRE \mem_data_reg[105] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[101]),
        .Q(mem_to_wb_bus[98]),
        .R(1'b0));
  FDRE \mem_data_reg[106] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[102]),
        .Q(mem_to_wb_bus[99]),
        .R(1'b0));
  FDRE \mem_data_reg[107] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[103]),
        .Q(mem_to_wb_bus[100]),
        .R(1'b0));
  FDRE \mem_data_reg[108] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[104]),
        .Q(mem_to_wb_bus[101]),
        .R(1'b0));
  FDRE \mem_data_reg[109] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[105]),
        .Q(mem_to_wb_bus[102]),
        .R(1'b0));
  FDRE \mem_data_reg[10] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[10]),
        .Q(mem_to_wb_bus[10]),
        .R(1'b0));
  FDRE \mem_data_reg[110] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[106]),
        .Q(mem_to_wb_bus[103]),
        .R(1'b0));
  FDRE \mem_data_reg[111] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[107]),
        .Q(mem_to_wb_bus[104]),
        .R(1'b0));
  FDRE \mem_data_reg[112] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[108]),
        .Q(mem_to_wb_bus[105]),
        .R(1'b0));
  FDRE \mem_data_reg[113] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[109]),
        .Q(mem_to_wb_bus[106]),
        .R(1'b0));
  FDRE \mem_data_reg[114] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[110]),
        .Q(mem_to_wb_bus[107]),
        .R(1'b0));
  FDRE \mem_data_reg[115] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[111]),
        .Q(mem_to_wb_bus[108]),
        .R(1'b0));
  FDRE \mem_data_reg[116] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[112]),
        .Q(mem_to_wb_bus[109]),
        .R(1'b0));
  FDRE \mem_data_reg[117] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[113]),
        .Q(mem_to_wb_bus[110]),
        .R(1'b0));
  FDRE \mem_data_reg[118] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[114]),
        .Q(mem_to_wb_bus[111]),
        .R(1'b0));
  FDRE \mem_data_reg[119] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[115]),
        .Q(mem_to_wb_bus[112]),
        .R(1'b0));
  FDRE \mem_data_reg[11] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[11]),
        .Q(mem_to_wb_bus[11]),
        .R(1'b0));
  FDRE \mem_data_reg[120] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[116]),
        .Q(mem_to_wb_bus[113]),
        .R(1'b0));
  FDRE \mem_data_reg[121] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[117]),
        .Q(mem_to_wb_bus[114]),
        .R(1'b0));
  FDRE \mem_data_reg[122] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[118]),
        .Q(mem_to_wb_bus[115]),
        .R(1'b0));
  FDRE \mem_data_reg[123] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[119]),
        .Q(mem_to_wb_bus[116]),
        .R(1'b0));
  FDRE \mem_data_reg[124] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[120]),
        .Q(mem_to_wb_bus[117]),
        .R(1'b0));
  FDRE \mem_data_reg[125] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[121]),
        .Q(mem_to_wb_bus[118]),
        .R(1'b0));
  FDRE \mem_data_reg[126] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[122]),
        .Q(mem_to_wb_bus[119]),
        .R(1'b0));
  FDRE \mem_data_reg[127] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[123]),
        .Q(mem_to_wb_bus[120]),
        .R(1'b0));
  FDRE \mem_data_reg[128] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[124]),
        .Q(mem_to_wb_bus[121]),
        .R(1'b0));
  FDRE \mem_data_reg[129] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[125]),
        .Q(mem_to_wb_bus[122]),
        .R(1'b0));
  FDRE \mem_data_reg[12] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[12]),
        .Q(mem_to_wb_bus[12]),
        .R(1'b0));
  FDRE \mem_data_reg[130] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[126]),
        .Q(mem_to_wb_bus[123]),
        .R(1'b0));
  FDRE \mem_data_reg[131] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[127]),
        .Q(mem_to_wb_bus[124]),
        .R(1'b0));
  FDRE \mem_data_reg[132] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[128]),
        .Q(mem_to_wb_bus[125]),
        .R(1'b0));
  FDRE \mem_data_reg[133] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[129]),
        .Q(mem_to_wb_bus[126]),
        .R(1'b0));
  FDRE \mem_data_reg[134] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[130]),
        .Q(mem_to_wb_bus[127]),
        .R(1'b0));
  FDRE \mem_data_reg[135] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[131]),
        .Q(mem_to_wb_bus[128]),
        .R(1'b0));
  FDRE \mem_data_reg[136] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[132]),
        .Q(\mem_data_reg_n_0_[136] ),
        .R(1'b0));
  FDRE \mem_data_reg[137] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[133]),
        .Q(mem_mem_sign_exted),
        .R(1'b0));
  FDRE \mem_data_reg[138] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[134]),
        .Q(mem_to_wb_bus[129]),
        .R(1'b0));
  FDRE \mem_data_reg[139] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[135]),
        .Q(mem_to_wb_bus[130]),
        .R(1'b0));
  FDRE \mem_data_reg[13] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[13]),
        .Q(mem_to_wb_bus[13]),
        .R(1'b0));
  FDRE \mem_data_reg[140] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[136]),
        .Q(mem_to_wb_bus[131]),
        .R(1'b0));
  FDRE \mem_data_reg[141] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[137]),
        .Q(mem_to_wb_bus[132]),
        .R(1'b0));
  FDRE \mem_data_reg[142] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[138]),
        .Q(mem_to_wb_bus[133]),
        .R(1'b0));
  FDRE \mem_data_reg[143] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[139]),
        .Q(mem_to_wb_bus[134]),
        .R(1'b0));
  FDRE \mem_data_reg[144] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[140]),
        .Q(mem_to_wb_bus[135]),
        .R(1'b0));
  FDRE \mem_data_reg[145] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[141]),
        .Q(mem_to_wb_bus[136]),
        .R(1'b0));
  FDRE \mem_data_reg[146] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[142]),
        .Q(mem_to_wb_bus[137]),
        .R(1'b0));
  FDRE \mem_data_reg[147] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[143]),
        .Q(mem_to_wb_bus[138]),
        .R(1'b0));
  FDRE \mem_data_reg[148] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[144]),
        .Q(mem_to_wb_bus[139]),
        .R(1'b0));
  FDRE \mem_data_reg[149] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[145]),
        .Q(mem_to_wb_bus[140]),
        .R(1'b0));
  FDRE \mem_data_reg[14] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[14]),
        .Q(mem_to_wb_bus[14]),
        .R(1'b0));
  FDRE \mem_data_reg[150] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[146]),
        .Q(mem_to_wb_bus[141]),
        .R(1'b0));
  FDRE \mem_data_reg[151] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[147]),
        .Q(mem_to_wb_bus[142]),
        .R(1'b0));
  FDRE \mem_data_reg[152] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[148]),
        .Q(mem_to_wb_bus[143]),
        .R(1'b0));
  FDRE \mem_data_reg[153] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[149]),
        .Q(mem_to_wb_bus[144]),
        .R(1'b0));
  FDRE \mem_data_reg[154] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[150]),
        .Q(mem_to_wb_bus[145]),
        .R(1'b0));
  FDRE \mem_data_reg[155] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[151]),
        .Q(mem_to_wb_bus[146]),
        .R(1'b0));
  FDRE \mem_data_reg[156] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[152]),
        .Q(mem_to_wb_bus[147]),
        .R(1'b0));
  FDRE \mem_data_reg[157] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[153]),
        .Q(mem_to_wb_bus[148]),
        .R(1'b0));
  FDRE \mem_data_reg[158] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[154]),
        .Q(mem_to_wb_bus[149]),
        .R(1'b0));
  FDRE \mem_data_reg[159] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[155]),
        .Q(mem_to_wb_bus[150]),
        .R(1'b0));
  FDRE \mem_data_reg[15] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[15]),
        .Q(mem_to_wb_bus[15]),
        .R(1'b0));
  FDRE \mem_data_reg[160] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[156]),
        .Q(mem_to_wb_bus[151]),
        .R(1'b0));
  FDRE \mem_data_reg[161] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[157]),
        .Q(mem_to_wb_bus[152]),
        .R(1'b0));
  FDRE \mem_data_reg[162] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[158]),
        .Q(mem_to_wb_bus[153]),
        .R(1'b0));
  FDRE \mem_data_reg[163] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[159]),
        .Q(mem_to_wb_bus[154]),
        .R(1'b0));
  FDRE \mem_data_reg[164] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[160]),
        .Q(mem_to_wb_bus[155]),
        .R(1'b0));
  FDRE \mem_data_reg[165] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[161]),
        .Q(mem_to_wb_bus[156]),
        .R(1'b0));
  FDRE \mem_data_reg[166] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[162]),
        .Q(mem_to_wb_bus[157]),
        .R(1'b0));
  FDRE \mem_data_reg[167] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[163]),
        .Q(mem_to_wb_bus[158]),
        .R(1'b0));
  FDRE \mem_data_reg[168] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[164]),
        .Q(mem_to_wb_bus[159]),
        .R(1'b0));
  FDRE \mem_data_reg[169] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[165]),
        .Q(mem_to_wb_bus[160]),
        .R(1'b0));
  FDRE \mem_data_reg[16] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[16]),
        .Q(mem_to_wb_bus[16]),
        .R(1'b0));
  FDRE \mem_data_reg[17] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[17]),
        .Q(mem_to_wb_bus[17]),
        .R(1'b0));
  FDRE \mem_data_reg[18] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[18]),
        .Q(mem_to_wb_bus[18]),
        .R(1'b0));
  FDRE \mem_data_reg[19] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[19]),
        .Q(mem_to_wb_bus[19]),
        .R(1'b0));
  FDRE \mem_data_reg[1] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[1]),
        .Q(mem_to_wb_bus[1]),
        .R(1'b0));
  FDRE \mem_data_reg[20] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[20]),
        .Q(mem_to_wb_bus[20]),
        .R(1'b0));
  FDRE \mem_data_reg[21] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[21]),
        .Q(mem_to_wb_bus[21]),
        .R(1'b0));
  FDRE \mem_data_reg[22] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[22]),
        .Q(mem_to_wb_bus[22]),
        .R(1'b0));
  FDRE \mem_data_reg[23] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[23]),
        .Q(mem_to_wb_bus[23]),
        .R(1'b0));
  FDRE \mem_data_reg[24] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[24]),
        .Q(mem_to_wb_bus[24]),
        .R(1'b0));
  FDRE \mem_data_reg[25] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[25]),
        .Q(mem_to_wb_bus[25]),
        .R(1'b0));
  FDRE \mem_data_reg[26] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[26]),
        .Q(mem_to_wb_bus[26]),
        .R(1'b0));
  FDRE \mem_data_reg[27] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[27]),
        .Q(mem_to_wb_bus[27]),
        .R(1'b0));
  FDRE \mem_data_reg[28] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[28]),
        .Q(mem_to_wb_bus[28]),
        .R(1'b0));
  FDRE \mem_data_reg[29] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[29]),
        .Q(mem_to_wb_bus[29]),
        .R(1'b0));
  FDRE \mem_data_reg[2] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[2]),
        .Q(mem_to_wb_bus[2]),
        .R(1'b0));
  FDRE \mem_data_reg[30] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[30]),
        .Q(mem_to_wb_bus[30]),
        .R(1'b0));
  FDRE \mem_data_reg[31] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[31]),
        .Q(mem_to_wb_bus[31]),
        .R(1'b0));
  FDRE \mem_data_reg[32] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[32]),
        .Q(\mem_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \mem_data_reg[33] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[33]),
        .Q(\mem_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \mem_data_reg[34] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[34]),
        .Q(\mem_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \mem_data_reg[35] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[35]),
        .Q(\mem_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \mem_data_reg[36] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[36]),
        .Q(\mem_data_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \mem_data_reg[37] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[37]),
        .Q(\mem_data_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \mem_data_reg[38] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[38]),
        .Q(\mem_data_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \mem_data_reg[39] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[39]),
        .Q(\mem_data_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \mem_data_reg[3] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[3]),
        .Q(mem_to_wb_bus[3]),
        .R(1'b0));
  FDRE \mem_data_reg[40] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[40]),
        .Q(\mem_data_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \mem_data_reg[41] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[41]),
        .Q(\mem_data_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \mem_data_reg[42] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[42]),
        .Q(\mem_data_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \mem_data_reg[43] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[43]),
        .Q(\mem_data_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \mem_data_reg[44] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[44]),
        .Q(\mem_data_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \mem_data_reg[45] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[45]),
        .Q(\mem_data_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \mem_data_reg[46] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[46]),
        .Q(\mem_data_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \mem_data_reg[47] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[47]),
        .Q(\mem_data_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \mem_data_reg[48] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[48]),
        .Q(\mem_data_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \mem_data_reg[49] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[49]),
        .Q(\mem_data_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \mem_data_reg[4] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[4]),
        .Q(mem_to_wb_bus[4]),
        .R(1'b0));
  FDRE \mem_data_reg[50] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[50]),
        .Q(\mem_data_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \mem_data_reg[51] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[51]),
        .Q(\mem_data_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \mem_data_reg[52] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[52]),
        .Q(\mem_data_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \mem_data_reg[53] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[53]),
        .Q(\mem_data_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \mem_data_reg[54] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[54]),
        .Q(\mem_data_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \mem_data_reg[55] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[55]),
        .Q(\mem_data_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \mem_data_reg[56] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[56]),
        .Q(\mem_data_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \mem_data_reg[57] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[57]),
        .Q(\mem_data_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \mem_data_reg[58] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[58]),
        .Q(\mem_data_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \mem_data_reg[59] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[59]),
        .Q(\mem_data_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \mem_data_reg[5] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[5]),
        .Q(mem_to_wb_bus[5]),
        .R(1'b0));
  FDRE \mem_data_reg[60] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[60]),
        .Q(\mem_data_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \mem_data_reg[61] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[61]),
        .Q(\mem_data_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \mem_data_reg[62] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[62]),
        .Q(\mem_data_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \mem_data_reg[63] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[63]),
        .Q(\mem_data_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \mem_data_reg[64] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[64]),
        .Q(mem_to_wb_bus[64]),
        .R(1'b0));
  FDRE \mem_data_reg[65] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[65]),
        .Q(mem_to_wb_bus[65]),
        .R(1'b0));
  FDRE \mem_data_reg[66] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[66]),
        .Q(mem_to_wb_bus[66]),
        .R(1'b0));
  FDRE \mem_data_reg[67] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[67]),
        .Q(mem_to_wb_bus[67]),
        .R(1'b0));
  FDRE \mem_data_reg[68] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[68]),
        .Q(mem_to_wb_bus[68]),
        .R(1'b0));
  FDRE \mem_data_reg[69] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[69]),
        .Q(mem_to_wb_bus[69]),
        .R(1'b0));
  FDRE \mem_data_reg[6] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[6]),
        .Q(mem_to_wb_bus[6]),
        .R(1'b0));
  FDRE \mem_data_reg[70] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[70]),
        .Q(mem_load_op),
        .R(1'b0));
  FDRE \mem_data_reg[75] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[71]),
        .Q(\mem_data_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \mem_data_reg[76] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[72]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \mem_data_reg[77] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[73]),
        .Q(mem_to_wb_bus[70]),
        .R(1'b0));
  FDRE \mem_data_reg[78] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[74]),
        .Q(mem_to_wb_bus[71]),
        .R(1'b0));
  FDRE \mem_data_reg[79] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[75]),
        .Q(mem_to_wb_bus[72]),
        .R(1'b0));
  FDRE \mem_data_reg[7] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[7]),
        .Q(mem_to_wb_bus[7]),
        .R(1'b0));
  FDRE \mem_data_reg[80] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[76]),
        .Q(mem_to_wb_bus[73]),
        .R(1'b0));
  FDRE \mem_data_reg[81] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[77]),
        .Q(mem_to_wb_bus[74]),
        .R(1'b0));
  FDRE \mem_data_reg[82] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[78]),
        .Q(mem_to_wb_bus[75]),
        .R(1'b0));
  FDRE \mem_data_reg[83] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[79]),
        .Q(mem_to_wb_bus[76]),
        .R(1'b0));
  FDRE \mem_data_reg[84] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[80]),
        .Q(mem_to_wb_bus[77]),
        .R(1'b0));
  FDRE \mem_data_reg[85] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[81]),
        .Q(mem_to_wb_bus[78]),
        .R(1'b0));
  FDRE \mem_data_reg[86] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[82]),
        .Q(mem_to_wb_bus[79]),
        .R(1'b0));
  FDRE \mem_data_reg[87] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[83]),
        .Q(mem_to_wb_bus[80]),
        .R(1'b0));
  FDRE \mem_data_reg[88] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[84]),
        .Q(mem_to_wb_bus[81]),
        .R(1'b0));
  FDRE \mem_data_reg[89] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[85]),
        .Q(mem_to_wb_bus[82]),
        .R(1'b0));
  FDRE \mem_data_reg[8] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[8]),
        .Q(mem_to_wb_bus[8]),
        .R(1'b0));
  FDRE \mem_data_reg[90] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[86]),
        .Q(mem_to_wb_bus[83]),
        .R(1'b0));
  FDRE \mem_data_reg[91] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[87]),
        .Q(mem_to_wb_bus[84]),
        .R(1'b0));
  FDRE \mem_data_reg[92] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[88]),
        .Q(mem_to_wb_bus[85]),
        .R(1'b0));
  FDRE \mem_data_reg[93] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[89]),
        .Q(mem_to_wb_bus[86]),
        .R(1'b0));
  FDRE \mem_data_reg[94] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[90]),
        .Q(mem_to_wb_bus[87]),
        .R(1'b0));
  FDRE \mem_data_reg[95] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[91]),
        .Q(mem_to_wb_bus[88]),
        .R(1'b0));
  FDRE \mem_data_reg[96] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[92]),
        .Q(mem_to_wb_bus[89]),
        .R(1'b0));
  FDRE \mem_data_reg[97] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[93]),
        .Q(mem_to_wb_bus[90]),
        .R(1'b0));
  FDRE \mem_data_reg[98] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[94]),
        .Q(mem_to_wb_bus[91]),
        .R(1'b0));
  FDRE \mem_data_reg[99] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[95]),
        .Q(mem_to_wb_bus[92]),
        .R(1'b0));
  FDRE \mem_data_reg[9] 
       (.C(clk),
        .CE(mem_data0),
        .D(exe_to_mem_bus[9]),
        .Q(mem_to_wb_bus[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    mem_flush_INST_0
       (.I0(mem_valid_reg_0),
        .I1(mem_to_wb_bus[70]),
        .I2(mem_to_wb_bus[71]),
        .I3(mem_to_wb_bus[118]),
        .O(mem_flush));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF40000)) 
    \mem_to_id_bus[0]_INST_0 
       (.I0(\mem_to_id_bus[0]_INST_0_i_1_n_0 ),
        .I1(data_sram_rdata[0]),
        .I2(\mem_to_id_bus[0]_INST_0_i_2_n_0 ),
        .I3(\mem_to_id_bus[0]_INST_0_i_3_n_0 ),
        .I4(\mem_data_reg_n_0_[32] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[32]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \mem_to_id_bus[0]_INST_0_i_1 
       (.I0(\mem_data_reg_n_0_[32] ),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(p_1_in),
        .I3(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E00000FFFFFFFF)) 
    \mem_to_id_bus[0]_INST_0_i_2 
       (.I0(p_1_in),
        .I1(\mem_data_reg_n_0_[75] ),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(data_sram_rdata[16]),
        .I5(mem_load_op),
        .O(\mem_to_id_bus[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80A08000)) 
    \mem_to_id_bus[0]_INST_0_i_3 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(data_sram_rdata[24]),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[33] ),
        .I4(data_sram_rdata[8]),
        .O(\mem_to_id_bus[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[10]_INST_0 
       (.I0(\mem_to_id_bus[10]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[42] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[42]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[10]_INST_0_i_1 
       (.I0(data_sram_rdata[26]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[10]),
        .O(\mem_to_id_bus[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[11]_INST_0 
       (.I0(\mem_to_id_bus[11]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[43] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[43]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[11]_INST_0_i_1 
       (.I0(data_sram_rdata[27]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[11]),
        .O(\mem_to_id_bus[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[12]_INST_0 
       (.I0(\mem_to_id_bus[12]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[44] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[44]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[12]_INST_0_i_1 
       (.I0(data_sram_rdata[28]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[12]),
        .O(\mem_to_id_bus[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[13]_INST_0 
       (.I0(\mem_to_id_bus[13]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[45] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[45]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[13]_INST_0_i_1 
       (.I0(data_sram_rdata[29]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[13]),
        .O(\mem_to_id_bus[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[14]_INST_0 
       (.I0(\mem_to_id_bus[14]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[46] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[46]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[14]_INST_0_i_1 
       (.I0(data_sram_rdata[30]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[14]),
        .O(\mem_to_id_bus[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[15]_INST_0 
       (.I0(\mem_to_id_bus[15]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[47] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[47]));
  LUT6 #(
    .INIT(64'h232300FF20200000)) 
    \mem_to_id_bus[15]_INST_0_i_1 
       (.I0(data_sram_rdata[31]),
        .I1(\mem_data_reg_n_0_[32] ),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[15]),
        .O(\mem_to_id_bus[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[16]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[16]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[48] ),
        .O(mem_to_wb_bus[48]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[16]_INST_0_i_1 
       (.I0(data_sram_rdata[16]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[17]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[17]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[49] ),
        .O(mem_to_wb_bus[49]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[17]_INST_0_i_1 
       (.I0(data_sram_rdata[17]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[18]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[18]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[50] ),
        .O(mem_to_wb_bus[50]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[18]_INST_0_i_1 
       (.I0(data_sram_rdata[18]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[19]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[19]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[51] ),
        .O(mem_to_wb_bus[51]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[19]_INST_0_i_1 
       (.I0(data_sram_rdata[19]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \mem_to_id_bus[1]_INST_0 
       (.I0(\mem_to_id_bus[1]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[1]_INST_0_i_2_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_load_op),
        .I4(\mem_data_reg_n_0_[33] ),
        .O(mem_to_wb_bus[33]));
  LUT6 #(
    .INIT(64'h00F000CC44444444)) 
    \mem_to_id_bus[1]_INST_0_i_1 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(data_sram_rdata[1]),
        .I2(data_sram_rdata[17]),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(\mem_data_reg_n_0_[33] ),
        .I5(p_1_in),
        .O(\mem_to_id_bus[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h530053F0530F53FF)) 
    \mem_to_id_bus[1]_INST_0_i_2 
       (.I0(data_sram_rdata[25]),
        .I1(data_sram_rdata[9]),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(data_sram_rdata[17]),
        .I5(data_sram_rdata[1]),
        .O(\mem_to_id_bus[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[20]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[20]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[52] ),
        .O(mem_to_wb_bus[52]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[20]_INST_0_i_1 
       (.I0(data_sram_rdata[20]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[21]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[21]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[53] ),
        .O(mem_to_wb_bus[53]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[21]_INST_0_i_1 
       (.I0(data_sram_rdata[21]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[22]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[22]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[54] ),
        .O(mem_to_wb_bus[54]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[22]_INST_0_i_1 
       (.I0(data_sram_rdata[22]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[23]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[23]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[55] ),
        .O(mem_to_wb_bus[55]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[23]_INST_0_i_1 
       (.I0(data_sram_rdata[23]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[24]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[24]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[56] ),
        .O(mem_to_wb_bus[56]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[24]_INST_0_i_1 
       (.I0(data_sram_rdata[24]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[25]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[25]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[57] ),
        .O(mem_to_wb_bus[57]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[25]_INST_0_i_1 
       (.I0(data_sram_rdata[25]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[26]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[26]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[58] ),
        .O(mem_to_wb_bus[58]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[26]_INST_0_i_1 
       (.I0(data_sram_rdata[26]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[27]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[27]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[59] ),
        .O(mem_to_wb_bus[59]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[27]_INST_0_i_1 
       (.I0(data_sram_rdata[27]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[28]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[28]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[60] ),
        .O(mem_to_wb_bus[60]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[28]_INST_0_i_1 
       (.I0(data_sram_rdata[28]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[29]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[29]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[61] ),
        .O(mem_to_wb_bus[61]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[29]_INST_0_i_1 
       (.I0(data_sram_rdata[29]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0E00EEEEEEEE)) 
    \mem_to_id_bus[2]_INST_0 
       (.I0(\mem_data_reg_n_0_[34] ),
        .I1(mem_load_op),
        .I2(\mem_to_id_bus[5]_INST_0_i_1_n_0 ),
        .I3(data_sram_rdata[18]),
        .I4(\mem_to_id_bus[2]_INST_0_i_1_n_0 ),
        .I5(\mem_to_id_bus[2]_INST_0_i_2_n_0 ),
        .O(mem_to_wb_bus[34]));
  LUT6 #(
    .INIT(64'h111F0000FFFFFFFF)) 
    \mem_to_id_bus[2]_INST_0_i_1 
       (.I0(\mem_data_reg_n_0_[32] ),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(p_1_in),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(data_sram_rdata[2]),
        .I5(mem_load_op),
        .O(\mem_to_id_bus[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h777FF7FF)) 
    \mem_to_id_bus[2]_INST_0_i_2 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(\mem_data_reg_n_0_[32] ),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(data_sram_rdata[10]),
        .I4(data_sram_rdata[26]),
        .O(\mem_to_id_bus[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    \mem_to_id_bus[30]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I2(\mem_to_id_bus[30]_INST_0_i_1_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[62] ),
        .O(mem_to_wb_bus[62]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[30]_INST_0_i_1 
       (.I0(data_sram_rdata[30]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEE0000)) 
    \mem_to_id_bus[31]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_2_n_0 ),
        .I2(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I3(\mem_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I4(mem_load_op),
        .I5(\mem_data_reg_n_0_[63] ),
        .O(mem_to_wb_bus[63]));
  LUT6 #(
    .INIT(64'h3120000000000000)) 
    \mem_to_id_bus[31]_INST_0_i_1 
       (.I0(\mem_data_reg_n_0_[33] ),
        .I1(\mem_data_reg_n_0_[32] ),
        .I2(data_sram_rdata[31]),
        .I3(data_sram_rdata[15]),
        .I4(p_1_in),
        .I5(mem_mem_sign_exted),
        .O(\mem_to_id_bus[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_to_id_bus[31]_INST_0_i_2 
       (.I0(data_sram_rdata[31]),
        .I1(p_1_in),
        .I2(\mem_data_reg_n_0_[75] ),
        .O(\mem_to_id_bus[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F3300550F33FF55)) 
    \mem_to_id_bus[31]_INST_0_i_3 
       (.I0(data_sram_rdata[7]),
        .I1(data_sram_rdata[23]),
        .I2(data_sram_rdata[31]),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(\mem_data_reg_n_0_[33] ),
        .I5(data_sram_rdata[15]),
        .O(\mem_to_id_bus[31]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_to_id_bus[31]_INST_0_i_4 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(mem_mem_sign_exted),
        .O(\mem_to_id_bus[31]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \mem_to_id_bus[37]_INST_0 
       (.I0(\mem_to_id_bus[37]_INST_0_i_1_n_0 ),
        .I1(mem_to_wb_bus[69]),
        .I2(mem_valid_reg_0),
        .O(mem_to_id_bus[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mem_to_id_bus[37]_INST_0_i_1 
       (.I0(mem_to_wb_bus[67]),
        .I1(mem_to_wb_bus[64]),
        .I2(mem_to_wb_bus[65]),
        .I3(mem_to_wb_bus[68]),
        .I4(mem_to_wb_bus[66]),
        .O(\mem_to_id_bus[37]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_to_id_bus[38]_INST_0 
       (.I0(mem_load_op),
        .I1(mem_valid_reg_0),
        .O(mem_to_id_bus[1]));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \mem_to_id_bus[3]_INST_0 
       (.I0(\mem_to_id_bus[3]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[3]_INST_0_i_2_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_load_op),
        .I4(\mem_data_reg_n_0_[35] ),
        .O(mem_to_wb_bus[35]));
  LUT6 #(
    .INIT(64'h00F000CC44444444)) 
    \mem_to_id_bus[3]_INST_0_i_1 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(data_sram_rdata[3]),
        .I2(data_sram_rdata[19]),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(\mem_data_reg_n_0_[33] ),
        .I5(p_1_in),
        .O(\mem_to_id_bus[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h530053F0530F53FF)) 
    \mem_to_id_bus[3]_INST_0_i_2 
       (.I0(data_sram_rdata[27]),
        .I1(data_sram_rdata[11]),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(data_sram_rdata[19]),
        .I5(data_sram_rdata[3]),
        .O(\mem_to_id_bus[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \mem_to_id_bus[4]_INST_0 
       (.I0(\mem_to_id_bus[4]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[4]_INST_0_i_2_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_load_op),
        .I4(\mem_data_reg_n_0_[36] ),
        .O(mem_to_wb_bus[36]));
  LUT6 #(
    .INIT(64'h00F000CC44444444)) 
    \mem_to_id_bus[4]_INST_0_i_1 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(data_sram_rdata[4]),
        .I2(data_sram_rdata[20]),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(\mem_data_reg_n_0_[33] ),
        .I5(p_1_in),
        .O(\mem_to_id_bus[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h530053F0530F53FF)) 
    \mem_to_id_bus[4]_INST_0_i_2 
       (.I0(data_sram_rdata[28]),
        .I1(data_sram_rdata[12]),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(data_sram_rdata[20]),
        .I5(data_sram_rdata[4]),
        .O(\mem_to_id_bus[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF40000)) 
    \mem_to_id_bus[5]_INST_0 
       (.I0(\mem_to_id_bus[5]_INST_0_i_1_n_0 ),
        .I1(data_sram_rdata[21]),
        .I2(\mem_to_id_bus[5]_INST_0_i_2_n_0 ),
        .I3(\mem_to_id_bus[5]_INST_0_i_3_n_0 ),
        .I4(\mem_data_reg_n_0_[37] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[37]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF1F)) 
    \mem_to_id_bus[5]_INST_0_i_1 
       (.I0(p_1_in),
        .I1(\mem_data_reg_n_0_[75] ),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(\mem_data_reg_n_0_[32] ),
        .O(\mem_to_id_bus[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h111F0000FFFFFFFF)) 
    \mem_to_id_bus[5]_INST_0_i_2 
       (.I0(\mem_data_reg_n_0_[32] ),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(p_1_in),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(data_sram_rdata[5]),
        .I5(mem_load_op),
        .O(\mem_to_id_bus[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80A08000)) 
    \mem_to_id_bus[5]_INST_0_i_3 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(data_sram_rdata[29]),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[33] ),
        .I4(data_sram_rdata[13]),
        .O(\mem_to_id_bus[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \mem_to_id_bus[6]_INST_0 
       (.I0(\mem_to_id_bus[6]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[6]_INST_0_i_2_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_load_op),
        .I4(\mem_data_reg_n_0_[38] ),
        .O(mem_to_wb_bus[38]));
  LUT6 #(
    .INIT(64'h00F000CC44444444)) 
    \mem_to_id_bus[6]_INST_0_i_1 
       (.I0(\mem_data_reg_n_0_[75] ),
        .I1(data_sram_rdata[6]),
        .I2(data_sram_rdata[22]),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(\mem_data_reg_n_0_[33] ),
        .I5(p_1_in),
        .O(\mem_to_id_bus[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h530053F0530F53FF)) 
    \mem_to_id_bus[6]_INST_0_i_2 
       (.I0(data_sram_rdata[30]),
        .I1(data_sram_rdata[14]),
        .I2(\mem_data_reg_n_0_[33] ),
        .I3(\mem_data_reg_n_0_[32] ),
        .I4(data_sram_rdata[22]),
        .I5(data_sram_rdata[6]),
        .O(\mem_to_id_bus[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \mem_to_id_bus[7]_INST_0 
       (.I0(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I1(\mem_data_reg_n_0_[75] ),
        .I2(\mem_to_id_bus[7]_INST_0_i_1_n_0 ),
        .I3(mem_load_op),
        .I4(\mem_data_reg_n_0_[39] ),
        .O(mem_to_wb_bus[39]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[7]_INST_0_i_1 
       (.I0(data_sram_rdata[23]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[7]),
        .O(\mem_to_id_bus[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[8]_INST_0 
       (.I0(\mem_to_id_bus[8]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[40] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[40]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[8]_INST_0_i_1 
       (.I0(data_sram_rdata[24]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[8]),
        .O(\mem_to_id_bus[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFFFF0000)) 
    \mem_to_id_bus[9]_INST_0 
       (.I0(\mem_to_id_bus[9]_INST_0_i_1_n_0 ),
        .I1(\mem_to_id_bus[31]_INST_0_i_3_n_0 ),
        .I2(\mem_data_reg_n_0_[75] ),
        .I3(mem_mem_sign_exted),
        .I4(\mem_data_reg_n_0_[41] ),
        .I5(mem_load_op),
        .O(mem_to_wb_bus[41]));
  LUT6 #(
    .INIT(64'h0B0B00FF08080000)) 
    \mem_to_id_bus[9]_INST_0_i_1 
       (.I0(data_sram_rdata[25]),
        .I1(\mem_data_reg_n_0_[33] ),
        .I2(\mem_data_reg_n_0_[32] ),
        .I3(\mem_data_reg_n_0_[75] ),
        .I4(p_1_in),
        .I5(data_sram_rdata[9]),
        .O(\mem_to_id_bus[9]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mem_to_wb_bus[167]_INST_0 
       (.I0(mem_load_op),
        .I1(\mem_data_reg_n_0_[136] ),
        .O(mem_to_wb_bus[161]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    mem_valid0
       (.I0(resetn),
        .I1(excp_flush),
        .I2(ertn_flush),
        .I3(refetch_flush),
        .O(mem_valid0__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00BA)) 
    mem_valid_i_1
       (.I0(exe_to_mem_valid),
        .I1(wb_allowin),
        .I2(mem_valid_reg_0),
        .I3(mem_valid0__0),
        .O(mem_valid_i_1_n_0));
  FDRE mem_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_valid_i_1_n_0),
        .Q(mem_valid_reg_0),
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
