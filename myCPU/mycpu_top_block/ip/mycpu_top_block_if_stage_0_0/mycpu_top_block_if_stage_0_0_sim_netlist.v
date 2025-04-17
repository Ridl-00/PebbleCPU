// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 14:30:13 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mycpu_top_block_if_stage_0_0 -prefix
//               mycpu_top_block_if_stage_0_0_ mycpu_top_block_if_stage_0_0_sim_netlist.v
// Design      : mycpu_top_block_if_stage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mycpu_top_block_if_stage_0_0_if_stage
   (if_to_id_bus,
    inst_sram_en,
    inst_sram_addr,
    \if_pc_reg[0]_0 ,
    if_to_id_valid,
    id_to_if_bus,
    clk,
    resetn,
    id_allowin);
  output [30:0]if_to_id_bus;
  output inst_sram_en;
  output [31:0]inst_sram_addr;
  output [0:0]\if_pc_reg[0]_0 ;
  output if_to_id_valid;
  input [32:0]id_to_if_bus;
  input clk;
  input resetn;
  input id_allowin;

  wire clear;
  wire clk;
  wire id_allowin;
  wire [32:0]id_to_if_bus;
  wire \if_pc[12]_i_2_n_0 ;
  wire \if_pc[12]_i_3_n_0 ;
  wire \if_pc[12]_i_4_n_0 ;
  wire \if_pc[12]_i_5_n_0 ;
  wire \if_pc[16]_i_2_n_0 ;
  wire \if_pc[16]_i_3_n_0 ;
  wire \if_pc[16]_i_4_n_0 ;
  wire \if_pc[16]_i_5_n_0 ;
  wire \if_pc[20]_i_2_n_0 ;
  wire \if_pc[20]_i_3_n_0 ;
  wire \if_pc[20]_i_4_n_0 ;
  wire \if_pc[20]_i_5_n_0 ;
  wire \if_pc[24]_i_2_n_0 ;
  wire \if_pc[24]_i_3_n_0 ;
  wire \if_pc[24]_i_4_n_0 ;
  wire \if_pc[24]_i_5_n_0 ;
  wire \if_pc[28]_i_2_n_0 ;
  wire \if_pc[28]_i_3_n_0 ;
  wire \if_pc[28]_i_4_n_0 ;
  wire \if_pc[28]_i_5_n_0 ;
  wire \if_pc[31]_i_3_n_0 ;
  wire \if_pc[31]_i_4_n_0 ;
  wire \if_pc[31]_i_5_n_0 ;
  wire \if_pc[4]_i_2_n_0 ;
  wire \if_pc[4]_i_3_n_0 ;
  wire \if_pc[4]_i_4_n_0 ;
  wire \if_pc[4]_i_5_n_0 ;
  wire \if_pc[4]_i_6_n_0 ;
  wire \if_pc[8]_i_2_n_0 ;
  wire \if_pc[8]_i_3_n_0 ;
  wire \if_pc[8]_i_4_n_0 ;
  wire \if_pc[8]_i_5_n_0 ;
  wire [0:0]\if_pc_reg[0]_0 ;
  wire \if_pc_reg[12]_i_1_n_0 ;
  wire \if_pc_reg[12]_i_1_n_1 ;
  wire \if_pc_reg[12]_i_1_n_2 ;
  wire \if_pc_reg[12]_i_1_n_3 ;
  wire \if_pc_reg[12]_i_1_n_4 ;
  wire \if_pc_reg[12]_i_1_n_5 ;
  wire \if_pc_reg[12]_i_1_n_6 ;
  wire \if_pc_reg[12]_i_1_n_7 ;
  wire \if_pc_reg[16]_i_1_n_0 ;
  wire \if_pc_reg[16]_i_1_n_1 ;
  wire \if_pc_reg[16]_i_1_n_2 ;
  wire \if_pc_reg[16]_i_1_n_3 ;
  wire \if_pc_reg[16]_i_1_n_4 ;
  wire \if_pc_reg[16]_i_1_n_5 ;
  wire \if_pc_reg[16]_i_1_n_6 ;
  wire \if_pc_reg[16]_i_1_n_7 ;
  wire \if_pc_reg[20]_i_1_n_0 ;
  wire \if_pc_reg[20]_i_1_n_1 ;
  wire \if_pc_reg[20]_i_1_n_2 ;
  wire \if_pc_reg[20]_i_1_n_3 ;
  wire \if_pc_reg[20]_i_1_n_4 ;
  wire \if_pc_reg[20]_i_1_n_5 ;
  wire \if_pc_reg[20]_i_1_n_6 ;
  wire \if_pc_reg[20]_i_1_n_7 ;
  wire \if_pc_reg[24]_i_1_n_0 ;
  wire \if_pc_reg[24]_i_1_n_1 ;
  wire \if_pc_reg[24]_i_1_n_2 ;
  wire \if_pc_reg[24]_i_1_n_3 ;
  wire \if_pc_reg[24]_i_1_n_4 ;
  wire \if_pc_reg[24]_i_1_n_5 ;
  wire \if_pc_reg[24]_i_1_n_6 ;
  wire \if_pc_reg[24]_i_1_n_7 ;
  wire \if_pc_reg[28]_i_1_n_0 ;
  wire \if_pc_reg[28]_i_1_n_1 ;
  wire \if_pc_reg[28]_i_1_n_2 ;
  wire \if_pc_reg[28]_i_1_n_3 ;
  wire \if_pc_reg[28]_i_1_n_4 ;
  wire \if_pc_reg[28]_i_1_n_5 ;
  wire \if_pc_reg[28]_i_1_n_6 ;
  wire \if_pc_reg[28]_i_1_n_7 ;
  wire \if_pc_reg[31]_i_2_n_2 ;
  wire \if_pc_reg[31]_i_2_n_3 ;
  wire \if_pc_reg[31]_i_2_n_5 ;
  wire \if_pc_reg[31]_i_2_n_6 ;
  wire \if_pc_reg[31]_i_2_n_7 ;
  wire \if_pc_reg[4]_i_1_n_0 ;
  wire \if_pc_reg[4]_i_1_n_1 ;
  wire \if_pc_reg[4]_i_1_n_2 ;
  wire \if_pc_reg[4]_i_1_n_3 ;
  wire \if_pc_reg[4]_i_1_n_4 ;
  wire \if_pc_reg[4]_i_1_n_5 ;
  wire \if_pc_reg[4]_i_1_n_6 ;
  wire \if_pc_reg[4]_i_1_n_7 ;
  wire \if_pc_reg[8]_i_1_n_0 ;
  wire \if_pc_reg[8]_i_1_n_1 ;
  wire \if_pc_reg[8]_i_1_n_2 ;
  wire \if_pc_reg[8]_i_1_n_3 ;
  wire \if_pc_reg[8]_i_1_n_4 ;
  wire \if_pc_reg[8]_i_1_n_5 ;
  wire \if_pc_reg[8]_i_1_n_6 ;
  wire \if_pc_reg[8]_i_1_n_7 ;
  wire [30:0]if_to_id_bus;
  wire if_to_id_valid;
  wire if_valid_i_1_n_0;
  wire [31:0]inst_sram_addr;
  wire inst_sram_en;
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
  wire [3:2]\NLW_if_pc_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_if_pc_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_seq_pc_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_seq_pc_carry__6_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[12]_i_2 
       (.I0(id_to_if_bus[12]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[11]),
        .O(\if_pc[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[12]_i_3 
       (.I0(id_to_if_bus[11]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[10]),
        .O(\if_pc[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[12]_i_4 
       (.I0(id_to_if_bus[10]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[9]),
        .O(\if_pc[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[12]_i_5 
       (.I0(id_to_if_bus[9]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[8]),
        .O(\if_pc[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[16]_i_2 
       (.I0(id_to_if_bus[16]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[15]),
        .O(\if_pc[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[16]_i_3 
       (.I0(id_to_if_bus[15]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[14]),
        .O(\if_pc[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[16]_i_4 
       (.I0(id_to_if_bus[14]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[13]),
        .O(\if_pc[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[16]_i_5 
       (.I0(id_to_if_bus[13]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[12]),
        .O(\if_pc[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[20]_i_2 
       (.I0(id_to_if_bus[20]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[19]),
        .O(\if_pc[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[20]_i_3 
       (.I0(id_to_if_bus[19]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[18]),
        .O(\if_pc[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[20]_i_4 
       (.I0(id_to_if_bus[18]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[17]),
        .O(\if_pc[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[20]_i_5 
       (.I0(id_to_if_bus[17]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[16]),
        .O(\if_pc[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[24]_i_2 
       (.I0(id_to_if_bus[24]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[23]),
        .O(\if_pc[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[24]_i_3 
       (.I0(id_to_if_bus[23]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[22]),
        .O(\if_pc[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[24]_i_4 
       (.I0(id_to_if_bus[22]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[21]),
        .O(\if_pc[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[24]_i_5 
       (.I0(id_to_if_bus[21]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[20]),
        .O(\if_pc[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[28]_i_2 
       (.I0(id_to_if_bus[28]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[27]),
        .O(\if_pc[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[28]_i_3 
       (.I0(id_to_if_bus[27]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[26]),
        .O(\if_pc[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[28]_i_4 
       (.I0(id_to_if_bus[26]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[25]),
        .O(\if_pc[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[28]_i_5 
       (.I0(id_to_if_bus[25]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[24]),
        .O(\if_pc[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \if_pc[31]_i_1 
       (.I0(resetn),
        .O(clear));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[31]_i_3 
       (.I0(id_to_if_bus[31]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[30]),
        .O(\if_pc[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[31]_i_4 
       (.I0(id_to_if_bus[30]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[29]),
        .O(\if_pc[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[31]_i_5 
       (.I0(id_to_if_bus[29]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[28]),
        .O(\if_pc[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[4]_i_2 
       (.I0(id_to_if_bus[2]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[1]),
        .O(\if_pc[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[4]_i_3 
       (.I0(id_to_if_bus[4]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[3]),
        .O(\if_pc[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[4]_i_4 
       (.I0(id_to_if_bus[3]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[2]),
        .O(\if_pc[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \if_pc[4]_i_5 
       (.I0(if_to_id_bus[1]),
        .I1(id_to_if_bus[2]),
        .I2(id_to_if_bus[32]),
        .O(\if_pc[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[4]_i_6 
       (.I0(id_to_if_bus[1]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[0]),
        .O(\if_pc[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[8]_i_2 
       (.I0(id_to_if_bus[8]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[7]),
        .O(\if_pc[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[8]_i_3 
       (.I0(id_to_if_bus[7]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[6]),
        .O(\if_pc[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[8]_i_4 
       (.I0(id_to_if_bus[6]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[5]),
        .O(\if_pc[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \if_pc[8]_i_5 
       (.I0(id_to_if_bus[5]),
        .I1(id_to_if_bus[32]),
        .I2(if_to_id_bus[4]),
        .O(\if_pc[8]_i_5_n_0 ));
  FDRE \if_pc_reg[0] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(inst_sram_addr[0]),
        .Q(\if_pc_reg[0]_0 ),
        .R(clear));
  FDSE \if_pc_reg[10] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[12]_i_1_n_6 ),
        .Q(if_to_id_bus[9]),
        .S(clear));
  FDSE \if_pc_reg[11] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[12]_i_1_n_5 ),
        .Q(if_to_id_bus[10]),
        .S(clear));
  FDSE \if_pc_reg[12] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[12]_i_1_n_4 ),
        .Q(if_to_id_bus[11]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[12]_i_1 
       (.CI(\if_pc_reg[8]_i_1_n_0 ),
        .CO({\if_pc_reg[12]_i_1_n_0 ,\if_pc_reg[12]_i_1_n_1 ,\if_pc_reg[12]_i_1_n_2 ,\if_pc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\if_pc_reg[12]_i_1_n_4 ,\if_pc_reg[12]_i_1_n_5 ,\if_pc_reg[12]_i_1_n_6 ,\if_pc_reg[12]_i_1_n_7 }),
        .S({\if_pc[12]_i_2_n_0 ,\if_pc[12]_i_3_n_0 ,\if_pc[12]_i_4_n_0 ,\if_pc[12]_i_5_n_0 }));
  FDSE \if_pc_reg[13] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[16]_i_1_n_7 ),
        .Q(if_to_id_bus[12]),
        .S(clear));
  FDSE \if_pc_reg[14] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[16]_i_1_n_6 ),
        .Q(if_to_id_bus[13]),
        .S(clear));
  FDSE \if_pc_reg[15] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[16]_i_1_n_5 ),
        .Q(if_to_id_bus[14]),
        .S(clear));
  FDSE \if_pc_reg[16] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[16]_i_1_n_4 ),
        .Q(if_to_id_bus[15]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[16]_i_1 
       (.CI(\if_pc_reg[12]_i_1_n_0 ),
        .CO({\if_pc_reg[16]_i_1_n_0 ,\if_pc_reg[16]_i_1_n_1 ,\if_pc_reg[16]_i_1_n_2 ,\if_pc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\if_pc_reg[16]_i_1_n_4 ,\if_pc_reg[16]_i_1_n_5 ,\if_pc_reg[16]_i_1_n_6 ,\if_pc_reg[16]_i_1_n_7 }),
        .S({\if_pc[16]_i_2_n_0 ,\if_pc[16]_i_3_n_0 ,\if_pc[16]_i_4_n_0 ,\if_pc[16]_i_5_n_0 }));
  FDSE \if_pc_reg[17] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[20]_i_1_n_7 ),
        .Q(if_to_id_bus[16]),
        .S(clear));
  FDSE \if_pc_reg[18] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[20]_i_1_n_6 ),
        .Q(if_to_id_bus[17]),
        .S(clear));
  FDSE \if_pc_reg[19] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[20]_i_1_n_5 ),
        .Q(if_to_id_bus[18]),
        .S(clear));
  FDRE \if_pc_reg[1] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[4]_i_1_n_7 ),
        .Q(if_to_id_bus[0]),
        .R(clear));
  FDSE \if_pc_reg[20] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[20]_i_1_n_4 ),
        .Q(if_to_id_bus[19]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[20]_i_1 
       (.CI(\if_pc_reg[16]_i_1_n_0 ),
        .CO({\if_pc_reg[20]_i_1_n_0 ,\if_pc_reg[20]_i_1_n_1 ,\if_pc_reg[20]_i_1_n_2 ,\if_pc_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\if_pc_reg[20]_i_1_n_4 ,\if_pc_reg[20]_i_1_n_5 ,\if_pc_reg[20]_i_1_n_6 ,\if_pc_reg[20]_i_1_n_7 }),
        .S({\if_pc[20]_i_2_n_0 ,\if_pc[20]_i_3_n_0 ,\if_pc[20]_i_4_n_0 ,\if_pc[20]_i_5_n_0 }));
  FDSE \if_pc_reg[21] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[24]_i_1_n_7 ),
        .Q(if_to_id_bus[20]),
        .S(clear));
  FDSE \if_pc_reg[22] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[24]_i_1_n_6 ),
        .Q(if_to_id_bus[21]),
        .S(clear));
  FDSE \if_pc_reg[23] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[24]_i_1_n_5 ),
        .Q(if_to_id_bus[22]),
        .S(clear));
  FDSE \if_pc_reg[24] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[24]_i_1_n_4 ),
        .Q(if_to_id_bus[23]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[24]_i_1 
       (.CI(\if_pc_reg[20]_i_1_n_0 ),
        .CO({\if_pc_reg[24]_i_1_n_0 ,\if_pc_reg[24]_i_1_n_1 ,\if_pc_reg[24]_i_1_n_2 ,\if_pc_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\if_pc_reg[24]_i_1_n_4 ,\if_pc_reg[24]_i_1_n_5 ,\if_pc_reg[24]_i_1_n_6 ,\if_pc_reg[24]_i_1_n_7 }),
        .S({\if_pc[24]_i_2_n_0 ,\if_pc[24]_i_3_n_0 ,\if_pc[24]_i_4_n_0 ,\if_pc[24]_i_5_n_0 }));
  FDSE \if_pc_reg[25] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[28]_i_1_n_7 ),
        .Q(if_to_id_bus[24]),
        .S(clear));
  FDRE \if_pc_reg[26] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[28]_i_1_n_6 ),
        .Q(if_to_id_bus[25]),
        .R(clear));
  FDSE \if_pc_reg[27] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[28]_i_1_n_5 ),
        .Q(if_to_id_bus[26]),
        .S(clear));
  FDSE \if_pc_reg[28] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[28]_i_1_n_4 ),
        .Q(if_to_id_bus[27]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[28]_i_1 
       (.CI(\if_pc_reg[24]_i_1_n_0 ),
        .CO({\if_pc_reg[28]_i_1_n_0 ,\if_pc_reg[28]_i_1_n_1 ,\if_pc_reg[28]_i_1_n_2 ,\if_pc_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\if_pc_reg[28]_i_1_n_4 ,\if_pc_reg[28]_i_1_n_5 ,\if_pc_reg[28]_i_1_n_6 ,\if_pc_reg[28]_i_1_n_7 }),
        .S({\if_pc[28]_i_2_n_0 ,\if_pc[28]_i_3_n_0 ,\if_pc[28]_i_4_n_0 ,\if_pc[28]_i_5_n_0 }));
  FDRE \if_pc_reg[29] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[31]_i_2_n_7 ),
        .Q(if_to_id_bus[28]),
        .R(clear));
  FDSE \if_pc_reg[2] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[4]_i_1_n_6 ),
        .Q(if_to_id_bus[1]),
        .S(clear));
  FDRE \if_pc_reg[30] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[31]_i_2_n_6 ),
        .Q(if_to_id_bus[29]),
        .R(clear));
  FDRE \if_pc_reg[31] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[31]_i_2_n_5 ),
        .Q(if_to_id_bus[30]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[31]_i_2 
       (.CI(\if_pc_reg[28]_i_1_n_0 ),
        .CO({\NLW_if_pc_reg[31]_i_2_CO_UNCONNECTED [3:2],\if_pc_reg[31]_i_2_n_2 ,\if_pc_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_if_pc_reg[31]_i_2_O_UNCONNECTED [3],\if_pc_reg[31]_i_2_n_5 ,\if_pc_reg[31]_i_2_n_6 ,\if_pc_reg[31]_i_2_n_7 }),
        .S({1'b0,\if_pc[31]_i_3_n_0 ,\if_pc[31]_i_4_n_0 ,\if_pc[31]_i_5_n_0 }));
  FDSE \if_pc_reg[3] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[4]_i_1_n_5 ),
        .Q(if_to_id_bus[2]),
        .S(clear));
  FDSE \if_pc_reg[4] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[4]_i_1_n_4 ),
        .Q(if_to_id_bus[3]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\if_pc_reg[4]_i_1_n_0 ,\if_pc_reg[4]_i_1_n_1 ,\if_pc_reg[4]_i_1_n_2 ,\if_pc_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\if_pc[4]_i_2_n_0 ,1'b0}),
        .O({\if_pc_reg[4]_i_1_n_4 ,\if_pc_reg[4]_i_1_n_5 ,\if_pc_reg[4]_i_1_n_6 ,\if_pc_reg[4]_i_1_n_7 }),
        .S({\if_pc[4]_i_3_n_0 ,\if_pc[4]_i_4_n_0 ,\if_pc[4]_i_5_n_0 ,\if_pc[4]_i_6_n_0 }));
  FDSE \if_pc_reg[5] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[8]_i_1_n_7 ),
        .Q(if_to_id_bus[4]),
        .S(clear));
  FDSE \if_pc_reg[6] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[8]_i_1_n_6 ),
        .Q(if_to_id_bus[5]),
        .S(clear));
  FDSE \if_pc_reg[7] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[8]_i_1_n_5 ),
        .Q(if_to_id_bus[6]),
        .S(clear));
  FDSE \if_pc_reg[8] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[8]_i_1_n_4 ),
        .Q(if_to_id_bus[7]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \if_pc_reg[8]_i_1 
       (.CI(\if_pc_reg[4]_i_1_n_0 ),
        .CO({\if_pc_reg[8]_i_1_n_0 ,\if_pc_reg[8]_i_1_n_1 ,\if_pc_reg[8]_i_1_n_2 ,\if_pc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\if_pc_reg[8]_i_1_n_4 ,\if_pc_reg[8]_i_1_n_5 ,\if_pc_reg[8]_i_1_n_6 ,\if_pc_reg[8]_i_1_n_7 }),
        .S({\if_pc[8]_i_2_n_0 ,\if_pc[8]_i_3_n_0 ,\if_pc[8]_i_4_n_0 ,\if_pc[8]_i_5_n_0 }));
  FDSE \if_pc_reg[9] 
       (.C(clk),
        .CE(inst_sram_en),
        .D(\if_pc_reg[12]_i_1_n_7 ),
        .Q(if_to_id_bus[8]),
        .S(clear));
  LUT4 #(
    .INIT(16'hDF00)) 
    if_valid_i_1
       (.I0(id_to_if_bus[32]),
        .I1(id_allowin),
        .I2(if_to_id_valid),
        .I3(resetn),
        .O(if_valid_i_1_n_0));
  FDRE if_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(if_valid_i_1_n_0),
        .Q(if_to_id_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[0]_INST_0 
       (.I0(id_to_if_bus[0]),
        .I1(id_to_if_bus[32]),
        .I2(\if_pc_reg[0]_0 ),
        .O(inst_sram_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[10]_INST_0 
       (.I0(id_to_if_bus[10]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[10]),
        .O(inst_sram_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[11]_INST_0 
       (.I0(id_to_if_bus[11]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[11]),
        .O(inst_sram_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[12]_INST_0 
       (.I0(id_to_if_bus[12]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[12]),
        .O(inst_sram_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[13]_INST_0 
       (.I0(id_to_if_bus[13]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[13]),
        .O(inst_sram_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[14]_INST_0 
       (.I0(id_to_if_bus[14]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[14]),
        .O(inst_sram_addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[15]_INST_0 
       (.I0(id_to_if_bus[15]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[15]),
        .O(inst_sram_addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[16]_INST_0 
       (.I0(id_to_if_bus[16]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[16]),
        .O(inst_sram_addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[17]_INST_0 
       (.I0(id_to_if_bus[17]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[17]),
        .O(inst_sram_addr[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[18]_INST_0 
       (.I0(id_to_if_bus[18]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[18]),
        .O(inst_sram_addr[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[19]_INST_0 
       (.I0(id_to_if_bus[19]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[19]),
        .O(inst_sram_addr[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[1]_INST_0 
       (.I0(id_to_if_bus[1]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[1]),
        .O(inst_sram_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[20]_INST_0 
       (.I0(id_to_if_bus[20]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[20]),
        .O(inst_sram_addr[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[21]_INST_0 
       (.I0(id_to_if_bus[21]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[21]),
        .O(inst_sram_addr[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[22]_INST_0 
       (.I0(id_to_if_bus[22]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[22]),
        .O(inst_sram_addr[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[23]_INST_0 
       (.I0(id_to_if_bus[23]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[23]),
        .O(inst_sram_addr[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[24]_INST_0 
       (.I0(id_to_if_bus[24]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[24]),
        .O(inst_sram_addr[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[25]_INST_0 
       (.I0(id_to_if_bus[25]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[25]),
        .O(inst_sram_addr[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[26]_INST_0 
       (.I0(id_to_if_bus[26]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[26]),
        .O(inst_sram_addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[27]_INST_0 
       (.I0(id_to_if_bus[27]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[27]),
        .O(inst_sram_addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[28]_INST_0 
       (.I0(id_to_if_bus[28]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[28]),
        .O(inst_sram_addr[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[29]_INST_0 
       (.I0(id_to_if_bus[29]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[29]),
        .O(inst_sram_addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[2]_INST_0 
       (.I0(id_to_if_bus[2]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[2]),
        .O(inst_sram_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[30]_INST_0 
       (.I0(id_to_if_bus[30]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[30]),
        .O(inst_sram_addr[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[31]_INST_0 
       (.I0(id_to_if_bus[31]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[31]),
        .O(inst_sram_addr[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[3]_INST_0 
       (.I0(id_to_if_bus[3]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[3]),
        .O(inst_sram_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[4]_INST_0 
       (.I0(id_to_if_bus[4]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[4]),
        .O(inst_sram_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[5]_INST_0 
       (.I0(id_to_if_bus[5]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[5]),
        .O(inst_sram_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[6]_INST_0 
       (.I0(id_to_if_bus[6]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[6]),
        .O(inst_sram_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[7]_INST_0 
       (.I0(id_to_if_bus[7]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[7]),
        .O(inst_sram_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[8]_INST_0 
       (.I0(id_to_if_bus[8]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[8]),
        .O(inst_sram_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inst_sram_addr[9]_INST_0 
       (.I0(id_to_if_bus[9]),
        .I1(id_to_if_bus[32]),
        .I2(seq_pc[9]),
        .O(inst_sram_addr[9]));
  LUT3 #(
    .INIT(8'hA2)) 
    inst_sram_en_INST_0
       (.I0(resetn),
        .I1(if_to_id_valid),
        .I2(id_allowin),
        .O(inst_sram_en));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry
       (.CI(1'b0),
        .CO({seq_pc_carry_n_0,seq_pc_carry_n_1,seq_pc_carry_n_2,seq_pc_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,if_to_id_bus[1],1'b0}),
        .O(seq_pc[4:1]),
        .S({if_to_id_bus[3:2],seq_pc_carry_i_1_n_0,if_to_id_bus[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__0
       (.CI(seq_pc_carry_n_0),
        .CO({seq_pc_carry__0_n_0,seq_pc_carry__0_n_1,seq_pc_carry__0_n_2,seq_pc_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[8:5]),
        .S(if_to_id_bus[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__1
       (.CI(seq_pc_carry__0_n_0),
        .CO({seq_pc_carry__1_n_0,seq_pc_carry__1_n_1,seq_pc_carry__1_n_2,seq_pc_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[12:9]),
        .S(if_to_id_bus[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__2
       (.CI(seq_pc_carry__1_n_0),
        .CO({seq_pc_carry__2_n_0,seq_pc_carry__2_n_1,seq_pc_carry__2_n_2,seq_pc_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[16:13]),
        .S(if_to_id_bus[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__3
       (.CI(seq_pc_carry__2_n_0),
        .CO({seq_pc_carry__3_n_0,seq_pc_carry__3_n_1,seq_pc_carry__3_n_2,seq_pc_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[20:17]),
        .S(if_to_id_bus[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__4
       (.CI(seq_pc_carry__3_n_0),
        .CO({seq_pc_carry__4_n_0,seq_pc_carry__4_n_1,seq_pc_carry__4_n_2,seq_pc_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[24:21]),
        .S(if_to_id_bus[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__5
       (.CI(seq_pc_carry__4_n_0),
        .CO({seq_pc_carry__5_n_0,seq_pc_carry__5_n_1,seq_pc_carry__5_n_2,seq_pc_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(seq_pc[28:25]),
        .S(if_to_id_bus[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seq_pc_carry__6
       (.CI(seq_pc_carry__5_n_0),
        .CO({NLW_seq_pc_carry__6_CO_UNCONNECTED[3:2],seq_pc_carry__6_n_2,seq_pc_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_seq_pc_carry__6_O_UNCONNECTED[3],seq_pc[31:29]}),
        .S({1'b0,if_to_id_bus[30:28]}));
  LUT1 #(
    .INIT(2'h1)) 
    seq_pc_carry_i_1
       (.I0(if_to_id_bus[1]),
        .O(seq_pc_carry_i_1_n_0));
endmodule

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
    inst_sram_rdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input id_allowin;
  output if_to_id_valid;
  output [63:0]if_to_id_bus;
  input [33:0]id_to_if_bus;
  output inst_sram_en;
  output [3:0]inst_sram_we;
  output [31:0]inst_sram_addr;
  output [31:0]inst_sram_wdata;
  input [31:0]inst_sram_rdata;

  wire \<const0> ;
  wire clk;
  wire id_allowin;
  wire [33:0]id_to_if_bus;
  wire [63:32]\^if_to_id_bus ;
  wire if_to_id_valid;
  wire [31:0]inst_sram_addr;
  wire inst_sram_en;
  wire [31:0]inst_sram_rdata;
  wire resetn;

  assign if_to_id_bus[63:32] = \^if_to_id_bus [63:32];
  assign if_to_id_bus[31:0] = inst_sram_rdata;
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
        .id_allowin(id_allowin),
        .id_to_if_bus(id_to_if_bus[32:0]),
        .\if_pc_reg[0]_0 (\^if_to_id_bus [32]),
        .if_to_id_bus(\^if_to_id_bus [63:33]),
        .if_to_id_valid(if_to_id_valid),
        .inst_sram_addr(inst_sram_addr),
        .inst_sram_en(inst_sram_en),
        .resetn(resetn));
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
