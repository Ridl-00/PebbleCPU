// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:04:56 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_if_stage_0_0/mycpu_top_block_if_stage_0_0_sim_netlist.v
// Design      : mycpu_top_block_if_stage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mycpu_top_block_if_stage_0_0,if_stage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "if_stage,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module mycpu_top_block_if_stage_0_0
   (clk,
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
    csr_plv);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input id_allowin;
  output if_to_id_valid;
  output [68:0]if_to_id_bus;
  input [33:0]id_to_if_bus;
  output inst_sram_en;
  output [3:0]inst_sram_we;
  output [31:0]inst_sram_addr;
  output [31:0]inst_sram_wdata;
  input [31:0]inst_sram_rdata;
  input excp_flush;
  input ertn_flush;
  input refetch_flush;
  input [31:0]wb_pc;
  input [31:0]csr_eentry;
  input [31:0]csr_era;
  input has_int;
  input [1:0]csr_plv;

  wire \<const0> ;
  wire clk;
  wire [31:0]csr_eentry;
  wire [31:0]csr_era;
  wire ertn_flush;
  wire excp_flush;
  wire id_allowin;
  wire [33:0]id_to_if_bus;
  wire [64:0]\^if_to_id_bus ;
  wire if_to_id_valid;
  wire [31:0]inst_sram_addr;
  wire inst_sram_en;
  wire [31:0]inst_sram_rdata;
  wire refetch_flush;
  wire resetn;
  wire [31:0]wb_pc;

  assign if_to_id_bus[68] = \^if_to_id_bus [64];
  assign if_to_id_bus[67] = \<const0> ;
  assign if_to_id_bus[66] = \<const0> ;
  assign if_to_id_bus[65] = \<const0> ;
  assign if_to_id_bus[64] = \^if_to_id_bus [64];
  assign if_to_id_bus[63:32] = inst_sram_rdata;
  assign if_to_id_bus[31:0] = \^if_to_id_bus [31:0];
  assign inst_sram_wdata[31] = \<const0> ;
  assign inst_sram_wdata[30] = \<const0> ;
  assign inst_sram_wdata[29] = \<const0> ;
  assign inst_sram_wdata[28] = \<const0> ;
  assign inst_sram_wdata[27] = \<const0> ;
  assign inst_sram_wdata[26] = \<const0> ;
  assign inst_sram_wdata[25] = \<const0> ;
  assign inst_sram_wdata[24] = \<const0> ;
  assign inst_sram_wdata[23] = \<const0> ;
  assign inst_sram_wdata[22] = \<const0> ;
  assign inst_sram_wdata[21] = \<const0> ;
  assign inst_sram_wdata[20] = \<const0> ;
  assign inst_sram_wdata[19] = \<const0> ;
  assign inst_sram_wdata[18] = \<const0> ;
  assign inst_sram_wdata[17] = \<const0> ;
  assign inst_sram_wdata[16] = \<const0> ;
  assign inst_sram_wdata[15] = \<const0> ;
  assign inst_sram_wdata[14] = \<const0> ;
  assign inst_sram_wdata[13] = \<const0> ;
  assign inst_sram_wdata[12] = \<const0> ;
  assign inst_sram_wdata[11] = \<const0> ;
  assign inst_sram_wdata[10] = \<const0> ;
  assign inst_sram_wdata[9] = \<const0> ;
  assign inst_sram_wdata[8] = \<const0> ;
  assign inst_sram_wdata[7] = \<const0> ;
  assign inst_sram_wdata[6] = \<const0> ;
  assign inst_sram_wdata[5] = \<const0> ;
  assign inst_sram_wdata[4] = \<const0> ;
  assign inst_sram_wdata[3] = \<const0> ;
  assign inst_sram_wdata[2] = \<const0> ;
  assign inst_sram_wdata[1] = \<const0> ;
  assign inst_sram_wdata[0] = \<const0> ;
  assign inst_sram_we[3] = \<const0> ;
  assign inst_sram_we[2] = \<const0> ;
  assign inst_sram_we[1] = \<const0> ;
  assign inst_sram_we[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mycpu_top_block_if_stage_0_0_if_stage inst
       (.clk(clk),
        .csr_eentry(csr_eentry),
        .csr_era(csr_era),
        .ertn_flush(ertn_flush),
        .excp_flush(excp_flush),
        .id_allowin(id_allowin),
        .id_to_if_bus(id_to_if_bus[32:0]),
        .if_to_id_bus({\^if_to_id_bus [64],\^if_to_id_bus [31:0]}),
        .if_to_id_valid(if_to_id_valid),
        .inst_sram_addr(inst_sram_addr),
        .inst_sram_en(inst_sram_en),
        .refetch_flush(refetch_flush),
        .resetn(resetn),
        .wb_pc(wb_pc));
endmodule

(* ORIG_REF_NAME = "if_stage" *) 
module mycpu_top_block_if_stage_0_0_if_stage
   (if_to_id_bus,
    inst_sram_en,
    inst_sram_addr,
    if_to_id_valid,
    clk,
    resetn,
    id_to_if_bus,
    id_allowin,
    ertn_flush,
    refetch_flush,
    excp_flush,
    csr_era,
    csr_eentry,
    wb_pc);
  output [32:0]if_to_id_bus;
  output inst_sram_en;
  output [31:0]inst_sram_addr;
  output if_to_id_valid;
  input clk;
  input resetn;
  input [32:0]id_to_if_bus;
  input id_allowin;
  input ertn_flush;
  input refetch_flush;
  input excp_flush;
  input [31:0]csr_era;
  input [31:0]csr_eentry;
  input [31:0]wb_pc;

  wire clk;
  wire [31:0]csr_eentry;
  wire [31:0]csr_era;
  wire ertn_flush;
  wire excp_flush;
  wire id_allowin;
  wire [32:0]id_to_if_bus;
  wire if_excp_i_3_n_0;
  wire [32:0]if_to_id_bus;
  wire if_to_id_valid;
  wire if_valid_i_1_n_0;
  wire if_valid_i_2_n_0;
  wire [31:1]inst_flush_pc1;
  wire inst_flush_pc1_carry__0_n_0;
  wire inst_flush_pc1_carry__0_n_1;
  wire inst_flush_pc1_carry__0_n_2;
  wire inst_flush_pc1_carry__0_n_3;
  wire inst_flush_pc1_carry__1_n_0;
  wire inst_flush_pc1_carry__1_n_1;
  wire inst_flush_pc1_carry__1_n_2;
  wire inst_flush_pc1_carry__1_n_3;
  wire inst_flush_pc1_carry__2_n_0;
  wire inst_flush_pc1_carry__2_n_1;
  wire inst_flush_pc1_carry__2_n_2;
  wire inst_flush_pc1_carry__2_n_3;
  wire inst_flush_pc1_carry__3_n_0;
  wire inst_flush_pc1_carry__3_n_1;
  wire inst_flush_pc1_carry__3_n_2;
  wire inst_flush_pc1_carry__3_n_3;
  wire inst_flush_pc1_carry__4_n_0;
  wire inst_flush_pc1_carry__4_n_1;
  wire inst_flush_pc1_carry__4_n_2;
  wire inst_flush_pc1_carry__4_n_3;
  wire inst_flush_pc1_carry__5_n_0;
  wire inst_flush_pc1_carry__5_n_1;
  wire inst_flush_pc1_carry__5_n_2;
  wire inst_flush_pc1_carry__5_n_3;
  wire inst_flush_pc1_carry__6_n_2;
  wire inst_flush_pc1_carry__6_n_3;
  wire inst_flush_pc1_carry_i_1_n_0;
  wire inst_flush_pc1_carry_n_0;
  wire inst_flush_pc1_carry_n_1;
  wire inst_flush_pc1_carry_n_2;
  wire inst_flush_pc1_carry_n_3;
  wire [31:0]inst_sram_addr;
  wire \inst_sram_addr[0]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[10]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[11]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[12]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[13]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[14]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[15]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[16]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[17]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[18]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[19]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[1]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[1]_INST_0_i_2_n_0 ;
  wire \inst_sram_addr[1]_INST_0_i_3_n_0 ;
  wire \inst_sram_addr[20]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[21]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[22]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[23]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[24]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[25]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[26]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[27]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[28]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[29]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[2]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[30]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[31]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[31]_INST_0_i_2_n_0 ;
  wire \inst_sram_addr[3]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[4]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[5]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[6]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[7]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[8]_INST_0_i_1_n_0 ;
  wire \inst_sram_addr[9]_INST_0_i_1_n_0 ;
  wire inst_sram_en;
  wire p_0_in;
  wire p_2_in;
  wire refetch_flush;
  wire resetn;
  wire [31:1]seq_pc;
  wire seq_pc_carry__0_n_0;
  wire seq_pc_carry__0_n_1;
  wire seq_pc_carry__0_n_2;
  wire seq_pc_carry__0_n_3;
  wire seq_pc_carry__1_n_0;
  wire seq_pc_carry__1_n_1;
  wire seq_pc_carry__1_n_2;
  wire seq_pc_carry__1_n_3;
  wire seq_pc_carry__2_n_0;
  wire seq_pc_carry__2_n_1;
  wire seq_pc_carry__2_n_2;
  wire seq_pc_carry__2_n_3;
  wire seq_pc_carry__3_n_0;
  wire seq_pc_carry__3_n_1;
  wire seq_pc_carry__3_n_2;
  wire seq_pc_carry__3_n_3;
  wire seq_pc_carry__4_n_0;
  wire seq_pc_carry__4_n_1;
  wire seq_pc_carry__4_n_2;
  wire seq_pc_carry__4_n_3;
  wire seq_pc_carry__5_n_0;
  wire seq_pc_carry__5_n_1;
  wire seq_pc_carry__5_n_2;
  wire seq_pc_carry__5_n_3;
  wire seq_pc_carry__6_n_2;
  wire seq_pc_carry__6_n_3;
  wire seq_pc_carry_i_1_n_0;
  wire seq_pc_carry_n_0;
  wire seq_pc_carry_n_1;
  wire seq_pc_carry_n_2;
  wire seq_pc_carry_n_3;
  wire [31:0]wb_pc;
  wire [3:2]NLW_inst_flush_pc1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_inst_flush_pc1_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_seq_pc_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_seq_pc_carry__6_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    if_excp_i_1
       (.I0(resetn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    if_excp_i_2
       (.I0(if_excp_i_3_n_0),
        .I1(id_to_if_bus[1]),
        .I2(id_to_if_bus[0]),
        .I3(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I4(\inst_sram_addr[1]_INST_0_i_1_n_0 ),
        .I5(\inst_sram_addr[0]_INST_0_i_1_n_0 ),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    if_excp_i_3
       (.I0(if_to_id_bus[0]),
        .I1(seq_pc[1]),
        .I2(id_to_if_bus[32]),
        .I3(ertn_flush),
        .I4(refetch_flush),
        .I5(excp_flush),
        .O(if_excp_i_3_n_0));
  FDRE if_excp_reg
       (.C(clk),
        .CE(inst_sram_en),
        .D(p_2_in),
        .Q(if_to_id_bus[32]),
        .R(p_0_in));
  FDRE \if_pc_reg[0] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[0]),
        .Q(if_to_id_bus[0]),
        .R(p_0_in));
  FDSE \if_pc_reg[10] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[10]),
        .Q(if_to_id_bus[10]),
        .S(p_0_in));
  FDSE \if_pc_reg[11] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[11]),
        .Q(if_to_id_bus[11]),
        .S(p_0_in));
  FDSE \if_pc_reg[12] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[12]),
        .Q(if_to_id_bus[12]),
        .S(p_0_in));
  FDSE \if_pc_reg[13] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[13]),
        .Q(if_to_id_bus[13]),
        .S(p_0_in));
  FDSE \if_pc_reg[14] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[14]),
        .Q(if_to_id_bus[14]),
        .S(p_0_in));
  FDSE \if_pc_reg[15] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[15]),
        .Q(if_to_id_bus[15]),
        .S(p_0_in));
  FDSE \if_pc_reg[16] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[16]),
        .Q(if_to_id_bus[16]),
        .S(p_0_in));
  FDSE \if_pc_reg[17] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[17]),
        .Q(if_to_id_bus[17]),
        .S(p_0_in));
  FDSE \if_pc_reg[18] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[18]),
        .Q(if_to_id_bus[18]),
        .S(p_0_in));
  FDSE \if_pc_reg[19] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[19]),
        .Q(if_to_id_bus[19]),
        .S(p_0_in));
  FDRE \if_pc_reg[1] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[1]),
        .Q(if_to_id_bus[1]),
        .R(p_0_in));
  FDSE \if_pc_reg[20] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[20]),
        .Q(if_to_id_bus[20]),
        .S(p_0_in));
  FDSE \if_pc_reg[21] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[21]),
        .Q(if_to_id_bus[21]),
        .S(p_0_in));
  FDSE \if_pc_reg[22] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[22]),
        .Q(if_to_id_bus[22]),
        .S(p_0_in));
  FDSE \if_pc_reg[23] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[23]),
        .Q(if_to_id_bus[23]),
        .S(p_0_in));
  FDSE \if_pc_reg[24] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[24]),
        .Q(if_to_id_bus[24]),
        .S(p_0_in));
  FDSE \if_pc_reg[25] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[25]),
        .Q(if_to_id_bus[25]),
        .S(p_0_in));
  FDRE \if_pc_reg[26] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[26]),
        .Q(if_to_id_bus[26]),
        .R(p_0_in));
  FDSE \if_pc_reg[27] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[27]),
        .Q(if_to_id_bus[27]),
        .S(p_0_in));
  FDSE \if_pc_reg[28] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[28]),
        .Q(if_to_id_bus[28]),
        .S(p_0_in));
  FDRE \if_pc_reg[29] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[29]),
        .Q(if_to_id_bus[29]),
        .R(p_0_in));
  FDSE \if_pc_reg[2] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[2]),
        .Q(if_to_id_bus[2]),
        .S(p_0_in));
  FDRE \if_pc_reg[30] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[30]),
        .Q(if_to_id_bus[30]),
        .R(p_0_in));
  FDRE \if_pc_reg[31] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[31]),
        .Q(if_to_id_bus[31]),
        .R(p_0_in));
  FDSE \if_pc_reg[3] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[3]),
        .Q(if_to_id_bus[3]),
        .S(p_0_in));
  FDSE \if_pc_reg[4] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[4]),
        .Q(if_to_id_bus[4]),
        .S(p_0_in));
  FDSE \if_pc_reg[5] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[5]),
        .Q(if_to_id_bus[5]),
        .S(p_0_in));
  FDSE \if_pc_reg[6] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[6]),
        .Q(if_to_id_bus[6]),
        .S(p_0_in));
  FDSE \if_pc_reg[7] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[7]),
        .Q(if_to_id_bus[7]),
        .S(p_0_in));
  FDSE \if_pc_reg[8] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[8]),
        .Q(if_to_id_bus[8]),
        .S(p_0_in));
  FDSE \if_pc_reg[9] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[9]),
        .Q(if_to_id_bus[9]),
        .S(p_0_in));
  LUT6 #(
    .INIT(64'hE0E000F0E0E0E0E0)) 
    if_valid_i_1
       (.I0(if_valid_i_2_n_0),
        .I1(inst_sram_en),
        .I2(resetn),
        .I3(id_to_if_bus[32]),
        .I4(id_allowin),
        .I5(if_to_id_valid),
        .O(if_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    if_valid_i_2
       (.I0(id_to_if_bus[0]),
        .I1(id_to_if_bus[1]),
        .I2(seq_pc[1]),
        .I3(if_to_id_bus[0]),
        .I4(resetn),
        .I5(id_to_if_bus[32]),
        .O(if_valid_i_2_n_0));
  FDRE if_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(if_valid_i_1_n_0),
        .Q(if_to_id_valid),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry
       (.CI(1'b0),
        .CO({inst_flush_pc1_carry_n_0,inst_flush_pc1_carry_n_1,inst_flush_pc1_carry_n_2,inst_flush_pc1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,wb_pc[2],1'b0}),
        .O(inst_flush_pc1[4:1]),
        .S({wb_pc[4:3],inst_flush_pc1_carry_i_1_n_0,wb_pc[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry__0
       (.CI(inst_flush_pc1_carry_n_0),
        .CO({inst_flush_pc1_carry__0_n_0,inst_flush_pc1_carry__0_n_1,inst_flush_pc1_carry__0_n_2,inst_flush_pc1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inst_flush_pc1[8:5]),
        .S(wb_pc[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry__1
       (.CI(inst_flush_pc1_carry__0_n_0),
        .CO({inst_flush_pc1_carry__1_n_0,inst_flush_pc1_carry__1_n_1,inst_flush_pc1_carry__1_n_2,inst_flush_pc1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inst_flush_pc1[12:9]),
        .S(wb_pc[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry__2
       (.CI(inst_flush_pc1_carry__1_n_0),
        .CO({inst_flush_pc1_carry__2_n_0,inst_flush_pc1_carry__2_n_1,inst_flush_pc1_carry__2_n_2,inst_flush_pc1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inst_flush_pc1[16:13]),
        .S(wb_pc[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry__3
       (.CI(inst_flush_pc1_carry__2_n_0),
        .CO({inst_flush_pc1_carry__3_n_0,inst_flush_pc1_carry__3_n_1,inst_flush_pc1_carry__3_n_2,inst_flush_pc1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inst_flush_pc1[20:17]),
        .S(wb_pc[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry__4
       (.CI(inst_flush_pc1_carry__3_n_0),
        .CO({inst_flush_pc1_carry__4_n_0,inst_flush_pc1_carry__4_n_1,inst_flush_pc1_carry__4_n_2,inst_flush_pc1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inst_flush_pc1[24:21]),
        .S(wb_pc[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry__5
       (.CI(inst_flush_pc1_carry__4_n_0),
        .CO({inst_flush_pc1_carry__5_n_0,inst_flush_pc1_carry__5_n_1,inst_flush_pc1_carry__5_n_2,inst_flush_pc1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inst_flush_pc1[28:25]),
        .S(wb_pc[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 inst_flush_pc1_carry__6
       (.CI(inst_flush_pc1_carry__5_n_0),
        .CO({NLW_inst_flush_pc1_carry__6_CO_UNCONNECTED[3:2],inst_flush_pc1_carry__6_n_2,inst_flush_pc1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_inst_flush_pc1_carry__6_O_UNCONNECTED[3],inst_flush_pc1[31:29]}),
        .S({1'b0,wb_pc[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    inst_flush_pc1_carry_i_1
       (.I0(wb_pc[2]),
        .O(inst_flush_pc1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \inst_sram_addr[0]_INST_0 
       (.I0(\inst_sram_addr[0]_INST_0_i_1_n_0 ),
        .I1(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I2(if_to_id_bus[0]),
        .I3(id_to_if_bus[0]),
        .I4(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .O(inst_sram_addr[0]));
  LUT6 #(
    .INIT(64'hF0FFF088F088F088)) 
    \inst_sram_addr[0]_INST_0_i_1 
       (.I0(csr_era[0]),
        .I1(ertn_flush),
        .I2(csr_eentry[0]),
        .I3(excp_flush),
        .I4(refetch_flush),
        .I5(wb_pc[0]),
        .O(\inst_sram_addr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[10]_INST_0 
       (.I0(\inst_sram_addr[10]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[10]),
        .I3(excp_flush),
        .I4(csr_eentry[10]),
        .O(inst_sram_addr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[10]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[10]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[10]),
        .I4(csr_era[10]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[11]_INST_0 
       (.I0(\inst_sram_addr[11]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[11]),
        .I3(excp_flush),
        .I4(csr_eentry[11]),
        .O(inst_sram_addr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[11]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[11]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[11]),
        .I4(csr_era[11]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[12]_INST_0 
       (.I0(\inst_sram_addr[12]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[12]),
        .I3(excp_flush),
        .I4(csr_eentry[12]),
        .O(inst_sram_addr[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[12]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[12]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[12]),
        .I4(csr_era[12]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[13]_INST_0 
       (.I0(\inst_sram_addr[13]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[13]),
        .I3(excp_flush),
        .I4(csr_eentry[13]),
        .O(inst_sram_addr[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[13]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[13]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[13]),
        .I4(csr_era[13]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[14]_INST_0 
       (.I0(\inst_sram_addr[14]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[14]),
        .I3(excp_flush),
        .I4(csr_eentry[14]),
        .O(inst_sram_addr[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[14]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[14]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[14]),
        .I4(csr_era[14]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[15]_INST_0 
       (.I0(\inst_sram_addr[15]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[15]),
        .I3(excp_flush),
        .I4(csr_eentry[15]),
        .O(inst_sram_addr[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[15]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[15]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[15]),
        .I4(csr_era[15]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[16]_INST_0 
       (.I0(\inst_sram_addr[16]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[16]),
        .I3(excp_flush),
        .I4(csr_eentry[16]),
        .O(inst_sram_addr[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[16]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[16]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[16]),
        .I4(csr_era[16]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[17]_INST_0 
       (.I0(\inst_sram_addr[17]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[17]),
        .I3(excp_flush),
        .I4(csr_eentry[17]),
        .O(inst_sram_addr[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[17]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[17]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[17]),
        .I4(csr_era[17]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[18]_INST_0 
       (.I0(\inst_sram_addr[18]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[18]),
        .I3(excp_flush),
        .I4(csr_eentry[18]),
        .O(inst_sram_addr[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[18]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[18]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[18]),
        .I4(csr_era[18]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[19]_INST_0 
       (.I0(\inst_sram_addr[19]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[19]),
        .I3(excp_flush),
        .I4(csr_eentry[19]),
        .O(inst_sram_addr[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[19]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[19]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[19]),
        .I4(csr_era[19]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \inst_sram_addr[1]_INST_0 
       (.I0(\inst_sram_addr[1]_INST_0_i_1_n_0 ),
        .I1(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I2(seq_pc[1]),
        .I3(id_to_if_bus[1]),
        .I4(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .O(inst_sram_addr[1]));
  LUT6 #(
    .INIT(64'hF0FFF088F088F088)) 
    \inst_sram_addr[1]_INST_0_i_1 
       (.I0(csr_era[1]),
        .I1(ertn_flush),
        .I2(csr_eentry[1]),
        .I3(excp_flush),
        .I4(refetch_flush),
        .I5(inst_flush_pc1[1]),
        .O(\inst_sram_addr[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \inst_sram_addr[1]_INST_0_i_2 
       (.I0(excp_flush),
        .I1(refetch_flush),
        .I2(ertn_flush),
        .I3(id_to_if_bus[32]),
        .O(\inst_sram_addr[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \inst_sram_addr[1]_INST_0_i_3 
       (.I0(id_to_if_bus[32]),
        .I1(excp_flush),
        .I2(refetch_flush),
        .I3(ertn_flush),
        .O(\inst_sram_addr[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[20]_INST_0 
       (.I0(\inst_sram_addr[20]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[20]),
        .I3(excp_flush),
        .I4(csr_eentry[20]),
        .O(inst_sram_addr[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[20]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[20]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[20]),
        .I4(csr_era[20]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[21]_INST_0 
       (.I0(\inst_sram_addr[21]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[21]),
        .I3(excp_flush),
        .I4(csr_eentry[21]),
        .O(inst_sram_addr[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[21]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[21]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[21]),
        .I4(csr_era[21]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[22]_INST_0 
       (.I0(\inst_sram_addr[22]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[22]),
        .I3(excp_flush),
        .I4(csr_eentry[22]),
        .O(inst_sram_addr[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[22]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[22]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[22]),
        .I4(csr_era[22]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[23]_INST_0 
       (.I0(\inst_sram_addr[23]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[23]),
        .I3(excp_flush),
        .I4(csr_eentry[23]),
        .O(inst_sram_addr[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[23]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[23]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[23]),
        .I4(csr_era[23]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[24]_INST_0 
       (.I0(\inst_sram_addr[24]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[24]),
        .I3(excp_flush),
        .I4(csr_eentry[24]),
        .O(inst_sram_addr[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[24]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[24]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[24]),
        .I4(csr_era[24]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[25]_INST_0 
       (.I0(\inst_sram_addr[25]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[25]),
        .I3(excp_flush),
        .I4(csr_eentry[25]),
        .O(inst_sram_addr[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[25]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[25]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[25]),
        .I4(csr_era[25]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[26]_INST_0 
       (.I0(\inst_sram_addr[26]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[26]),
        .I3(excp_flush),
        .I4(csr_eentry[26]),
        .O(inst_sram_addr[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[26]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[26]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[26]),
        .I4(csr_era[26]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[27]_INST_0 
       (.I0(\inst_sram_addr[27]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[27]),
        .I3(excp_flush),
        .I4(csr_eentry[27]),
        .O(inst_sram_addr[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[27]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[27]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[27]),
        .I4(csr_era[27]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[28]_INST_0 
       (.I0(\inst_sram_addr[28]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[28]),
        .I3(excp_flush),
        .I4(csr_eentry[28]),
        .O(inst_sram_addr[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[28]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[28]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[28]),
        .I4(csr_era[28]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[29]_INST_0 
       (.I0(\inst_sram_addr[29]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[29]),
        .I3(excp_flush),
        .I4(csr_eentry[29]),
        .O(inst_sram_addr[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[29]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[29]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[29]),
        .I4(csr_era[29]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[2]_INST_0 
       (.I0(\inst_sram_addr[2]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[2]),
        .I3(excp_flush),
        .I4(csr_eentry[2]),
        .O(inst_sram_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[2]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[2]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[2]),
        .I4(csr_era[2]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[30]_INST_0 
       (.I0(\inst_sram_addr[30]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[30]),
        .I3(excp_flush),
        .I4(csr_eentry[30]),
        .O(inst_sram_addr[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[30]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[30]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[30]),
        .I4(csr_era[30]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[31]_INST_0 
       (.I0(\inst_sram_addr[31]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[31]),
        .I3(excp_flush),
        .I4(csr_eentry[31]),
        .O(inst_sram_addr[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[31]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[31]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[31]),
        .I4(csr_era[31]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[31]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \inst_sram_addr[31]_INST_0_i_2 
       (.I0(ertn_flush),
        .I1(excp_flush),
        .O(\inst_sram_addr[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[3]_INST_0 
       (.I0(\inst_sram_addr[3]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[3]),
        .I3(excp_flush),
        .I4(csr_eentry[3]),
        .O(inst_sram_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[3]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[3]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[3]),
        .I4(csr_era[3]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[4]_INST_0 
       (.I0(\inst_sram_addr[4]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[4]),
        .I3(excp_flush),
        .I4(csr_eentry[4]),
        .O(inst_sram_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[4]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[4]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[4]),
        .I4(csr_era[4]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[5]_INST_0 
       (.I0(\inst_sram_addr[5]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[5]),
        .I3(excp_flush),
        .I4(csr_eentry[5]),
        .O(inst_sram_addr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[5]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[5]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[5]),
        .I4(csr_era[5]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[6]_INST_0 
       (.I0(\inst_sram_addr[6]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[6]),
        .I3(excp_flush),
        .I4(csr_eentry[6]),
        .O(inst_sram_addr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[6]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[6]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[6]),
        .I4(csr_era[6]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[7]_INST_0 
       (.I0(\inst_sram_addr[7]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[7]),
        .I3(excp_flush),
        .I4(csr_eentry[7]),
        .O(inst_sram_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[7]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[7]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[7]),
        .I4(csr_era[7]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[8]_INST_0 
       (.I0(\inst_sram_addr[8]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[8]),
        .I3(excp_flush),
        .I4(csr_eentry[8]),
        .O(inst_sram_addr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[8]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[8]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[8]),
        .I4(csr_era[8]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \inst_sram_addr[9]_INST_0 
       (.I0(\inst_sram_addr[9]_INST_0_i_1_n_0 ),
        .I1(refetch_flush),
        .I2(inst_flush_pc1[9]),
        .I3(excp_flush),
        .I4(csr_eentry[9]),
        .O(inst_sram_addr[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \inst_sram_addr[9]_INST_0_i_1 
       (.I0(\inst_sram_addr[1]_INST_0_i_2_n_0 ),
        .I1(seq_pc[9]),
        .I2(\inst_sram_addr[1]_INST_0_i_3_n_0 ),
        .I3(id_to_if_bus[9]),
        .I4(csr_era[9]),
        .I5(\inst_sram_addr[31]_INST_0_i_2_n_0 ),
        .O(\inst_sram_addr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    inst_sram_en_INST_0
       (.I0(ertn_flush),
        .I1(refetch_flush),
        .I2(excp_flush),
        .I3(id_allowin),
        .I4(if_to_id_valid),
        .I5(resetn),
        .O(inst_sram_en));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry
       (.CI(1'b0),
        .CO({seq_pc_carry_n_0,seq_pc_carry_n_1,seq_pc_carry_n_2,seq_pc_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,if_to_id_bus[2],1'b0}),
        .O(seq_pc[4:1]),
        .S({if_to_id_bus[4:3],seq_pc_carry_i_1_n_0,if_to_id_bus[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__0
       (.CI(seq_pc_carry_n_0),
        .CO({seq_pc_carry__0_n_0,seq_pc_carry__0_n_1,seq_pc_carry__0_n_2,seq_pc_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[8:5]),
        .S(if_to_id_bus[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__1
       (.CI(seq_pc_carry__0_n_0),
        .CO({seq_pc_carry__1_n_0,seq_pc_carry__1_n_1,seq_pc_carry__1_n_2,seq_pc_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[12:9]),
        .S(if_to_id_bus[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__2
       (.CI(seq_pc_carry__1_n_0),
        .CO({seq_pc_carry__2_n_0,seq_pc_carry__2_n_1,seq_pc_carry__2_n_2,seq_pc_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[16:13]),
        .S(if_to_id_bus[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__3
       (.CI(seq_pc_carry__2_n_0),
        .CO({seq_pc_carry__3_n_0,seq_pc_carry__3_n_1,seq_pc_carry__3_n_2,seq_pc_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[20:17]),
        .S(if_to_id_bus[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__4
       (.CI(seq_pc_carry__3_n_0),
        .CO({seq_pc_carry__4_n_0,seq_pc_carry__4_n_1,seq_pc_carry__4_n_2,seq_pc_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[24:21]),
        .S(if_to_id_bus[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__5
       (.CI(seq_pc_carry__4_n_0),
        .CO({seq_pc_carry__5_n_0,seq_pc_carry__5_n_1,seq_pc_carry__5_n_2,seq_pc_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[28:25]),
        .S(if_to_id_bus[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__6
       (.CI(seq_pc_carry__5_n_0),
        .CO({NLW_seq_pc_carry__6_CO_UNCONNECTED[3:2],seq_pc_carry__6_n_2,seq_pc_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_seq_pc_carry__6_O_UNCONNECTED[3],seq_pc[31:29]}),
        .S({1'b0,if_to_id_bus[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    seq_pc_carry_i_1
       (.I0(if_to_id_bus[2]),
        .O(seq_pc_carry_i_1_n_0));
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
