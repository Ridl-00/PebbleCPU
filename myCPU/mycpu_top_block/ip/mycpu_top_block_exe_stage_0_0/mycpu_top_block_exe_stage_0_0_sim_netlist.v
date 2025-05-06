// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 10:05:21 2025
// Host        : Super-EvilLoong running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_exe_stage_0_0/mycpu_top_block_exe_stage_0_0_sim_netlist.v
// Design      : mycpu_top_block_exe_stage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mycpu_top_block_exe_stage_0_0,exe_stage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "exe_stage,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module mycpu_top_block_exe_stage_0_0
   (clk,
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
    data_sram_wdata,
    flush_from_mem,
    excp_flush,
    ertn_flush,
    refetch_flush);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output exe_allowin;
  input id_to_exe_valid;
  input [220:0]id_to_exe_bus;
  input mem_allowin;
  output exe_to_mem_valid;
  output [169:0]exe_to_mem_bus;
  output [38:0]exe_to_id_bus;
  output data_sram_en;
  output [3:0]data_sram_we;
  output [31:0]data_sram_addr;
  output [31:0]data_sram_wdata;
  input flush_from_mem;
  input excp_flush;
  input ertn_flush;
  input refetch_flush;

  wire clk;
  wire data_sram_en;
  wire [31:0]data_sram_wdata;
  wire [3:0]data_sram_we;
  wire ertn_flush;
  wire excp_flush;
  wire exe_allowin;
  wire [38:0]exe_to_id_bus;
  wire [169:0]\^exe_to_mem_bus ;
  wire exe_to_mem_valid;
  wire flush_from_mem;
  wire [220:0]id_to_exe_bus;
  wire id_to_exe_valid;
  wire mem_allowin;
  wire refetch_flush;
  wire resetn;

  assign data_sram_addr[31:0] = \^exe_to_mem_bus [169:138];
  assign exe_to_mem_bus[169:69] = \^exe_to_mem_bus [169:69];
  assign exe_to_mem_bus[68:32] = exe_to_id_bus[36:0];
  assign exe_to_mem_bus[31:0] = \^exe_to_mem_bus [31:0];
  mycpu_top_block_exe_stage_0_0_exe_stage inst
       (.Q({\^exe_to_mem_bus [137],\^exe_to_mem_bus [134:111],\^exe_to_mem_bus [78],\^exe_to_mem_bus [76:69],\^exe_to_mem_bus [136],exe_to_id_bus[36:32],data_sram_wdata[7:0],\^exe_to_mem_bus [31:0]}),
        .clk(clk),
        .data_sram_en(data_sram_en),
        .data_sram_wdata(data_sram_wdata[31:8]),
        .data_sram_we(data_sram_we),
        .ertn_flush(ertn_flush),
        .excp_flush(excp_flush),
        .exe_allowin(exe_allowin),
        .\exe_data_reg[139]_0 (\^exe_to_mem_bus [138]),
        .\exe_data_reg[139]_1 (\^exe_to_mem_bus [139]),
        .\exe_data_reg[160]_0 (\^exe_to_mem_bus [77]),
        .exe_to_id_bus(exe_to_id_bus[38:37]),
        .exe_to_mem_bus({\^exe_to_mem_bus [169:140],\^exe_to_mem_bus [135],\^exe_to_mem_bus [110:79],exe_to_id_bus[31:0]}),
        .exe_to_mem_valid(exe_to_mem_valid),
        .flush_from_mem(flush_from_mem),
        .id_to_exe_bus({id_to_exe_bus[220:153],id_to_exe_bus[150:0]}),
        .id_to_exe_valid(id_to_exe_valid),
        .mem_allowin(mem_allowin),
        .refetch_flush(refetch_flush),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module mycpu_top_block_exe_stage_0_0_alu
   (S,
    \exe_data_reg[103] ,
    \exe_data_reg[107] ,
    \exe_data_reg[111] ,
    \exe_data_reg[115] ,
    \exe_data_reg[119] ,
    \exe_data_reg[123] ,
    \exe_data_reg[127] ,
    Q,
    exe_alu_src2__63,
    adder_cin,
    exe_alu_src1);
  output [3:0]S;
  output [3:0]\exe_data_reg[103] ;
  output [3:0]\exe_data_reg[107] ;
  output [3:0]\exe_data_reg[111] ;
  output [3:0]\exe_data_reg[115] ;
  output [3:0]\exe_data_reg[119] ;
  output [3:0]\exe_data_reg[123] ;
  output [3:0]\exe_data_reg[127] ;
  input [69:0]Q;
  input [3:0]exe_alu_src2__63;
  input adder_cin;
  input [26:0]exe_alu_src1;

  wire [69:0]Q;
  wire [3:0]S;
  wire adder_cin;
  wire [26:0]exe_alu_src1;
  wire [3:0]exe_alu_src2__63;
  wire [3:0]\exe_data_reg[103] ;
  wire [3:0]\exe_data_reg[107] ;
  wire [3:0]\exe_data_reg[111] ;
  wire [3:0]\exe_data_reg[115] ;
  wire [3:0]\exe_data_reg[119] ;
  wire [3:0]\exe_data_reg[123] ;
  wire [3:0]\exe_data_reg[127] ;

  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[11]_INST_0_i_11 
       (.I0(exe_alu_src1[6]),
        .I1(Q[43]),
        .I2(Q[65]),
        .I3(Q[11]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[107] [3]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[11]_INST_0_i_12 
       (.I0(exe_alu_src1[5]),
        .I1(Q[42]),
        .I2(Q[65]),
        .I3(Q[10]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[107] [2]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[11]_INST_0_i_13 
       (.I0(exe_alu_src1[4]),
        .I1(Q[41]),
        .I2(Q[65]),
        .I3(Q[9]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[107] [1]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[11]_INST_0_i_14 
       (.I0(exe_alu_src1[3]),
        .I1(Q[40]),
        .I2(Q[65]),
        .I3(Q[8]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[107] [0]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[15]_INST_0_i_11 
       (.I0(exe_alu_src1[10]),
        .I1(Q[47]),
        .I2(Q[65]),
        .I3(Q[15]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[111] [3]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[15]_INST_0_i_12 
       (.I0(exe_alu_src1[9]),
        .I1(Q[46]),
        .I2(Q[65]),
        .I3(Q[14]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[111] [2]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[15]_INST_0_i_13 
       (.I0(exe_alu_src1[8]),
        .I1(Q[45]),
        .I2(Q[65]),
        .I3(Q[13]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[111] [1]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[15]_INST_0_i_14 
       (.I0(exe_alu_src1[7]),
        .I1(Q[44]),
        .I2(Q[65]),
        .I3(Q[12]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[111] [0]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[19]_INST_0_i_11 
       (.I0(exe_alu_src1[14]),
        .I1(Q[51]),
        .I2(Q[65]),
        .I3(Q[19]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[115] [3]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[19]_INST_0_i_12 
       (.I0(exe_alu_src1[13]),
        .I1(Q[50]),
        .I2(Q[65]),
        .I3(Q[18]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[115] [2]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[19]_INST_0_i_13 
       (.I0(exe_alu_src1[12]),
        .I1(Q[49]),
        .I2(Q[65]),
        .I3(Q[17]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[115] [1]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[19]_INST_0_i_14 
       (.I0(exe_alu_src1[11]),
        .I1(Q[48]),
        .I2(Q[65]),
        .I3(Q[16]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[115] [0]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[23]_INST_0_i_11 
       (.I0(exe_alu_src1[18]),
        .I1(Q[55]),
        .I2(Q[65]),
        .I3(Q[23]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[119] [3]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[23]_INST_0_i_12 
       (.I0(exe_alu_src1[17]),
        .I1(Q[54]),
        .I2(Q[65]),
        .I3(Q[22]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[119] [2]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[23]_INST_0_i_13 
       (.I0(exe_alu_src1[16]),
        .I1(Q[53]),
        .I2(Q[65]),
        .I3(Q[21]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[119] [1]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[23]_INST_0_i_14 
       (.I0(exe_alu_src1[15]),
        .I1(Q[52]),
        .I2(Q[65]),
        .I3(Q[20]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[119] [0]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[27]_INST_0_i_11 
       (.I0(exe_alu_src1[22]),
        .I1(Q[59]),
        .I2(Q[65]),
        .I3(Q[27]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[123] [3]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[27]_INST_0_i_12 
       (.I0(exe_alu_src1[21]),
        .I1(Q[58]),
        .I2(Q[65]),
        .I3(Q[26]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[123] [2]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[27]_INST_0_i_13 
       (.I0(exe_alu_src1[20]),
        .I1(Q[57]),
        .I2(Q[65]),
        .I3(Q[25]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[123] [1]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[27]_INST_0_i_14 
       (.I0(exe_alu_src1[19]),
        .I1(Q[56]),
        .I2(Q[65]),
        .I3(Q[24]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[123] [0]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[31]_INST_0_i_13 
       (.I0(exe_alu_src1[26]),
        .I1(Q[63]),
        .I2(Q[65]),
        .I3(Q[31]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[127] [3]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[31]_INST_0_i_14 
       (.I0(exe_alu_src1[25]),
        .I1(Q[62]),
        .I2(Q[65]),
        .I3(Q[30]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[127] [2]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[31]_INST_0_i_15 
       (.I0(exe_alu_src1[24]),
        .I1(Q[61]),
        .I2(Q[65]),
        .I3(Q[29]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[127] [1]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[31]_INST_0_i_16 
       (.I0(exe_alu_src1[23]),
        .I1(Q[60]),
        .I2(Q[65]),
        .I3(Q[28]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[127] [0]));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    \data_sram_addr[3]_INST_0_i_12 
       (.I0(Q[35]),
        .I1(Q[66]),
        .I2(Q[3]),
        .I3(exe_alu_src2__63[2]),
        .I4(adder_cin),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    \data_sram_addr[3]_INST_0_i_13 
       (.I0(Q[34]),
        .I1(Q[66]),
        .I2(Q[2]),
        .I3(exe_alu_src2__63[1]),
        .I4(adder_cin),
        .O(S[2]));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    \data_sram_addr[3]_INST_0_i_14 
       (.I0(Q[33]),
        .I1(Q[66]),
        .I2(Q[1]),
        .I3(exe_alu_src2__63[0]),
        .I4(adder_cin),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h1D1D1D1D1D1D1DE2)) 
    \data_sram_addr[3]_INST_0_i_15 
       (.I0(Q[32]),
        .I1(Q[66]),
        .I2(Q[0]),
        .I3(Q[69]),
        .I4(Q[68]),
        .I5(Q[67]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[7]_INST_0_i_11 
       (.I0(exe_alu_src1[2]),
        .I1(Q[39]),
        .I2(Q[65]),
        .I3(Q[7]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[103] [3]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[7]_INST_0_i_12 
       (.I0(exe_alu_src1[1]),
        .I1(Q[38]),
        .I2(Q[65]),
        .I3(Q[6]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[103] [2]));
  LUT6 #(
    .INIT(64'h95959A956A6A656A)) 
    \data_sram_addr[7]_INST_0_i_13 
       (.I0(exe_alu_src1[0]),
        .I1(Q[37]),
        .I2(Q[65]),
        .I3(Q[5]),
        .I4(Q[64]),
        .I5(adder_cin),
        .O(\exe_data_reg[103] [1]));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    \data_sram_addr[7]_INST_0_i_14 
       (.I0(Q[36]),
        .I1(Q[66]),
        .I2(Q[4]),
        .I3(exe_alu_src2__63[3]),
        .I4(adder_cin),
        .O(\exe_data_reg[103] [0]));
endmodule

(* ORIG_REF_NAME = "div" *) 
module mycpu_top_block_exe_stage_0_0_div
   (exe_valid_reg,
    exe_to_mem_bus,
    exe_data0,
    exe_to_id_bus,
    exe_to_mem_valid,
    exe_allowin,
    clk,
    Q,
    resetn,
    exe_valid,
    exe_allowin_0,
    mem_allowin,
    id_to_exe_valid,
    exe_valid0__0,
    exe_to_id_bus_1_sp_1,
    \exe_to_id_bus[1]_0 ,
    \exe_to_id_bus[2] ,
    \exe_to_id_bus[2]_0 ,
    \exe_to_id_bus[2]_1 ,
    \exe_to_id_bus[3] ,
    \exe_to_id_bus[3]_0 ,
    \exe_to_id_bus[4] ,
    \exe_to_id_bus[4]_0 ,
    \exe_to_id_bus[5] ,
    \exe_to_id_bus[5]_0 ,
    \exe_to_id_bus[6] ,
    \exe_to_id_bus[6]_0 ,
    \exe_to_id_bus[7] ,
    \exe_to_id_bus[7]_0 ,
    \exe_to_id_bus[8] ,
    \exe_to_id_bus[8]_0 ,
    \exe_to_id_bus[9] ,
    \exe_to_id_bus[9]_0 ,
    \exe_to_id_bus[10] ,
    \exe_to_id_bus[10]_0 ,
    \exe_to_id_bus[11] ,
    \exe_to_id_bus[11]_0 ,
    \exe_to_id_bus[12] ,
    \exe_to_id_bus[12]_0 ,
    \exe_to_id_bus[13] ,
    \exe_to_id_bus[13]_0 ,
    \exe_to_id_bus[14] ,
    \exe_to_id_bus[14]_0 ,
    \exe_to_id_bus[15] ,
    \exe_to_id_bus[15]_0 ,
    \exe_to_id_bus[16] ,
    \exe_to_id_bus[16]_0 ,
    \exe_to_id_bus[17] ,
    \exe_to_id_bus[17]_0 ,
    \exe_to_id_bus[18] ,
    \exe_to_id_bus[18]_0 ,
    \exe_to_id_bus[19] ,
    \exe_to_id_bus[19]_0 ,
    \exe_to_id_bus[20] ,
    \exe_to_id_bus[20]_0 ,
    \exe_to_id_bus[21] ,
    \exe_to_id_bus[21]_0 ,
    \exe_to_id_bus[22] ,
    \exe_to_id_bus[22]_0 ,
    \exe_to_id_bus[23] ,
    \exe_to_id_bus[23]_0 ,
    \exe_to_id_bus[24] ,
    \exe_to_id_bus[24]_0 ,
    \exe_to_id_bus[25] ,
    \exe_to_id_bus[25]_0 ,
    \exe_to_id_bus[26] ,
    \exe_to_id_bus[26]_0 ,
    \exe_to_id_bus[27] ,
    \exe_to_id_bus[27]_0 ,
    \exe_to_id_bus[28] ,
    \exe_to_id_bus[28]_0 ,
    \exe_to_id_bus[29] ,
    \exe_to_id_bus[29]_0 ,
    \exe_to_id_bus[30] ,
    \exe_to_id_bus[30]_0 ,
    \exe_to_id_bus[31] ,
    \exe_to_id_bus[31]_0 ,
    \exe_to_id_bus[37] ,
    exe_to_id_bus_0_sp_1,
    \exe_to_id_bus[0]_0 );
  output exe_valid_reg;
  output [31:0]exe_to_mem_bus;
  output exe_data0;
  output [1:0]exe_to_id_bus;
  output exe_to_mem_valid;
  output exe_allowin;
  input clk;
  input [70:0]Q;
  input resetn;
  input exe_valid;
  input exe_allowin_0;
  input mem_allowin;
  input id_to_exe_valid;
  input exe_valid0__0;
  input exe_to_id_bus_1_sp_1;
  input \exe_to_id_bus[1]_0 ;
  input \exe_to_id_bus[2] ;
  input \exe_to_id_bus[2]_0 ;
  input \exe_to_id_bus[2]_1 ;
  input \exe_to_id_bus[3] ;
  input \exe_to_id_bus[3]_0 ;
  input \exe_to_id_bus[4] ;
  input \exe_to_id_bus[4]_0 ;
  input \exe_to_id_bus[5] ;
  input \exe_to_id_bus[5]_0 ;
  input \exe_to_id_bus[6] ;
  input \exe_to_id_bus[6]_0 ;
  input \exe_to_id_bus[7] ;
  input \exe_to_id_bus[7]_0 ;
  input \exe_to_id_bus[8] ;
  input \exe_to_id_bus[8]_0 ;
  input \exe_to_id_bus[9] ;
  input \exe_to_id_bus[9]_0 ;
  input \exe_to_id_bus[10] ;
  input \exe_to_id_bus[10]_0 ;
  input \exe_to_id_bus[11] ;
  input \exe_to_id_bus[11]_0 ;
  input \exe_to_id_bus[12] ;
  input \exe_to_id_bus[12]_0 ;
  input \exe_to_id_bus[13] ;
  input \exe_to_id_bus[13]_0 ;
  input \exe_to_id_bus[14] ;
  input \exe_to_id_bus[14]_0 ;
  input \exe_to_id_bus[15] ;
  input \exe_to_id_bus[15]_0 ;
  input \exe_to_id_bus[16] ;
  input \exe_to_id_bus[16]_0 ;
  input \exe_to_id_bus[17] ;
  input \exe_to_id_bus[17]_0 ;
  input \exe_to_id_bus[18] ;
  input \exe_to_id_bus[18]_0 ;
  input \exe_to_id_bus[19] ;
  input \exe_to_id_bus[19]_0 ;
  input \exe_to_id_bus[20] ;
  input \exe_to_id_bus[20]_0 ;
  input \exe_to_id_bus[21] ;
  input \exe_to_id_bus[21]_0 ;
  input \exe_to_id_bus[22] ;
  input \exe_to_id_bus[22]_0 ;
  input \exe_to_id_bus[23] ;
  input \exe_to_id_bus[23]_0 ;
  input \exe_to_id_bus[24] ;
  input \exe_to_id_bus[24]_0 ;
  input \exe_to_id_bus[25] ;
  input \exe_to_id_bus[25]_0 ;
  input \exe_to_id_bus[26] ;
  input \exe_to_id_bus[26]_0 ;
  input \exe_to_id_bus[27] ;
  input \exe_to_id_bus[27]_0 ;
  input \exe_to_id_bus[28] ;
  input \exe_to_id_bus[28]_0 ;
  input \exe_to_id_bus[29] ;
  input \exe_to_id_bus[29]_0 ;
  input \exe_to_id_bus[30] ;
  input \exe_to_id_bus[30]_0 ;
  input \exe_to_id_bus[31] ;
  input \exe_to_id_bus[31]_0 ;
  input \exe_to_id_bus[37] ;
  input exe_to_id_bus_0_sp_1;
  input \exe_to_id_bus[0]_0 ;

  wire [70:0]Q;
  wire [31:1]TmpR2;
  wire TmpR2_carry__0_i_1_n_0;
  wire TmpR2_carry__0_i_2_n_0;
  wire TmpR2_carry__0_i_3_n_0;
  wire TmpR2_carry__0_i_4_n_0;
  wire TmpR2_carry__0_n_0;
  wire TmpR2_carry__0_n_1;
  wire TmpR2_carry__0_n_2;
  wire TmpR2_carry__0_n_3;
  wire TmpR2_carry__1_i_1_n_0;
  wire TmpR2_carry__1_i_2_n_0;
  wire TmpR2_carry__1_i_3_n_0;
  wire TmpR2_carry__1_i_4_n_0;
  wire TmpR2_carry__1_n_0;
  wire TmpR2_carry__1_n_1;
  wire TmpR2_carry__1_n_2;
  wire TmpR2_carry__1_n_3;
  wire TmpR2_carry__2_i_1_n_0;
  wire TmpR2_carry__2_i_2_n_0;
  wire TmpR2_carry__2_i_3_n_0;
  wire TmpR2_carry__2_i_4_n_0;
  wire TmpR2_carry__2_n_0;
  wire TmpR2_carry__2_n_1;
  wire TmpR2_carry__2_n_2;
  wire TmpR2_carry__2_n_3;
  wire TmpR2_carry__3_i_1_n_0;
  wire TmpR2_carry__3_i_2_n_0;
  wire TmpR2_carry__3_i_3_n_0;
  wire TmpR2_carry__3_i_4_n_0;
  wire TmpR2_carry__3_n_0;
  wire TmpR2_carry__3_n_1;
  wire TmpR2_carry__3_n_2;
  wire TmpR2_carry__3_n_3;
  wire TmpR2_carry__4_i_1_n_0;
  wire TmpR2_carry__4_i_2_n_0;
  wire TmpR2_carry__4_i_3_n_0;
  wire TmpR2_carry__4_i_4_n_0;
  wire TmpR2_carry__4_n_0;
  wire TmpR2_carry__4_n_1;
  wire TmpR2_carry__4_n_2;
  wire TmpR2_carry__4_n_3;
  wire TmpR2_carry__5_i_1_n_0;
  wire TmpR2_carry__5_i_2_n_0;
  wire TmpR2_carry__5_i_3_n_0;
  wire TmpR2_carry__5_i_4_n_0;
  wire TmpR2_carry__5_n_0;
  wire TmpR2_carry__5_n_1;
  wire TmpR2_carry__5_n_2;
  wire TmpR2_carry__5_n_3;
  wire TmpR2_carry__6_i_1_n_0;
  wire TmpR2_carry__6_i_2_n_0;
  wire TmpR2_carry__6_i_3_n_0;
  wire TmpR2_carry__6_n_2;
  wire TmpR2_carry__6_n_3;
  wire TmpR2_carry_i_1_n_0;
  wire TmpR2_carry_i_2_n_0;
  wire TmpR2_carry_i_3_n_0;
  wire TmpR2_carry_i_4_n_0;
  wire TmpR2_carry_n_0;
  wire TmpR2_carry_n_1;
  wire TmpR2_carry_n_2;
  wire TmpR2_carry_n_3;
  wire TmpS2__0;
  wire \TmpS2_inferred__0/i__carry__0_n_0 ;
  wire \TmpS2_inferred__0/i__carry__0_n_1 ;
  wire \TmpS2_inferred__0/i__carry__0_n_2 ;
  wire \TmpS2_inferred__0/i__carry__0_n_3 ;
  wire \TmpS2_inferred__0/i__carry__0_n_4 ;
  wire \TmpS2_inferred__0/i__carry__0_n_5 ;
  wire \TmpS2_inferred__0/i__carry__0_n_6 ;
  wire \TmpS2_inferred__0/i__carry__0_n_7 ;
  wire \TmpS2_inferred__0/i__carry__1_n_0 ;
  wire \TmpS2_inferred__0/i__carry__1_n_1 ;
  wire \TmpS2_inferred__0/i__carry__1_n_2 ;
  wire \TmpS2_inferred__0/i__carry__1_n_3 ;
  wire \TmpS2_inferred__0/i__carry__1_n_4 ;
  wire \TmpS2_inferred__0/i__carry__1_n_5 ;
  wire \TmpS2_inferred__0/i__carry__1_n_6 ;
  wire \TmpS2_inferred__0/i__carry__1_n_7 ;
  wire \TmpS2_inferred__0/i__carry__2_n_0 ;
  wire \TmpS2_inferred__0/i__carry__2_n_1 ;
  wire \TmpS2_inferred__0/i__carry__2_n_2 ;
  wire \TmpS2_inferred__0/i__carry__2_n_3 ;
  wire \TmpS2_inferred__0/i__carry__2_n_4 ;
  wire \TmpS2_inferred__0/i__carry__2_n_5 ;
  wire \TmpS2_inferred__0/i__carry__2_n_6 ;
  wire \TmpS2_inferred__0/i__carry__2_n_7 ;
  wire \TmpS2_inferred__0/i__carry__3_n_0 ;
  wire \TmpS2_inferred__0/i__carry__3_n_1 ;
  wire \TmpS2_inferred__0/i__carry__3_n_2 ;
  wire \TmpS2_inferred__0/i__carry__3_n_3 ;
  wire \TmpS2_inferred__0/i__carry__3_n_4 ;
  wire \TmpS2_inferred__0/i__carry__3_n_5 ;
  wire \TmpS2_inferred__0/i__carry__3_n_6 ;
  wire \TmpS2_inferred__0/i__carry__3_n_7 ;
  wire \TmpS2_inferred__0/i__carry__4_n_0 ;
  wire \TmpS2_inferred__0/i__carry__4_n_1 ;
  wire \TmpS2_inferred__0/i__carry__4_n_2 ;
  wire \TmpS2_inferred__0/i__carry__4_n_3 ;
  wire \TmpS2_inferred__0/i__carry__4_n_4 ;
  wire \TmpS2_inferred__0/i__carry__4_n_5 ;
  wire \TmpS2_inferred__0/i__carry__4_n_6 ;
  wire \TmpS2_inferred__0/i__carry__4_n_7 ;
  wire \TmpS2_inferred__0/i__carry__5_n_0 ;
  wire \TmpS2_inferred__0/i__carry__5_n_1 ;
  wire \TmpS2_inferred__0/i__carry__5_n_2 ;
  wire \TmpS2_inferred__0/i__carry__5_n_3 ;
  wire \TmpS2_inferred__0/i__carry__5_n_4 ;
  wire \TmpS2_inferred__0/i__carry__5_n_5 ;
  wire \TmpS2_inferred__0/i__carry__5_n_6 ;
  wire \TmpS2_inferred__0/i__carry__5_n_7 ;
  wire \TmpS2_inferred__0/i__carry__6_n_2 ;
  wire \TmpS2_inferred__0/i__carry__6_n_3 ;
  wire \TmpS2_inferred__0/i__carry__6_n_5 ;
  wire \TmpS2_inferred__0/i__carry__6_n_6 ;
  wire \TmpS2_inferred__0/i__carry__6_n_7 ;
  wire \TmpS2_inferred__0/i__carry_n_0 ;
  wire \TmpS2_inferred__0/i__carry_n_1 ;
  wire \TmpS2_inferred__0/i__carry_n_2 ;
  wire \TmpS2_inferred__0/i__carry_n_3 ;
  wire \TmpS2_inferred__0/i__carry_n_4 ;
  wire \TmpS2_inferred__0/i__carry_n_5 ;
  wire \TmpS2_inferred__0/i__carry_n_6 ;
  wire \TmpS2_inferred__0/i__carry_n_7 ;
  wire [31:0]UnsignR;
  wire UnsignR0_carry__0_i_1_n_0;
  wire UnsignR0_carry__0_i_2_n_0;
  wire UnsignR0_carry__0_i_3_n_0;
  wire UnsignR0_carry__0_i_4_n_0;
  wire UnsignR0_carry__0_n_0;
  wire UnsignR0_carry__0_n_1;
  wire UnsignR0_carry__0_n_2;
  wire UnsignR0_carry__0_n_3;
  wire UnsignR0_carry__1_i_1_n_0;
  wire UnsignR0_carry__1_i_2_n_0;
  wire UnsignR0_carry__1_i_3_n_0;
  wire UnsignR0_carry__1_i_4_n_0;
  wire UnsignR0_carry__1_n_0;
  wire UnsignR0_carry__1_n_1;
  wire UnsignR0_carry__1_n_2;
  wire UnsignR0_carry__1_n_3;
  wire UnsignR0_carry__2_i_1_n_0;
  wire UnsignR0_carry__2_i_2_n_0;
  wire UnsignR0_carry__2_i_3_n_0;
  wire UnsignR0_carry__2_i_4_n_0;
  wire UnsignR0_carry__2_n_0;
  wire UnsignR0_carry__2_n_1;
  wire UnsignR0_carry__2_n_2;
  wire UnsignR0_carry__2_n_3;
  wire UnsignR0_carry__3_i_1_n_0;
  wire UnsignR0_carry__3_i_2_n_0;
  wire UnsignR0_carry__3_i_3_n_0;
  wire UnsignR0_carry__3_i_4_n_0;
  wire UnsignR0_carry__3_n_0;
  wire UnsignR0_carry__3_n_1;
  wire UnsignR0_carry__3_n_2;
  wire UnsignR0_carry__3_n_3;
  wire UnsignR0_carry__4_i_1_n_0;
  wire UnsignR0_carry__4_i_2_n_0;
  wire UnsignR0_carry__4_i_3_n_0;
  wire UnsignR0_carry__4_i_4_n_0;
  wire UnsignR0_carry__4_n_0;
  wire UnsignR0_carry__4_n_1;
  wire UnsignR0_carry__4_n_2;
  wire UnsignR0_carry__4_n_3;
  wire UnsignR0_carry__5_i_1_n_0;
  wire UnsignR0_carry__5_i_2_n_0;
  wire UnsignR0_carry__5_i_3_n_0;
  wire UnsignR0_carry__5_i_4_n_0;
  wire UnsignR0_carry__5_n_0;
  wire UnsignR0_carry__5_n_1;
  wire UnsignR0_carry__5_n_2;
  wire UnsignR0_carry__5_n_3;
  wire UnsignR0_carry__6_i_1_n_0;
  wire UnsignR0_carry__6_i_2_n_0;
  wire UnsignR0_carry__6_i_3_n_0;
  wire UnsignR0_carry__6_i_4_n_0;
  wire UnsignR0_carry__6_n_1;
  wire UnsignR0_carry__6_n_2;
  wire UnsignR0_carry__6_n_3;
  wire UnsignR0_carry_i_1_n_0;
  wire UnsignR0_carry_i_2_n_0;
  wire UnsignR0_carry_i_3_n_0;
  wire UnsignR0_carry_i_4_n_0;
  wire UnsignR0_carry_n_0;
  wire UnsignR0_carry_n_1;
  wire UnsignR0_carry_n_2;
  wire UnsignR0_carry_n_3;
  wire [31:0]UnsignR0_in;
  wire \UnsignR[31]_i_1_n_0 ;
  wire [31:31]UnsignS1_in;
  wire \UnsignS[0]_i_1_n_0 ;
  wire [31:1]UnsignX2;
  wire [31:1]UnsignY2;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[7]_inv_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire div_complete;
  wire div_signed_buffer;
  wire div_signed_buffer_i_1_n_0;
  wire div_stall__0;
  wire exe_allowin;
  wire exe_allowin_0;
  wire exe_allowin_INST_0_i_3_n_0;
  wire exe_data0;
  wire [1:0]exe_to_id_bus;
  wire \exe_to_id_bus[0]_0 ;
  wire \exe_to_id_bus[0]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[10] ;
  wire \exe_to_id_bus[10]_0 ;
  wire \exe_to_id_bus[10]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[10]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[11] ;
  wire \exe_to_id_bus[11]_0 ;
  wire \exe_to_id_bus[11]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[11]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[12] ;
  wire \exe_to_id_bus[12]_0 ;
  wire \exe_to_id_bus[12]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[12]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[13] ;
  wire \exe_to_id_bus[13]_0 ;
  wire \exe_to_id_bus[13]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[13]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[14] ;
  wire \exe_to_id_bus[14]_0 ;
  wire \exe_to_id_bus[14]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[14]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[15] ;
  wire \exe_to_id_bus[15]_0 ;
  wire \exe_to_id_bus[15]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[15]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[16] ;
  wire \exe_to_id_bus[16]_0 ;
  wire \exe_to_id_bus[16]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[16]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[17] ;
  wire \exe_to_id_bus[17]_0 ;
  wire \exe_to_id_bus[17]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[17]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[18] ;
  wire \exe_to_id_bus[18]_0 ;
  wire \exe_to_id_bus[18]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[18]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[19] ;
  wire \exe_to_id_bus[19]_0 ;
  wire \exe_to_id_bus[19]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[19]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[1]_0 ;
  wire \exe_to_id_bus[1]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[1]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[1]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[20] ;
  wire \exe_to_id_bus[20]_0 ;
  wire \exe_to_id_bus[20]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[20]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[21] ;
  wire \exe_to_id_bus[21]_0 ;
  wire \exe_to_id_bus[21]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[21]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[22] ;
  wire \exe_to_id_bus[22]_0 ;
  wire \exe_to_id_bus[22]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[22]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[23] ;
  wire \exe_to_id_bus[23]_0 ;
  wire \exe_to_id_bus[23]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[23]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[24] ;
  wire \exe_to_id_bus[24]_0 ;
  wire \exe_to_id_bus[24]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[24]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[25] ;
  wire \exe_to_id_bus[25]_0 ;
  wire \exe_to_id_bus[25]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[25]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[26] ;
  wire \exe_to_id_bus[26]_0 ;
  wire \exe_to_id_bus[26]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[26]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[27] ;
  wire \exe_to_id_bus[27]_0 ;
  wire \exe_to_id_bus[27]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[27]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[28] ;
  wire \exe_to_id_bus[28]_0 ;
  wire \exe_to_id_bus[28]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[28]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[29] ;
  wire \exe_to_id_bus[29]_0 ;
  wire \exe_to_id_bus[29]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[29]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[2] ;
  wire \exe_to_id_bus[2]_0 ;
  wire \exe_to_id_bus[2]_1 ;
  wire \exe_to_id_bus[2]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[2]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[30] ;
  wire \exe_to_id_bus[30]_0 ;
  wire \exe_to_id_bus[30]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[30]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[31] ;
  wire \exe_to_id_bus[31]_0 ;
  wire \exe_to_id_bus[31]_INST_0_i_10_n_0 ;
  wire \exe_to_id_bus[31]_INST_0_i_11_n_0 ;
  wire \exe_to_id_bus[31]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[31]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[37] ;
  wire \exe_to_id_bus[3] ;
  wire \exe_to_id_bus[3]_0 ;
  wire \exe_to_id_bus[3]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[3]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[4] ;
  wire \exe_to_id_bus[4]_0 ;
  wire \exe_to_id_bus[4]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[4]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[5] ;
  wire \exe_to_id_bus[5]_0 ;
  wire \exe_to_id_bus[5]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[5]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[6] ;
  wire \exe_to_id_bus[6]_0 ;
  wire \exe_to_id_bus[6]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[6]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[7] ;
  wire \exe_to_id_bus[7]_0 ;
  wire \exe_to_id_bus[7]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[7]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[8] ;
  wire \exe_to_id_bus[8]_0 ;
  wire \exe_to_id_bus[8]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[8]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[9] ;
  wire \exe_to_id_bus[9]_0 ;
  wire \exe_to_id_bus[9]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[9]_INST_0_i_3_n_0 ;
  wire exe_to_id_bus_0_sn_1;
  wire exe_to_id_bus_1_sn_1;
  wire [31:0]exe_to_mem_bus;
  wire exe_to_mem_valid;
  wire exe_valid;
  wire exe_valid0__0;
  wire exe_valid_reg;
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
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire id_to_exe_valid;
  wire mem_allowin;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in__0;
  wire [32:1]p_2_in;
  wire real_complete__7;
  wire real_div_signed__0;
  wire real_x_31__2;
  wire resetn;
  wire [32:1]result_r;
  wire [32:32]tmp_d;
  wire [31:0]tmp_d__0;
  wire tmp_r0_carry__0_i_1_n_0;
  wire tmp_r0_carry__0_i_2_n_0;
  wire tmp_r0_carry__0_i_3_n_0;
  wire tmp_r0_carry__0_i_4_n_0;
  wire tmp_r0_carry__0_i_5_n_0;
  wire tmp_r0_carry__0_i_5_n_1;
  wire tmp_r0_carry__0_i_5_n_2;
  wire tmp_r0_carry__0_i_5_n_3;
  wire tmp_r0_carry__0_i_6_n_0;
  wire tmp_r0_carry__0_i_7_n_0;
  wire tmp_r0_carry__0_i_8_n_0;
  wire tmp_r0_carry__0_i_9_n_0;
  wire tmp_r0_carry__0_n_0;
  wire tmp_r0_carry__0_n_1;
  wire tmp_r0_carry__0_n_2;
  wire tmp_r0_carry__0_n_3;
  wire tmp_r0_carry__1_i_1_n_0;
  wire tmp_r0_carry__1_i_2_n_0;
  wire tmp_r0_carry__1_i_3_n_0;
  wire tmp_r0_carry__1_i_4_n_0;
  wire tmp_r0_carry__1_i_5_n_0;
  wire tmp_r0_carry__1_i_5_n_1;
  wire tmp_r0_carry__1_i_5_n_2;
  wire tmp_r0_carry__1_i_5_n_3;
  wire tmp_r0_carry__1_i_6_n_0;
  wire tmp_r0_carry__1_i_7_n_0;
  wire tmp_r0_carry__1_i_8_n_0;
  wire tmp_r0_carry__1_i_9_n_0;
  wire tmp_r0_carry__1_n_0;
  wire tmp_r0_carry__1_n_1;
  wire tmp_r0_carry__1_n_2;
  wire tmp_r0_carry__1_n_3;
  wire tmp_r0_carry__2_i_1_n_0;
  wire tmp_r0_carry__2_i_2_n_0;
  wire tmp_r0_carry__2_i_3_n_0;
  wire tmp_r0_carry__2_i_4_n_0;
  wire tmp_r0_carry__2_i_5_n_0;
  wire tmp_r0_carry__2_i_5_n_1;
  wire tmp_r0_carry__2_i_5_n_2;
  wire tmp_r0_carry__2_i_5_n_3;
  wire tmp_r0_carry__2_i_6_n_0;
  wire tmp_r0_carry__2_i_7_n_0;
  wire tmp_r0_carry__2_i_8_n_0;
  wire tmp_r0_carry__2_i_9_n_0;
  wire tmp_r0_carry__2_n_0;
  wire tmp_r0_carry__2_n_1;
  wire tmp_r0_carry__2_n_2;
  wire tmp_r0_carry__2_n_3;
  wire tmp_r0_carry__3_i_1_n_0;
  wire tmp_r0_carry__3_i_2_n_0;
  wire tmp_r0_carry__3_i_3_n_0;
  wire tmp_r0_carry__3_i_4_n_0;
  wire tmp_r0_carry__3_i_5_n_0;
  wire tmp_r0_carry__3_i_5_n_1;
  wire tmp_r0_carry__3_i_5_n_2;
  wire tmp_r0_carry__3_i_5_n_3;
  wire tmp_r0_carry__3_i_6_n_0;
  wire tmp_r0_carry__3_i_7_n_0;
  wire tmp_r0_carry__3_i_8_n_0;
  wire tmp_r0_carry__3_i_9_n_0;
  wire tmp_r0_carry__3_n_0;
  wire tmp_r0_carry__3_n_1;
  wire tmp_r0_carry__3_n_2;
  wire tmp_r0_carry__3_n_3;
  wire tmp_r0_carry__4_i_1_n_0;
  wire tmp_r0_carry__4_i_2_n_0;
  wire tmp_r0_carry__4_i_3_n_0;
  wire tmp_r0_carry__4_i_4_n_0;
  wire tmp_r0_carry__4_i_5_n_0;
  wire tmp_r0_carry__4_i_5_n_1;
  wire tmp_r0_carry__4_i_5_n_2;
  wire tmp_r0_carry__4_i_5_n_3;
  wire tmp_r0_carry__4_i_6_n_0;
  wire tmp_r0_carry__4_i_7_n_0;
  wire tmp_r0_carry__4_i_8_n_0;
  wire tmp_r0_carry__4_i_9_n_0;
  wire tmp_r0_carry__4_n_0;
  wire tmp_r0_carry__4_n_1;
  wire tmp_r0_carry__4_n_2;
  wire tmp_r0_carry__4_n_3;
  wire tmp_r0_carry__5_i_1_n_0;
  wire tmp_r0_carry__5_i_2_n_0;
  wire tmp_r0_carry__5_i_3_n_0;
  wire tmp_r0_carry__5_i_4_n_0;
  wire tmp_r0_carry__5_i_5_n_0;
  wire tmp_r0_carry__5_i_5_n_1;
  wire tmp_r0_carry__5_i_5_n_2;
  wire tmp_r0_carry__5_i_5_n_3;
  wire tmp_r0_carry__5_i_6_n_0;
  wire tmp_r0_carry__5_i_7_n_0;
  wire tmp_r0_carry__5_i_8_n_0;
  wire tmp_r0_carry__5_i_9_n_0;
  wire tmp_r0_carry__5_n_0;
  wire tmp_r0_carry__5_n_1;
  wire tmp_r0_carry__5_n_2;
  wire tmp_r0_carry__5_n_3;
  wire tmp_r0_carry__6_i_1_n_0;
  wire tmp_r0_carry__6_i_2_n_0;
  wire tmp_r0_carry__6_i_3_n_0;
  wire tmp_r0_carry__6_i_4_n_0;
  wire tmp_r0_carry__6_i_5_n_2;
  wire tmp_r0_carry__6_i_5_n_3;
  wire tmp_r0_carry__6_i_6_n_0;
  wire tmp_r0_carry__6_i_7_n_0;
  wire tmp_r0_carry__6_i_8_n_0;
  wire tmp_r0_carry__6_n_0;
  wire tmp_r0_carry__6_n_1;
  wire tmp_r0_carry__6_n_2;
  wire tmp_r0_carry__6_n_3;
  wire tmp_r0_carry__7_i_1_n_0;
  wire tmp_r0_carry_i_10_n_0;
  wire tmp_r0_carry_i_10_n_1;
  wire tmp_r0_carry_i_10_n_2;
  wire tmp_r0_carry_i_10_n_3;
  wire tmp_r0_carry_i_11_n_0;
  wire tmp_r0_carry_i_12_n_0;
  wire tmp_r0_carry_i_13_n_0;
  wire tmp_r0_carry_i_14_n_0;
  wire tmp_r0_carry_i_15_n_0;
  wire tmp_r0_carry_i_16_n_0;
  wire tmp_r0_carry_i_17_n_0;
  wire tmp_r0_carry_i_18_n_0;
  wire tmp_r0_carry_i_19_n_0;
  wire tmp_r0_carry_i_1_n_0;
  wire tmp_r0_carry_i_20_n_0;
  wire tmp_r0_carry_i_21_n_0;
  wire tmp_r0_carry_i_22_n_0;
  wire tmp_r0_carry_i_23_n_0;
  wire tmp_r0_carry_i_24_n_0;
  wire tmp_r0_carry_i_25_n_0;
  wire tmp_r0_carry_i_26_n_0;
  wire tmp_r0_carry_i_27_n_0;
  wire tmp_r0_carry_i_28_n_0;
  wire tmp_r0_carry_i_29_n_0;
  wire tmp_r0_carry_i_30_n_0;
  wire tmp_r0_carry_i_31_n_0;
  wire tmp_r0_carry_i_32_n_0;
  wire tmp_r0_carry_i_33_n_0;
  wire tmp_r0_carry_i_34_n_0;
  wire tmp_r0_carry_i_34_n_1;
  wire tmp_r0_carry_i_34_n_2;
  wire tmp_r0_carry_i_34_n_3;
  wire tmp_r0_carry_i_35_n_0;
  wire tmp_r0_carry_i_36_n_0;
  wire tmp_r0_carry_i_37_n_0;
  wire tmp_r0_carry_i_37_n_1;
  wire tmp_r0_carry_i_37_n_2;
  wire tmp_r0_carry_i_37_n_3;
  wire tmp_r0_carry_i_38_n_0;
  wire tmp_r0_carry_i_39_n_0;
  wire tmp_r0_carry_i_3_n_0;
  wire tmp_r0_carry_i_40_n_2;
  wire tmp_r0_carry_i_40_n_3;
  wire tmp_r0_carry_i_41_n_0;
  wire tmp_r0_carry_i_42_n_0;
  wire tmp_r0_carry_i_42_n_1;
  wire tmp_r0_carry_i_42_n_2;
  wire tmp_r0_carry_i_42_n_3;
  wire tmp_r0_carry_i_43_n_0;
  wire tmp_r0_carry_i_44_n_0;
  wire tmp_r0_carry_i_45_n_0;
  wire tmp_r0_carry_i_46_n_0;
  wire tmp_r0_carry_i_47_n_0;
  wire tmp_r0_carry_i_48_n_0;
  wire tmp_r0_carry_i_49_n_0;
  wire tmp_r0_carry_i_4_n_0;
  wire tmp_r0_carry_i_50_n_0;
  wire tmp_r0_carry_i_51_n_0;
  wire tmp_r0_carry_i_51_n_1;
  wire tmp_r0_carry_i_51_n_2;
  wire tmp_r0_carry_i_51_n_3;
  wire tmp_r0_carry_i_52_n_0;
  wire tmp_r0_carry_i_53_n_0;
  wire tmp_r0_carry_i_54_n_0;
  wire tmp_r0_carry_i_55_n_0;
  wire tmp_r0_carry_i_56_n_0;
  wire tmp_r0_carry_i_57_n_0;
  wire tmp_r0_carry_i_58_n_0;
  wire tmp_r0_carry_i_59_n_0;
  wire tmp_r0_carry_i_5_n_0;
  wire tmp_r0_carry_i_60_n_0;
  wire tmp_r0_carry_i_61_n_0;
  wire tmp_r0_carry_i_62_n_0;
  wire tmp_r0_carry_i_63_n_0;
  wire tmp_r0_carry_i_64_n_0;
  wire tmp_r0_carry_i_64_n_1;
  wire tmp_r0_carry_i_64_n_2;
  wire tmp_r0_carry_i_64_n_3;
  wire tmp_r0_carry_i_65_n_0;
  wire tmp_r0_carry_i_66_n_0;
  wire tmp_r0_carry_i_67_n_0;
  wire tmp_r0_carry_i_68_n_0;
  wire tmp_r0_carry_i_69_n_0;
  wire tmp_r0_carry_i_6_n_0;
  wire tmp_r0_carry_i_70_n_0;
  wire tmp_r0_carry_i_71_n_0;
  wire tmp_r0_carry_i_72_n_0;
  wire tmp_r0_carry_i_73_n_0;
  wire tmp_r0_carry_i_74_n_0;
  wire tmp_r0_carry_i_75_n_0;
  wire tmp_r0_carry_i_76_n_0;
  wire tmp_r0_carry_i_76_n_1;
  wire tmp_r0_carry_i_76_n_2;
  wire tmp_r0_carry_i_76_n_3;
  wire tmp_r0_carry_i_77_n_0;
  wire tmp_r0_carry_i_78_n_0;
  wire tmp_r0_carry_i_79_n_0;
  wire tmp_r0_carry_i_7_n_0;
  wire tmp_r0_carry_i_80_n_0;
  wire tmp_r0_carry_i_81_n_0;
  wire tmp_r0_carry_i_82_n_0;
  wire tmp_r0_carry_i_82_n_1;
  wire tmp_r0_carry_i_82_n_2;
  wire tmp_r0_carry_i_82_n_3;
  wire tmp_r0_carry_i_83_n_0;
  wire tmp_r0_carry_i_84_n_0;
  wire tmp_r0_carry_i_85_n_0;
  wire tmp_r0_carry_i_86_n_0;
  wire tmp_r0_carry_i_87_n_0;
  wire tmp_r0_carry_i_88_n_0;
  wire tmp_r0_carry_i_89_n_0;
  wire tmp_r0_carry_i_8_n_0;
  wire tmp_r0_carry_i_90_n_0;
  wire tmp_r0_carry_i_91_n_0;
  wire tmp_r0_carry_i_92_n_0;
  wire tmp_r0_carry_i_93_n_0;
  wire tmp_r0_carry_i_94_n_0;
  wire tmp_r0_carry_i_9_n_0;
  wire tmp_r0_carry_n_0;
  wire tmp_r0_carry_n_1;
  wire tmp_r0_carry_n_2;
  wire tmp_r0_carry_n_3;
  wire \tmp_r[32]_i_1_n_0 ;
  wire x_31_buffer;
  wire x_31_buffer_i_1_n_0;
  wire y_31_buffer;
  wire y_31_buffer_i_1_n_0;
  wire [3:2]NLW_TmpR2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_TmpR2_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_TmpS2_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_TmpS2_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:3]NLW_UnsignR0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_tmp_r0_carry__6_i_5_CO_UNCONNECTED;
  wire [3:3]NLW_tmp_r0_carry__6_i_5_O_UNCONNECTED;
  wire [3:0]NLW_tmp_r0_carry__7_CO_UNCONNECTED;
  wire [3:1]NLW_tmp_r0_carry__7_O_UNCONNECTED;
  wire [3:2]NLW_tmp_r0_carry_i_40_CO_UNCONNECTED;
  wire [3:3]NLW_tmp_r0_carry_i_40_O_UNCONNECTED;

  assign exe_to_id_bus_0_sn_1 = exe_to_id_bus_0_sp_1;
  assign exe_to_id_bus_1_sn_1 = exe_to_id_bus_1_sp_1;
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry
       (.CI(1'b0),
        .CO({TmpR2_carry_n_0,TmpR2_carry_n_1,TmpR2_carry_n_2,TmpR2_carry_n_3}),
        .CYINIT(UnsignR[0]),
        .DI(UnsignR[4:1]),
        .O(TmpR2[4:1]),
        .S({TmpR2_carry_i_1_n_0,TmpR2_carry_i_2_n_0,TmpR2_carry_i_3_n_0,TmpR2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry__0
       (.CI(TmpR2_carry_n_0),
        .CO({TmpR2_carry__0_n_0,TmpR2_carry__0_n_1,TmpR2_carry__0_n_2,TmpR2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(UnsignR[8:5]),
        .O(TmpR2[8:5]),
        .S({TmpR2_carry__0_i_1_n_0,TmpR2_carry__0_i_2_n_0,TmpR2_carry__0_i_3_n_0,TmpR2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__0_i_1
       (.I0(UnsignR[8]),
        .O(TmpR2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__0_i_2
       (.I0(UnsignR[7]),
        .O(TmpR2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__0_i_3
       (.I0(UnsignR[6]),
        .O(TmpR2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__0_i_4
       (.I0(UnsignR[5]),
        .O(TmpR2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry__1
       (.CI(TmpR2_carry__0_n_0),
        .CO({TmpR2_carry__1_n_0,TmpR2_carry__1_n_1,TmpR2_carry__1_n_2,TmpR2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(UnsignR[12:9]),
        .O(TmpR2[12:9]),
        .S({TmpR2_carry__1_i_1_n_0,TmpR2_carry__1_i_2_n_0,TmpR2_carry__1_i_3_n_0,TmpR2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__1_i_1
       (.I0(UnsignR[12]),
        .O(TmpR2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__1_i_2
       (.I0(UnsignR[11]),
        .O(TmpR2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__1_i_3
       (.I0(UnsignR[10]),
        .O(TmpR2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__1_i_4
       (.I0(UnsignR[9]),
        .O(TmpR2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry__2
       (.CI(TmpR2_carry__1_n_0),
        .CO({TmpR2_carry__2_n_0,TmpR2_carry__2_n_1,TmpR2_carry__2_n_2,TmpR2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(UnsignR[16:13]),
        .O(TmpR2[16:13]),
        .S({TmpR2_carry__2_i_1_n_0,TmpR2_carry__2_i_2_n_0,TmpR2_carry__2_i_3_n_0,TmpR2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__2_i_1
       (.I0(UnsignR[16]),
        .O(TmpR2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__2_i_2
       (.I0(UnsignR[15]),
        .O(TmpR2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__2_i_3
       (.I0(UnsignR[14]),
        .O(TmpR2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__2_i_4
       (.I0(UnsignR[13]),
        .O(TmpR2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry__3
       (.CI(TmpR2_carry__2_n_0),
        .CO({TmpR2_carry__3_n_0,TmpR2_carry__3_n_1,TmpR2_carry__3_n_2,TmpR2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(UnsignR[20:17]),
        .O(TmpR2[20:17]),
        .S({TmpR2_carry__3_i_1_n_0,TmpR2_carry__3_i_2_n_0,TmpR2_carry__3_i_3_n_0,TmpR2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__3_i_1
       (.I0(UnsignR[20]),
        .O(TmpR2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__3_i_2
       (.I0(UnsignR[19]),
        .O(TmpR2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__3_i_3
       (.I0(UnsignR[18]),
        .O(TmpR2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__3_i_4
       (.I0(UnsignR[17]),
        .O(TmpR2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry__4
       (.CI(TmpR2_carry__3_n_0),
        .CO({TmpR2_carry__4_n_0,TmpR2_carry__4_n_1,TmpR2_carry__4_n_2,TmpR2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(UnsignR[24:21]),
        .O(TmpR2[24:21]),
        .S({TmpR2_carry__4_i_1_n_0,TmpR2_carry__4_i_2_n_0,TmpR2_carry__4_i_3_n_0,TmpR2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__4_i_1
       (.I0(UnsignR[24]),
        .O(TmpR2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__4_i_2
       (.I0(UnsignR[23]),
        .O(TmpR2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__4_i_3
       (.I0(UnsignR[22]),
        .O(TmpR2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__4_i_4
       (.I0(UnsignR[21]),
        .O(TmpR2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry__5
       (.CI(TmpR2_carry__4_n_0),
        .CO({TmpR2_carry__5_n_0,TmpR2_carry__5_n_1,TmpR2_carry__5_n_2,TmpR2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(UnsignR[28:25]),
        .O(TmpR2[28:25]),
        .S({TmpR2_carry__5_i_1_n_0,TmpR2_carry__5_i_2_n_0,TmpR2_carry__5_i_3_n_0,TmpR2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__5_i_1
       (.I0(UnsignR[28]),
        .O(TmpR2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__5_i_2
       (.I0(UnsignR[27]),
        .O(TmpR2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__5_i_3
       (.I0(UnsignR[26]),
        .O(TmpR2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__5_i_4
       (.I0(UnsignR[25]),
        .O(TmpR2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 TmpR2_carry__6
       (.CI(TmpR2_carry__5_n_0),
        .CO({NLW_TmpR2_carry__6_CO_UNCONNECTED[3:2],TmpR2_carry__6_n_2,TmpR2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,UnsignR[30:29]}),
        .O({NLW_TmpR2_carry__6_O_UNCONNECTED[3],TmpR2[31:29]}),
        .S({1'b0,TmpR2_carry__6_i_1_n_0,TmpR2_carry__6_i_2_n_0,TmpR2_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__6_i_1
       (.I0(UnsignR[31]),
        .O(TmpR2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__6_i_2
       (.I0(UnsignR[30]),
        .O(TmpR2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry__6_i_3
       (.I0(UnsignR[29]),
        .O(TmpR2_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry_i_1
       (.I0(UnsignR[4]),
        .O(TmpR2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry_i_2
       (.I0(UnsignR[3]),
        .O(TmpR2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry_i_3
       (.I0(UnsignR[2]),
        .O(TmpR2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    TmpR2_carry_i_4
       (.I0(UnsignR[1]),
        .O(TmpR2_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\TmpS2_inferred__0/i__carry_n_0 ,\TmpS2_inferred__0/i__carry_n_1 ,\TmpS2_inferred__0/i__carry_n_2 ,\TmpS2_inferred__0/i__carry_n_3 }),
        .CYINIT(p_2_in[1]),
        .DI(p_2_in[5:2]),
        .O({\TmpS2_inferred__0/i__carry_n_4 ,\TmpS2_inferred__0/i__carry_n_5 ,\TmpS2_inferred__0/i__carry_n_6 ,\TmpS2_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry__0 
       (.CI(\TmpS2_inferred__0/i__carry_n_0 ),
        .CO({\TmpS2_inferred__0/i__carry__0_n_0 ,\TmpS2_inferred__0/i__carry__0_n_1 ,\TmpS2_inferred__0/i__carry__0_n_2 ,\TmpS2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[9:6]),
        .O({\TmpS2_inferred__0/i__carry__0_n_4 ,\TmpS2_inferred__0/i__carry__0_n_5 ,\TmpS2_inferred__0/i__carry__0_n_6 ,\TmpS2_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry__1 
       (.CI(\TmpS2_inferred__0/i__carry__0_n_0 ),
        .CO({\TmpS2_inferred__0/i__carry__1_n_0 ,\TmpS2_inferred__0/i__carry__1_n_1 ,\TmpS2_inferred__0/i__carry__1_n_2 ,\TmpS2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[13:10]),
        .O({\TmpS2_inferred__0/i__carry__1_n_4 ,\TmpS2_inferred__0/i__carry__1_n_5 ,\TmpS2_inferred__0/i__carry__1_n_6 ,\TmpS2_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry__2 
       (.CI(\TmpS2_inferred__0/i__carry__1_n_0 ),
        .CO({\TmpS2_inferred__0/i__carry__2_n_0 ,\TmpS2_inferred__0/i__carry__2_n_1 ,\TmpS2_inferred__0/i__carry__2_n_2 ,\TmpS2_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[17:14]),
        .O({\TmpS2_inferred__0/i__carry__2_n_4 ,\TmpS2_inferred__0/i__carry__2_n_5 ,\TmpS2_inferred__0/i__carry__2_n_6 ,\TmpS2_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry__3 
       (.CI(\TmpS2_inferred__0/i__carry__2_n_0 ),
        .CO({\TmpS2_inferred__0/i__carry__3_n_0 ,\TmpS2_inferred__0/i__carry__3_n_1 ,\TmpS2_inferred__0/i__carry__3_n_2 ,\TmpS2_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[21:18]),
        .O({\TmpS2_inferred__0/i__carry__3_n_4 ,\TmpS2_inferred__0/i__carry__3_n_5 ,\TmpS2_inferred__0/i__carry__3_n_6 ,\TmpS2_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry__4 
       (.CI(\TmpS2_inferred__0/i__carry__3_n_0 ),
        .CO({\TmpS2_inferred__0/i__carry__4_n_0 ,\TmpS2_inferred__0/i__carry__4_n_1 ,\TmpS2_inferred__0/i__carry__4_n_2 ,\TmpS2_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[25:22]),
        .O({\TmpS2_inferred__0/i__carry__4_n_4 ,\TmpS2_inferred__0/i__carry__4_n_5 ,\TmpS2_inferred__0/i__carry__4_n_6 ,\TmpS2_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry__5 
       (.CI(\TmpS2_inferred__0/i__carry__4_n_0 ),
        .CO({\TmpS2_inferred__0/i__carry__5_n_0 ,\TmpS2_inferred__0/i__carry__5_n_1 ,\TmpS2_inferred__0/i__carry__5_n_2 ,\TmpS2_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[29:26]),
        .O({\TmpS2_inferred__0/i__carry__5_n_4 ,\TmpS2_inferred__0/i__carry__5_n_5 ,\TmpS2_inferred__0/i__carry__5_n_6 ,\TmpS2_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \TmpS2_inferred__0/i__carry__6 
       (.CI(\TmpS2_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_TmpS2_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\TmpS2_inferred__0/i__carry__6_n_2 ,\TmpS2_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_2_in[31:30]}),
        .O({\NLW_TmpS2_inferred__0/i__carry__6_O_UNCONNECTED [3],\TmpS2_inferred__0/i__carry__6_n_5 ,\TmpS2_inferred__0/i__carry__6_n_6 ,\TmpS2_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry
       (.CI(1'b0),
        .CO({UnsignR0_carry_n_0,UnsignR0_carry_n_1,UnsignR0_carry_n_2,UnsignR0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[4:1]),
        .O(UnsignR0_in[3:0]),
        .S({UnsignR0_carry_i_1_n_0,UnsignR0_carry_i_2_n_0,UnsignR0_carry_i_3_n_0,UnsignR0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry__0
       (.CI(UnsignR0_carry_n_0),
        .CO({UnsignR0_carry__0_n_0,UnsignR0_carry__0_n_1,UnsignR0_carry__0_n_2,UnsignR0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[8:5]),
        .O(UnsignR0_in[7:4]),
        .S({UnsignR0_carry__0_i_1_n_0,UnsignR0_carry__0_i_2_n_0,UnsignR0_carry__0_i_3_n_0,UnsignR0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__0_i_1
       (.I0(result_r[8]),
        .I1(UnsignY2[7]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[7]),
        .I5(p_0_in),
        .O(UnsignR0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__0_i_2
       (.I0(result_r[7]),
        .I1(UnsignY2[6]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[6]),
        .I5(p_0_in),
        .O(UnsignR0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__0_i_3
       (.I0(result_r[6]),
        .I1(UnsignY2[5]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[5]),
        .I5(p_0_in),
        .O(UnsignR0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__0_i_4
       (.I0(result_r[5]),
        .I1(UnsignY2[4]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[4]),
        .I5(p_0_in),
        .O(UnsignR0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry__1
       (.CI(UnsignR0_carry__0_n_0),
        .CO({UnsignR0_carry__1_n_0,UnsignR0_carry__1_n_1,UnsignR0_carry__1_n_2,UnsignR0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[12:9]),
        .O(UnsignR0_in[11:8]),
        .S({UnsignR0_carry__1_i_1_n_0,UnsignR0_carry__1_i_2_n_0,UnsignR0_carry__1_i_3_n_0,UnsignR0_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__1_i_1
       (.I0(result_r[12]),
        .I1(UnsignY2[11]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[11]),
        .I5(p_0_in),
        .O(UnsignR0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__1_i_2
       (.I0(result_r[11]),
        .I1(UnsignY2[10]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[10]),
        .I5(p_0_in),
        .O(UnsignR0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__1_i_3
       (.I0(result_r[10]),
        .I1(UnsignY2[9]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[9]),
        .I5(p_0_in),
        .O(UnsignR0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__1_i_4
       (.I0(result_r[9]),
        .I1(UnsignY2[8]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[8]),
        .I5(p_0_in),
        .O(UnsignR0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry__2
       (.CI(UnsignR0_carry__1_n_0),
        .CO({UnsignR0_carry__2_n_0,UnsignR0_carry__2_n_1,UnsignR0_carry__2_n_2,UnsignR0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[16:13]),
        .O(UnsignR0_in[15:12]),
        .S({UnsignR0_carry__2_i_1_n_0,UnsignR0_carry__2_i_2_n_0,UnsignR0_carry__2_i_3_n_0,UnsignR0_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__2_i_1
       (.I0(result_r[16]),
        .I1(UnsignY2[15]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[15]),
        .I5(p_0_in),
        .O(UnsignR0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__2_i_2
       (.I0(result_r[15]),
        .I1(UnsignY2[14]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[14]),
        .I5(p_0_in),
        .O(UnsignR0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__2_i_3
       (.I0(result_r[14]),
        .I1(UnsignY2[13]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[13]),
        .I5(p_0_in),
        .O(UnsignR0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__2_i_4
       (.I0(result_r[13]),
        .I1(UnsignY2[12]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[12]),
        .I5(p_0_in),
        .O(UnsignR0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry__3
       (.CI(UnsignR0_carry__2_n_0),
        .CO({UnsignR0_carry__3_n_0,UnsignR0_carry__3_n_1,UnsignR0_carry__3_n_2,UnsignR0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[20:17]),
        .O(UnsignR0_in[19:16]),
        .S({UnsignR0_carry__3_i_1_n_0,UnsignR0_carry__3_i_2_n_0,UnsignR0_carry__3_i_3_n_0,UnsignR0_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__3_i_1
       (.I0(result_r[20]),
        .I1(UnsignY2[19]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[19]),
        .I5(p_0_in),
        .O(UnsignR0_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__3_i_2
       (.I0(result_r[19]),
        .I1(UnsignY2[18]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[18]),
        .I5(p_0_in),
        .O(UnsignR0_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__3_i_3
       (.I0(result_r[18]),
        .I1(UnsignY2[17]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[17]),
        .I5(p_0_in),
        .O(UnsignR0_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__3_i_4
       (.I0(result_r[17]),
        .I1(UnsignY2[16]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[16]),
        .I5(p_0_in),
        .O(UnsignR0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry__4
       (.CI(UnsignR0_carry__3_n_0),
        .CO({UnsignR0_carry__4_n_0,UnsignR0_carry__4_n_1,UnsignR0_carry__4_n_2,UnsignR0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[24:21]),
        .O(UnsignR0_in[23:20]),
        .S({UnsignR0_carry__4_i_1_n_0,UnsignR0_carry__4_i_2_n_0,UnsignR0_carry__4_i_3_n_0,UnsignR0_carry__4_i_4_n_0}));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__4_i_1
       (.I0(result_r[24]),
        .I1(UnsignY2[23]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[23]),
        .I5(p_0_in),
        .O(UnsignR0_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__4_i_2
       (.I0(result_r[23]),
        .I1(UnsignY2[22]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[22]),
        .I5(p_0_in),
        .O(UnsignR0_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__4_i_3
       (.I0(result_r[22]),
        .I1(UnsignY2[21]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[21]),
        .I5(p_0_in),
        .O(UnsignR0_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__4_i_4
       (.I0(result_r[21]),
        .I1(UnsignY2[20]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[20]),
        .I5(p_0_in),
        .O(UnsignR0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry__5
       (.CI(UnsignR0_carry__4_n_0),
        .CO({UnsignR0_carry__5_n_0,UnsignR0_carry__5_n_1,UnsignR0_carry__5_n_2,UnsignR0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[28:25]),
        .O(UnsignR0_in[27:24]),
        .S({UnsignR0_carry__5_i_1_n_0,UnsignR0_carry__5_i_2_n_0,UnsignR0_carry__5_i_3_n_0,UnsignR0_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__5_i_1
       (.I0(result_r[28]),
        .I1(UnsignY2[27]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[27]),
        .I5(p_0_in),
        .O(UnsignR0_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__5_i_2
       (.I0(result_r[27]),
        .I1(UnsignY2[26]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[26]),
        .I5(p_0_in),
        .O(UnsignR0_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__5_i_3
       (.I0(result_r[26]),
        .I1(UnsignY2[25]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[25]),
        .I5(p_0_in),
        .O(UnsignR0_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__5_i_4
       (.I0(result_r[25]),
        .I1(UnsignY2[24]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[24]),
        .I5(p_0_in),
        .O(UnsignR0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 UnsignR0_carry__6
       (.CI(UnsignR0_carry__5_n_0),
        .CO({NLW_UnsignR0_carry__6_CO_UNCONNECTED[3],UnsignR0_carry__6_n_1,UnsignR0_carry__6_n_2,UnsignR0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,result_r[31:29]}),
        .O(UnsignR0_in[31:28]),
        .S({UnsignR0_carry__6_i_1_n_0,UnsignR0_carry__6_i_2_n_0,UnsignR0_carry__6_i_3_n_0,UnsignR0_carry__6_i_4_n_0}));
  LUT5 #(
    .INIT(32'h65AAAAAA)) 
    UnsignR0_carry__6_i_1
       (.I0(result_r[32]),
        .I1(UnsignY2[31]),
        .I2(real_div_signed__0),
        .I3(Q[31]),
        .I4(p_0_in),
        .O(UnsignR0_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__6_i_2
       (.I0(result_r[31]),
        .I1(UnsignY2[30]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[30]),
        .I5(p_0_in),
        .O(UnsignR0_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__6_i_3
       (.I0(result_r[30]),
        .I1(UnsignY2[29]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[29]),
        .I5(p_0_in),
        .O(UnsignR0_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry__6_i_4
       (.I0(result_r[29]),
        .I1(UnsignY2[28]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[28]),
        .I5(p_0_in),
        .O(UnsignR0_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry_i_1
       (.I0(result_r[4]),
        .I1(UnsignY2[3]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[3]),
        .I5(p_0_in),
        .O(UnsignR0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry_i_2
       (.I0(result_r[3]),
        .I1(UnsignY2[2]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[2]),
        .I5(p_0_in),
        .O(UnsignR0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h65556AAAAAAAAAAA)) 
    UnsignR0_carry_i_3
       (.I0(result_r[2]),
        .I1(UnsignY2[1]),
        .I2(Q[31]),
        .I3(real_div_signed__0),
        .I4(Q[1]),
        .I5(p_0_in),
        .O(UnsignR0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    UnsignR0_carry_i_4
       (.I0(result_r[1]),
        .I1(Q[0]),
        .I2(p_0_in),
        .O(UnsignR0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \UnsignR[31]_i_1 
       (.I0(resetn),
        .I1(div_stall__0),
        .I2(p_1_in),
        .O(\UnsignR[31]_i_1_n_0 ));
  FDRE \UnsignR_reg[0] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[0]),
        .Q(UnsignR[0]),
        .R(1'b0));
  FDRE \UnsignR_reg[10] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[10]),
        .Q(UnsignR[10]),
        .R(1'b0));
  FDRE \UnsignR_reg[11] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[11]),
        .Q(UnsignR[11]),
        .R(1'b0));
  FDRE \UnsignR_reg[12] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[12]),
        .Q(UnsignR[12]),
        .R(1'b0));
  FDRE \UnsignR_reg[13] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[13]),
        .Q(UnsignR[13]),
        .R(1'b0));
  FDRE \UnsignR_reg[14] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[14]),
        .Q(UnsignR[14]),
        .R(1'b0));
  FDRE \UnsignR_reg[15] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[15]),
        .Q(UnsignR[15]),
        .R(1'b0));
  FDRE \UnsignR_reg[16] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[16]),
        .Q(UnsignR[16]),
        .R(1'b0));
  FDRE \UnsignR_reg[17] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[17]),
        .Q(UnsignR[17]),
        .R(1'b0));
  FDRE \UnsignR_reg[18] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[18]),
        .Q(UnsignR[18]),
        .R(1'b0));
  FDRE \UnsignR_reg[19] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[19]),
        .Q(UnsignR[19]),
        .R(1'b0));
  FDRE \UnsignR_reg[1] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[1]),
        .Q(UnsignR[1]),
        .R(1'b0));
  FDRE \UnsignR_reg[20] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[20]),
        .Q(UnsignR[20]),
        .R(1'b0));
  FDRE \UnsignR_reg[21] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[21]),
        .Q(UnsignR[21]),
        .R(1'b0));
  FDRE \UnsignR_reg[22] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[22]),
        .Q(UnsignR[22]),
        .R(1'b0));
  FDRE \UnsignR_reg[23] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[23]),
        .Q(UnsignR[23]),
        .R(1'b0));
  FDRE \UnsignR_reg[24] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[24]),
        .Q(UnsignR[24]),
        .R(1'b0));
  FDRE \UnsignR_reg[25] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[25]),
        .Q(UnsignR[25]),
        .R(1'b0));
  FDRE \UnsignR_reg[26] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[26]),
        .Q(UnsignR[26]),
        .R(1'b0));
  FDRE \UnsignR_reg[27] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[27]),
        .Q(UnsignR[27]),
        .R(1'b0));
  FDRE \UnsignR_reg[28] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[28]),
        .Q(UnsignR[28]),
        .R(1'b0));
  FDRE \UnsignR_reg[29] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[29]),
        .Q(UnsignR[29]),
        .R(1'b0));
  FDRE \UnsignR_reg[2] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[2]),
        .Q(UnsignR[2]),
        .R(1'b0));
  FDRE \UnsignR_reg[30] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[30]),
        .Q(UnsignR[30]),
        .R(1'b0));
  FDRE \UnsignR_reg[31] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[31]),
        .Q(UnsignR[31]),
        .R(1'b0));
  FDRE \UnsignR_reg[3] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[3]),
        .Q(UnsignR[3]),
        .R(1'b0));
  FDRE \UnsignR_reg[4] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[4]),
        .Q(UnsignR[4]),
        .R(1'b0));
  FDRE \UnsignR_reg[5] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[5]),
        .Q(UnsignR[5]),
        .R(1'b0));
  FDRE \UnsignR_reg[6] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[6]),
        .Q(UnsignR[6]),
        .R(1'b0));
  FDRE \UnsignR_reg[7] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[7]),
        .Q(UnsignR[7]),
        .R(1'b0));
  FDRE \UnsignR_reg[8] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[8]),
        .Q(UnsignR[8]),
        .R(1'b0));
  FDRE \UnsignR_reg[9] 
       (.C(clk),
        .CE(\UnsignR[31]_i_1_n_0 ),
        .D(UnsignR0_in[9]),
        .Q(UnsignR[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h70F8F0F0)) 
    \UnsignS[0]_i_1 
       (.I0(resetn),
        .I1(div_stall__0),
        .I2(p_2_in[1]),
        .I3(tmp_d),
        .I4(p_1_in),
        .O(\UnsignS[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \UnsignS[31]_i_1 
       (.I0(resetn),
        .I1(div_stall__0),
        .I2(p_1_in),
        .O(UnsignS1_in));
  FDRE \UnsignS_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\UnsignS[0]_i_1_n_0 ),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \UnsignS_reg[10] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[10]),
        .Q(p_2_in[11]),
        .R(1'b0));
  FDRE \UnsignS_reg[11] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[11]),
        .Q(p_2_in[12]),
        .R(1'b0));
  FDRE \UnsignS_reg[12] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[12]),
        .Q(p_2_in[13]),
        .R(1'b0));
  FDRE \UnsignS_reg[13] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[13]),
        .Q(p_2_in[14]),
        .R(1'b0));
  FDRE \UnsignS_reg[14] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[14]),
        .Q(p_2_in[15]),
        .R(1'b0));
  FDRE \UnsignS_reg[15] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[15]),
        .Q(p_2_in[16]),
        .R(1'b0));
  FDRE \UnsignS_reg[16] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[16]),
        .Q(p_2_in[17]),
        .R(1'b0));
  FDRE \UnsignS_reg[17] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[17]),
        .Q(p_2_in[18]),
        .R(1'b0));
  FDRE \UnsignS_reg[18] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[18]),
        .Q(p_2_in[19]),
        .R(1'b0));
  FDRE \UnsignS_reg[19] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[19]),
        .Q(p_2_in[20]),
        .R(1'b0));
  FDRE \UnsignS_reg[1] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[1]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \UnsignS_reg[20] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[20]),
        .Q(p_2_in[21]),
        .R(1'b0));
  FDRE \UnsignS_reg[21] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[21]),
        .Q(p_2_in[22]),
        .R(1'b0));
  FDRE \UnsignS_reg[22] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[22]),
        .Q(p_2_in[23]),
        .R(1'b0));
  FDRE \UnsignS_reg[23] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[23]),
        .Q(p_2_in[24]),
        .R(1'b0));
  FDRE \UnsignS_reg[24] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[24]),
        .Q(p_2_in[25]),
        .R(1'b0));
  FDRE \UnsignS_reg[25] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[25]),
        .Q(p_2_in[26]),
        .R(1'b0));
  FDRE \UnsignS_reg[26] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[26]),
        .Q(p_2_in[27]),
        .R(1'b0));
  FDRE \UnsignS_reg[27] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[27]),
        .Q(p_2_in[28]),
        .R(1'b0));
  FDRE \UnsignS_reg[28] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[28]),
        .Q(p_2_in[29]),
        .R(1'b0));
  FDRE \UnsignS_reg[29] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[29]),
        .Q(p_2_in[30]),
        .R(1'b0));
  FDRE \UnsignS_reg[2] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[2]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \UnsignS_reg[30] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[30]),
        .Q(p_2_in[31]),
        .R(1'b0));
  FDRE \UnsignS_reg[31] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[31]),
        .Q(p_2_in[32]),
        .R(1'b0));
  FDRE \UnsignS_reg[3] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[3]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \UnsignS_reg[4] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[4]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \UnsignS_reg[5] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[5]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \UnsignS_reg[6] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[6]),
        .Q(p_2_in[7]),
        .R(1'b0));
  FDRE \UnsignS_reg[7] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[7]),
        .Q(p_2_in[8]),
        .R(1'b0));
  FDRE \UnsignS_reg[8] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[8]),
        .Q(p_2_in[9]),
        .R(1'b0));
  FDRE \UnsignS_reg[9] 
       (.C(clk),
        .CE(UnsignS1_in),
        .D(p_2_in[9]),
        .Q(p_2_in[10]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(p_1_in),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(p_1_in),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA900)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(p_1_in),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA90000)) 
    \count[3]_i_1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(p_1_in),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDD7)) 
    \count[4]_i_1 
       (.I0(p_1_in),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDD7)) 
    \count[5]_i_1 
       (.I0(p_1_in),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count[5]_i_2_n_0 ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[5]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \count[6]_i_1 
       (.I0(p_1_in),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count[6]_i_2_n_0 ),
        .O(\count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[6]_i_2 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \count[7]_inv_i_1 
       (.I0(p_1_in),
        .I1(\count[6]_i_2_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .O(\count[7]_inv_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[4]_i_1_n_0 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDSE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[5]_i_1_n_0 ),
        .Q(\count_reg_n_0_[5] ),
        .S(\tmp_r[32]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[6]_i_1_n_0 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\tmp_r[32]_i_1_n_0 ));
  (* inverted = "yes" *) 
  FDSE \count_reg[7]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(\count[7]_inv_i_1_n_0 ),
        .Q(p_1_in),
        .S(\tmp_r[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEA222A00000000)) 
    div_signed_buffer_i_1
       (.I0(div_signed_buffer),
        .I1(exe_valid),
        .I2(Q[68]),
        .I3(Q[69]),
        .I4(Q[65]),
        .I5(resetn),
        .O(div_signed_buffer_i_1_n_0));
  FDRE div_signed_buffer_reg
       (.C(clk),
        .CE(1'b1),
        .D(div_signed_buffer_i_1_n_0),
        .Q(div_signed_buffer),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8AFF)) 
    exe_allowin_INST_0
       (.I0(mem_allowin),
        .I1(exe_allowin_0),
        .I2(div_stall__0),
        .I3(exe_valid),
        .O(exe_allowin));
  LUT4 #(
    .INIT(16'h00A8)) 
    exe_allowin_INST_0_i_1
       (.I0(exe_valid),
        .I1(Q[68]),
        .I2(Q[69]),
        .I3(div_complete),
        .O(div_stall__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    exe_allowin_INST_0_i_2
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(exe_allowin_INST_0_i_3_n_0),
        .O(div_complete));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    exe_allowin_INST_0_i_3
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(p_1_in),
        .O(exe_allowin_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hAA2A2222)) 
    \exe_data[220]_i_1 
       (.I0(id_to_exe_valid),
        .I1(exe_valid),
        .I2(div_stall__0),
        .I3(exe_allowin_0),
        .I4(mem_allowin),
        .O(exe_data0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \exe_to_id_bus[0]_INST_0 
       (.I0(Q[66]),
        .I1(Q[67]),
        .I2(Q[70]),
        .I3(\exe_to_id_bus[0]_INST_0_i_1_n_0 ),
        .I4(exe_to_id_bus_0_sn_1),
        .O(exe_to_mem_bus[0]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \exe_to_id_bus[0]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(UnsignR[0]),
        .I2(\exe_to_id_bus[0]_0 ),
        .I3(Q[68]),
        .I4(p_2_in[1]),
        .O(\exe_to_id_bus[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[10]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[10]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[10] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[10]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[10]_0 ),
        .O(exe_to_mem_bus[10]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[10]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[10]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[10]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[10]_INST_0_i_3 
       (.I0(p_2_in[11]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__1_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[11]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[11]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[11] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[11]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[11]_0 ),
        .O(exe_to_mem_bus[11]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[11]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[11]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[11]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[11]_INST_0_i_3 
       (.I0(p_2_in[12]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__1_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[12]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[12]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[12] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[12]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[12]_0 ),
        .O(exe_to_mem_bus[12]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[12]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[12]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[12]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[12]_INST_0_i_3 
       (.I0(p_2_in[13]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__1_n_4 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[13]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[13]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[13] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[13]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[13]_0 ),
        .O(exe_to_mem_bus[13]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[13]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[13]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[13]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[13]_INST_0_i_3 
       (.I0(p_2_in[14]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__2_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[14]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[14]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[14] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[14]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[14]_0 ),
        .O(exe_to_mem_bus[14]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[14]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[14]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[14]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[14]_INST_0_i_3 
       (.I0(p_2_in[15]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__2_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[15]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[15]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[15] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[15]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[15]_0 ),
        .O(exe_to_mem_bus[15]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[15]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[15]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[15]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[15]_INST_0_i_3 
       (.I0(p_2_in[16]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__2_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[16]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[16]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[16] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[16]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[16]_0 ),
        .O(exe_to_mem_bus[16]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[16]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[16]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[16]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[16]_INST_0_i_3 
       (.I0(p_2_in[17]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__2_n_4 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[17]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[17]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[17] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[17]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[17]_0 ),
        .O(exe_to_mem_bus[17]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[17]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[17]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[17]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[17]_INST_0_i_3 
       (.I0(p_2_in[18]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__3_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[18]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[18]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[18] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[18]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[18]_0 ),
        .O(exe_to_mem_bus[18]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[18]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[18]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[18]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[18]_INST_0_i_3 
       (.I0(p_2_in[19]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__3_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[19]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[19]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[19] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[19]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[19]_0 ),
        .O(exe_to_mem_bus[19]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[19]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[19]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[19]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[19]_INST_0_i_3 
       (.I0(p_2_in[20]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__3_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \exe_to_id_bus[1]_INST_0 
       (.I0(Q[66]),
        .I1(Q[67]),
        .I2(Q[70]),
        .I3(\exe_to_id_bus[1]_INST_0_i_1_n_0 ),
        .I4(exe_to_id_bus_1_sn_1),
        .O(exe_to_mem_bus[1]));
  LUT5 #(
    .INIT(32'hFFFFAABA)) 
    \exe_to_id_bus[1]_INST_0_i_1 
       (.I0(\exe_to_id_bus[1]_INST_0_i_3_n_0 ),
        .I1(Q[69]),
        .I2(\exe_to_id_bus[1]_0 ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[1]_INST_0_i_4_n_0 ),
        .O(\exe_to_id_bus[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[1]_INST_0_i_3 
       (.I0(Q[69]),
        .I1(TmpR2[1]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[1]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[1]_INST_0_i_4 
       (.I0(p_2_in[2]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[20]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[20]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[20] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[20]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[20]_0 ),
        .O(exe_to_mem_bus[20]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[20]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[20]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[20]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[20]_INST_0_i_3 
       (.I0(p_2_in[21]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__3_n_4 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[21]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[21]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[21] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[21]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[21]_0 ),
        .O(exe_to_mem_bus[21]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[21]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[21]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[21]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[21]_INST_0_i_3 
       (.I0(p_2_in[22]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__4_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[22]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[22]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[22] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[22]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[22]_0 ),
        .O(exe_to_mem_bus[22]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[22]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[22]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[22]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[22]_INST_0_i_3 
       (.I0(p_2_in[23]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__4_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[23]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[23]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[23] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[23]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[23]_0 ),
        .O(exe_to_mem_bus[23]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[23]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[23]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[23]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[23]_INST_0_i_3 
       (.I0(p_2_in[24]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__4_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[24]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[24]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[24] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[24]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[24]_0 ),
        .O(exe_to_mem_bus[24]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[24]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[24]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[24]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[24]_INST_0_i_3 
       (.I0(p_2_in[25]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__4_n_4 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[25]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[25]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[25] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[25]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[25]_0 ),
        .O(exe_to_mem_bus[25]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[25]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[25]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[25]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[25]_INST_0_i_3 
       (.I0(p_2_in[26]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__5_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[26]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[26]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[26] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[26]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[26]_0 ),
        .O(exe_to_mem_bus[26]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[26]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[26]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[26]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[26]_INST_0_i_3 
       (.I0(p_2_in[27]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__5_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[27]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[27]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[27] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[27]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[27]_0 ),
        .O(exe_to_mem_bus[27]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[27]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[27]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[27]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[27]_INST_0_i_3 
       (.I0(p_2_in[28]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__5_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[28]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[28]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[28] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[28]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[28]_0 ),
        .O(exe_to_mem_bus[28]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[28]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[28]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[28]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[28]_INST_0_i_3 
       (.I0(p_2_in[29]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__5_n_4 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[29]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[29]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[29] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[29]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[29]_0 ),
        .O(exe_to_mem_bus[29]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[29]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[29]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[29]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[29]_INST_0_i_3 
       (.I0(p_2_in[30]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__6_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[2]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[2]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[2]_0 ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[2]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[2]_1 ),
        .O(exe_to_mem_bus[2]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[2]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[2]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[2]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[2]_INST_0_i_3 
       (.I0(p_2_in[3]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[30]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[30]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[30] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[30]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[30]_0 ),
        .O(exe_to_mem_bus[30]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[30]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[30]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[30]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[30]_INST_0_i_3 
       (.I0(p_2_in[31]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__6_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[31]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[31]_INST_0_i_2_n_0 ),
        .I2(\exe_to_id_bus[31] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[31]_INST_0_i_4_n_0 ),
        .I5(\exe_to_id_bus[31]_0 ),
        .O(exe_to_mem_bus[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \exe_to_id_bus[31]_INST_0_i_10 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\exe_to_id_bus[31]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \exe_to_id_bus[31]_INST_0_i_11 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\exe_to_id_bus[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[31]_INST_0_i_2 
       (.I0(Q[69]),
        .I1(TmpR2[31]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[31]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[31]_INST_0_i_4 
       (.I0(p_2_in[32]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__6_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[31]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \exe_to_id_bus[31]_INST_0_i_6 
       (.I0(x_31_buffer),
        .I1(Q[63]),
        .I2(real_complete__7),
        .O(real_x_31__2));
  LUT3 #(
    .INIT(8'hB8)) 
    \exe_to_id_bus[31]_INST_0_i_7 
       (.I0(div_signed_buffer),
        .I1(real_complete__7),
        .I2(Q[65]),
        .O(real_div_signed__0));
  LUT5 #(
    .INIT(32'hCAC53A35)) 
    \exe_to_id_bus[31]_INST_0_i_8 
       (.I0(Q[31]),
        .I1(y_31_buffer),
        .I2(real_complete__7),
        .I3(Q[63]),
        .I4(x_31_buffer),
        .O(TmpS2__0));
  LUT6 #(
    .INIT(64'h0B00000000000000)) 
    \exe_to_id_bus[31]_INST_0_i_9 
       (.I0(\exe_to_id_bus[31]_INST_0_i_10_n_0 ),
        .I1(\exe_to_id_bus[31]_INST_0_i_11_n_0 ),
        .I2(p_1_in),
        .I3(\count_reg_n_0_[6] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(real_complete__7));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \exe_to_id_bus[37]_INST_0 
       (.I0(exe_allowin_0),
        .I1(div_stall__0),
        .I2(exe_valid),
        .I3(\exe_to_id_bus[37] ),
        .O(exe_to_id_bus[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exe_to_id_bus[38]_INST_0 
       (.I0(Q[64]),
        .I1(div_stall__0),
        .O(exe_to_id_bus[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[3]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[3]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[3] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[3]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[3]_0 ),
        .O(exe_to_mem_bus[3]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[3]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[3]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[3]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[3]_INST_0_i_3 
       (.I0(p_2_in[4]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[4]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[4]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[4] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[4]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[4]_0 ),
        .O(exe_to_mem_bus[4]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[4]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[4]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[4]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[4]_INST_0_i_3 
       (.I0(p_2_in[5]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry_n_4 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[5]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[5]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[5] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[5]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[5]_0 ),
        .O(exe_to_mem_bus[5]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[5]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[5]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[5]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[5]_INST_0_i_3 
       (.I0(p_2_in[6]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__0_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[6]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[6]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[6] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[6]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[6]_0 ),
        .O(exe_to_mem_bus[6]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[6]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[6]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[6]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[6]_INST_0_i_3 
       (.I0(p_2_in[7]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__0_n_6 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[7]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[7]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[7] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[7]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[7]_0 ),
        .O(exe_to_mem_bus[7]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[7]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[7]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[7]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[7]_INST_0_i_3 
       (.I0(p_2_in[8]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__0_n_5 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[8]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[8]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[8] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[8]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[8]_0 ),
        .O(exe_to_mem_bus[8]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[8]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[8]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[8]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[8]_INST_0_i_3 
       (.I0(p_2_in[9]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__0_n_4 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \exe_to_id_bus[9]_INST_0 
       (.I0(\exe_to_id_bus[2] ),
        .I1(\exe_to_id_bus[9]_INST_0_i_1_n_0 ),
        .I2(\exe_to_id_bus[9] ),
        .I3(Q[68]),
        .I4(\exe_to_id_bus[9]_INST_0_i_3_n_0 ),
        .I5(\exe_to_id_bus[9]_0 ),
        .O(exe_to_mem_bus[9]));
  LUT6 #(
    .INIT(64'h000000002AAA2000)) 
    \exe_to_id_bus[9]_INST_0_i_1 
       (.I0(Q[69]),
        .I1(TmpR2[9]),
        .I2(real_x_31__2),
        .I3(real_div_signed__0),
        .I4(UnsignR[9]),
        .I5(Q[68]),
        .O(\exe_to_id_bus[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2E0000)) 
    \exe_to_id_bus[9]_INST_0_i_3 
       (.I0(p_2_in[10]),
        .I1(real_div_signed__0),
        .I2(\TmpS2_inferred__0/i__carry__1_n_7 ),
        .I3(TmpS2__0),
        .I4(Q[68]),
        .O(\exe_to_id_bus[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    exe_to_mem_valid_INST_0
       (.I0(exe_valid),
        .I1(div_stall__0),
        .I2(exe_allowin_0),
        .O(exe_to_mem_valid));
  LUT6 #(
    .INIT(64'h00000000FFFF08AA)) 
    exe_valid_i_1
       (.I0(exe_valid),
        .I1(div_stall__0),
        .I2(exe_allowin_0),
        .I3(mem_allowin),
        .I4(id_to_exe_valid),
        .I5(exe_valid0__0),
        .O(exe_valid_reg));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(p_2_in[9]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(p_2_in[8]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(p_2_in[7]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(p_2_in[6]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(p_2_in[13]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(p_2_in[12]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(p_2_in[11]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(p_2_in[10]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(p_2_in[17]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(p_2_in[16]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(p_2_in[15]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(p_2_in[14]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(p_2_in[21]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(p_2_in[20]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(p_2_in[19]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(p_2_in[18]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(p_2_in[25]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(p_2_in[24]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(p_2_in[23]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(p_2_in[22]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(p_2_in[29]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(p_2_in[28]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(p_2_in[27]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(p_2_in[26]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(p_2_in[32]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(p_2_in[31]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(p_2_in[30]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(p_2_in[5]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(p_2_in[4]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(p_2_in[3]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(p_2_in[2]),
        .O(i__carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry
       (.CI(1'b0),
        .CO({tmp_r0_carry_n_0,tmp_r0_carry_n_1,tmp_r0_carry_n_2,tmp_r0_carry_n_3}),
        .CYINIT(tmp_r0_carry_i_1_n_0),
        .DI({result_r[3:1],p_1_in__0}),
        .O(tmp_d__0[3:0]),
        .S({tmp_r0_carry_i_3_n_0,tmp_r0_carry_i_4_n_0,tmp_r0_carry_i_5_n_0,tmp_r0_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__0
       (.CI(tmp_r0_carry_n_0),
        .CO({tmp_r0_carry__0_n_0,tmp_r0_carry__0_n_1,tmp_r0_carry__0_n_2,tmp_r0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[7:4]),
        .O(tmp_d__0[7:4]),
        .S({tmp_r0_carry__0_i_1_n_0,tmp_r0_carry__0_i_2_n_0,tmp_r0_carry__0_i_3_n_0,tmp_r0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__0_i_1
       (.I0(UnsignY2[7]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[7]),
        .I4(p_0_in),
        .I5(result_r[7]),
        .O(tmp_r0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__0_i_2
       (.I0(UnsignY2[6]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[6]),
        .I4(p_0_in),
        .I5(result_r[6]),
        .O(tmp_r0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__0_i_3
       (.I0(UnsignY2[5]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[5]),
        .I4(p_0_in),
        .I5(result_r[5]),
        .O(tmp_r0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__0_i_4
       (.I0(UnsignY2[4]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[4]),
        .I4(p_0_in),
        .I5(result_r[4]),
        .O(tmp_r0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry__0_i_5
       (.CI(tmp_r0_carry_i_10_n_0),
        .CO({tmp_r0_carry__0_i_5_n_0,tmp_r0_carry__0_i_5_n_1,tmp_r0_carry__0_i_5_n_2,tmp_r0_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignY2[8:5]),
        .S({tmp_r0_carry__0_i_6_n_0,tmp_r0_carry__0_i_7_n_0,tmp_r0_carry__0_i_8_n_0,tmp_r0_carry__0_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__0_i_6
       (.I0(Q[8]),
        .O(tmp_r0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__0_i_7
       (.I0(Q[7]),
        .O(tmp_r0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__0_i_8
       (.I0(Q[6]),
        .O(tmp_r0_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__0_i_9
       (.I0(Q[5]),
        .O(tmp_r0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__1
       (.CI(tmp_r0_carry__0_n_0),
        .CO({tmp_r0_carry__1_n_0,tmp_r0_carry__1_n_1,tmp_r0_carry__1_n_2,tmp_r0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[11:8]),
        .O(tmp_d__0[11:8]),
        .S({tmp_r0_carry__1_i_1_n_0,tmp_r0_carry__1_i_2_n_0,tmp_r0_carry__1_i_3_n_0,tmp_r0_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__1_i_1
       (.I0(UnsignY2[11]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[11]),
        .I4(p_0_in),
        .I5(result_r[11]),
        .O(tmp_r0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__1_i_2
       (.I0(UnsignY2[10]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[10]),
        .I4(p_0_in),
        .I5(result_r[10]),
        .O(tmp_r0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__1_i_3
       (.I0(UnsignY2[9]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[9]),
        .I4(p_0_in),
        .I5(result_r[9]),
        .O(tmp_r0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__1_i_4
       (.I0(UnsignY2[8]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[8]),
        .I4(p_0_in),
        .I5(result_r[8]),
        .O(tmp_r0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry__1_i_5
       (.CI(tmp_r0_carry__0_i_5_n_0),
        .CO({tmp_r0_carry__1_i_5_n_0,tmp_r0_carry__1_i_5_n_1,tmp_r0_carry__1_i_5_n_2,tmp_r0_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignY2[12:9]),
        .S({tmp_r0_carry__1_i_6_n_0,tmp_r0_carry__1_i_7_n_0,tmp_r0_carry__1_i_8_n_0,tmp_r0_carry__1_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__1_i_6
       (.I0(Q[12]),
        .O(tmp_r0_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__1_i_7
       (.I0(Q[11]),
        .O(tmp_r0_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__1_i_8
       (.I0(Q[10]),
        .O(tmp_r0_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__1_i_9
       (.I0(Q[9]),
        .O(tmp_r0_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__2
       (.CI(tmp_r0_carry__1_n_0),
        .CO({tmp_r0_carry__2_n_0,tmp_r0_carry__2_n_1,tmp_r0_carry__2_n_2,tmp_r0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[15:12]),
        .O(tmp_d__0[15:12]),
        .S({tmp_r0_carry__2_i_1_n_0,tmp_r0_carry__2_i_2_n_0,tmp_r0_carry__2_i_3_n_0,tmp_r0_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__2_i_1
       (.I0(UnsignY2[15]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[15]),
        .I4(p_0_in),
        .I5(result_r[15]),
        .O(tmp_r0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__2_i_2
       (.I0(UnsignY2[14]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[14]),
        .I4(p_0_in),
        .I5(result_r[14]),
        .O(tmp_r0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__2_i_3
       (.I0(UnsignY2[13]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[13]),
        .I4(p_0_in),
        .I5(result_r[13]),
        .O(tmp_r0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__2_i_4
       (.I0(UnsignY2[12]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[12]),
        .I4(p_0_in),
        .I5(result_r[12]),
        .O(tmp_r0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry__2_i_5
       (.CI(tmp_r0_carry__1_i_5_n_0),
        .CO({tmp_r0_carry__2_i_5_n_0,tmp_r0_carry__2_i_5_n_1,tmp_r0_carry__2_i_5_n_2,tmp_r0_carry__2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignY2[16:13]),
        .S({tmp_r0_carry__2_i_6_n_0,tmp_r0_carry__2_i_7_n_0,tmp_r0_carry__2_i_8_n_0,tmp_r0_carry__2_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__2_i_6
       (.I0(Q[16]),
        .O(tmp_r0_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__2_i_7
       (.I0(Q[15]),
        .O(tmp_r0_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__2_i_8
       (.I0(Q[14]),
        .O(tmp_r0_carry__2_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__2_i_9
       (.I0(Q[13]),
        .O(tmp_r0_carry__2_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__3
       (.CI(tmp_r0_carry__2_n_0),
        .CO({tmp_r0_carry__3_n_0,tmp_r0_carry__3_n_1,tmp_r0_carry__3_n_2,tmp_r0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[19:16]),
        .O(tmp_d__0[19:16]),
        .S({tmp_r0_carry__3_i_1_n_0,tmp_r0_carry__3_i_2_n_0,tmp_r0_carry__3_i_3_n_0,tmp_r0_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__3_i_1
       (.I0(UnsignY2[19]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[19]),
        .I4(p_0_in),
        .I5(result_r[19]),
        .O(tmp_r0_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__3_i_2
       (.I0(UnsignY2[18]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[18]),
        .I4(p_0_in),
        .I5(result_r[18]),
        .O(tmp_r0_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__3_i_3
       (.I0(UnsignY2[17]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[17]),
        .I4(p_0_in),
        .I5(result_r[17]),
        .O(tmp_r0_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__3_i_4
       (.I0(UnsignY2[16]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[16]),
        .I4(p_0_in),
        .I5(result_r[16]),
        .O(tmp_r0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry__3_i_5
       (.CI(tmp_r0_carry__2_i_5_n_0),
        .CO({tmp_r0_carry__3_i_5_n_0,tmp_r0_carry__3_i_5_n_1,tmp_r0_carry__3_i_5_n_2,tmp_r0_carry__3_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignY2[20:17]),
        .S({tmp_r0_carry__3_i_6_n_0,tmp_r0_carry__3_i_7_n_0,tmp_r0_carry__3_i_8_n_0,tmp_r0_carry__3_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__3_i_6
       (.I0(Q[20]),
        .O(tmp_r0_carry__3_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__3_i_7
       (.I0(Q[19]),
        .O(tmp_r0_carry__3_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__3_i_8
       (.I0(Q[18]),
        .O(tmp_r0_carry__3_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__3_i_9
       (.I0(Q[17]),
        .O(tmp_r0_carry__3_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__4
       (.CI(tmp_r0_carry__3_n_0),
        .CO({tmp_r0_carry__4_n_0,tmp_r0_carry__4_n_1,tmp_r0_carry__4_n_2,tmp_r0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[23:20]),
        .O(tmp_d__0[23:20]),
        .S({tmp_r0_carry__4_i_1_n_0,tmp_r0_carry__4_i_2_n_0,tmp_r0_carry__4_i_3_n_0,tmp_r0_carry__4_i_4_n_0}));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__4_i_1
       (.I0(UnsignY2[23]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[23]),
        .I4(p_0_in),
        .I5(result_r[23]),
        .O(tmp_r0_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__4_i_2
       (.I0(UnsignY2[22]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[22]),
        .I4(p_0_in),
        .I5(result_r[22]),
        .O(tmp_r0_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__4_i_3
       (.I0(UnsignY2[21]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[21]),
        .I4(p_0_in),
        .I5(result_r[21]),
        .O(tmp_r0_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__4_i_4
       (.I0(UnsignY2[20]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[20]),
        .I4(p_0_in),
        .I5(result_r[20]),
        .O(tmp_r0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry__4_i_5
       (.CI(tmp_r0_carry__3_i_5_n_0),
        .CO({tmp_r0_carry__4_i_5_n_0,tmp_r0_carry__4_i_5_n_1,tmp_r0_carry__4_i_5_n_2,tmp_r0_carry__4_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignY2[24:21]),
        .S({tmp_r0_carry__4_i_6_n_0,tmp_r0_carry__4_i_7_n_0,tmp_r0_carry__4_i_8_n_0,tmp_r0_carry__4_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__4_i_6
       (.I0(Q[24]),
        .O(tmp_r0_carry__4_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__4_i_7
       (.I0(Q[23]),
        .O(tmp_r0_carry__4_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__4_i_8
       (.I0(Q[22]),
        .O(tmp_r0_carry__4_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__4_i_9
       (.I0(Q[21]),
        .O(tmp_r0_carry__4_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__5
       (.CI(tmp_r0_carry__4_n_0),
        .CO({tmp_r0_carry__5_n_0,tmp_r0_carry__5_n_1,tmp_r0_carry__5_n_2,tmp_r0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[27:24]),
        .O(tmp_d__0[27:24]),
        .S({tmp_r0_carry__5_i_1_n_0,tmp_r0_carry__5_i_2_n_0,tmp_r0_carry__5_i_3_n_0,tmp_r0_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__5_i_1
       (.I0(UnsignY2[27]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[27]),
        .I4(p_0_in),
        .I5(result_r[27]),
        .O(tmp_r0_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__5_i_2
       (.I0(UnsignY2[26]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[26]),
        .I4(p_0_in),
        .I5(result_r[26]),
        .O(tmp_r0_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__5_i_3
       (.I0(UnsignY2[25]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[25]),
        .I4(p_0_in),
        .I5(result_r[25]),
        .O(tmp_r0_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__5_i_4
       (.I0(UnsignY2[24]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[24]),
        .I4(p_0_in),
        .I5(result_r[24]),
        .O(tmp_r0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry__5_i_5
       (.CI(tmp_r0_carry__4_i_5_n_0),
        .CO({tmp_r0_carry__5_i_5_n_0,tmp_r0_carry__5_i_5_n_1,tmp_r0_carry__5_i_5_n_2,tmp_r0_carry__5_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignY2[28:25]),
        .S({tmp_r0_carry__5_i_6_n_0,tmp_r0_carry__5_i_7_n_0,tmp_r0_carry__5_i_8_n_0,tmp_r0_carry__5_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__5_i_6
       (.I0(Q[28]),
        .O(tmp_r0_carry__5_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__5_i_7
       (.I0(Q[27]),
        .O(tmp_r0_carry__5_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__5_i_8
       (.I0(Q[26]),
        .O(tmp_r0_carry__5_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__5_i_9
       (.I0(Q[25]),
        .O(tmp_r0_carry__5_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__6
       (.CI(tmp_r0_carry__5_n_0),
        .CO({tmp_r0_carry__6_n_0,tmp_r0_carry__6_n_1,tmp_r0_carry__6_n_2,tmp_r0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(result_r[31:28]),
        .O(tmp_d__0[31:28]),
        .S({tmp_r0_carry__6_i_1_n_0,tmp_r0_carry__6_i_2_n_0,tmp_r0_carry__6_i_3_n_0,tmp_r0_carry__6_i_4_n_0}));
  LUT5 #(
    .INIT(32'h4FB0B04F)) 
    tmp_r0_carry__6_i_1
       (.I0(UnsignY2[31]),
        .I1(real_div_signed__0),
        .I2(Q[31]),
        .I3(p_0_in),
        .I4(result_r[31]),
        .O(tmp_r0_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__6_i_2
       (.I0(UnsignY2[30]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[30]),
        .I4(p_0_in),
        .I5(result_r[30]),
        .O(tmp_r0_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__6_i_3
       (.I0(UnsignY2[29]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[29]),
        .I4(p_0_in),
        .I5(result_r[29]),
        .O(tmp_r0_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry__6_i_4
       (.I0(UnsignY2[28]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[28]),
        .I4(p_0_in),
        .I5(result_r[28]),
        .O(tmp_r0_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry__6_i_5
       (.CI(tmp_r0_carry__5_i_5_n_0),
        .CO({NLW_tmp_r0_carry__6_i_5_CO_UNCONNECTED[3:2],tmp_r0_carry__6_i_5_n_2,tmp_r0_carry__6_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_r0_carry__6_i_5_O_UNCONNECTED[3],UnsignY2[31:29]}),
        .S({1'b0,tmp_r0_carry__6_i_6_n_0,tmp_r0_carry__6_i_7_n_0,tmp_r0_carry__6_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__6_i_6
       (.I0(Q[31]),
        .O(tmp_r0_carry__6_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__6_i_7
       (.I0(Q[30]),
        .O(tmp_r0_carry__6_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry__6_i_8
       (.I0(Q[29]),
        .O(tmp_r0_carry__6_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tmp_r0_carry__7
       (.CI(tmp_r0_carry__6_n_0),
        .CO(NLW_tmp_r0_carry__7_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_r0_carry__7_O_UNCONNECTED[3:1],tmp_d}),
        .S({1'b0,1'b0,1'b0,tmp_r0_carry__7_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tmp_r0_carry__7_i_1
       (.I0(p_0_in),
        .I1(result_r[32]),
        .O(tmp_r0_carry__7_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    tmp_r0_carry_i_1
       (.I0(tmp_r0_carry_i_7_n_0),
        .I1(\count_reg_n_0_[4] ),
        .I2(tmp_r0_carry_i_8_n_0),
        .I3(\count_reg_n_0_[3] ),
        .I4(tmp_r0_carry_i_9_n_0),
        .I5(\count_reg_n_0_[5] ),
        .O(tmp_r0_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_10
       (.CI(1'b0),
        .CO({tmp_r0_carry_i_10_n_0,tmp_r0_carry_i_10_n_1,tmp_r0_carry_i_10_n_2,tmp_r0_carry_i_10_n_3}),
        .CYINIT(tmp_r0_carry_i_21_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignY2[4:1]),
        .S({tmp_r0_carry_i_22_n_0,tmp_r0_carry_i_23_n_0,tmp_r0_carry_i_24_n_0,tmp_r0_carry_i_25_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tmp_r0_carry_i_11
       (.I0(tmp_r0_carry_i_26_n_0),
        .I1(tmp_r0_carry_i_27_n_0),
        .I2(\count_reg_n_0_[2] ),
        .I3(tmp_r0_carry_i_28_n_0),
        .I4(\count_reg_n_0_[1] ),
        .I5(tmp_r0_carry_i_29_n_0),
        .O(tmp_r0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tmp_r0_carry_i_12
       (.I0(tmp_r0_carry_i_30_n_0),
        .I1(tmp_r0_carry_i_31_n_0),
        .I2(\count_reg_n_0_[2] ),
        .I3(tmp_r0_carry_i_32_n_0),
        .I4(\count_reg_n_0_[1] ),
        .I5(tmp_r0_carry_i_33_n_0),
        .O(tmp_r0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_13
       (.I0(UnsignX2[23]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[55]),
        .I4(\count_reg_n_0_[0] ),
        .I5(tmp_r0_carry_i_35_n_0),
        .O(tmp_r0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_14
       (.I0(UnsignX2[21]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[53]),
        .I4(\count_reg_n_0_[0] ),
        .I5(tmp_r0_carry_i_36_n_0),
        .O(tmp_r0_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_15
       (.I0(UnsignX2[19]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[51]),
        .I4(\count_reg_n_0_[0] ),
        .I5(tmp_r0_carry_i_38_n_0),
        .O(tmp_r0_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_16
       (.I0(UnsignX2[17]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[49]),
        .I4(\count_reg_n_0_[0] ),
        .I5(tmp_r0_carry_i_39_n_0),
        .O(tmp_r0_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hB833FF33B800CC00)) 
    tmp_r0_carry_i_17
       (.I0(UnsignX2[31]),
        .I1(\count_reg_n_0_[0] ),
        .I2(UnsignX2[30]),
        .I3(Q[63]),
        .I4(real_div_signed__0),
        .I5(Q[62]),
        .O(tmp_r0_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_18
       (.I0(UnsignX2[29]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[61]),
        .I4(\count_reg_n_0_[0] ),
        .I5(tmp_r0_carry_i_41_n_0),
        .O(tmp_r0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_19
       (.I0(UnsignX2[27]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[59]),
        .I4(\count_reg_n_0_[0] ),
        .I5(tmp_r0_carry_i_43_n_0),
        .O(tmp_r0_carry_i_19_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_2
       (.I0(p_0_in),
        .O(p_1_in__0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_20
       (.I0(UnsignX2[25]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[57]),
        .I4(\count_reg_n_0_[0] ),
        .I5(tmp_r0_carry_i_44_n_0),
        .O(tmp_r0_carry_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_21
       (.I0(Q[0]),
        .O(tmp_r0_carry_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_22
       (.I0(Q[4]),
        .O(tmp_r0_carry_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_23
       (.I0(Q[3]),
        .O(tmp_r0_carry_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_24
       (.I0(Q[2]),
        .O(tmp_r0_carry_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_25
       (.I0(Q[1]),
        .O(tmp_r0_carry_i_25_n_0));
  MUXF7 tmp_r0_carry_i_26
       (.I0(tmp_r0_carry_i_45_n_0),
        .I1(tmp_r0_carry_i_46_n_0),
        .O(tmp_r0_carry_i_26_n_0),
        .S(\count_reg_n_0_[0] ));
  MUXF7 tmp_r0_carry_i_27
       (.I0(tmp_r0_carry_i_47_n_0),
        .I1(tmp_r0_carry_i_48_n_0),
        .O(tmp_r0_carry_i_27_n_0),
        .S(\count_reg_n_0_[0] ));
  MUXF7 tmp_r0_carry_i_28
       (.I0(tmp_r0_carry_i_49_n_0),
        .I1(tmp_r0_carry_i_50_n_0),
        .O(tmp_r0_carry_i_28_n_0),
        .S(\count_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    tmp_r0_carry_i_29
       (.I0(UnsignX2[1]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[33]),
        .I4(\count_reg_n_0_[0] ),
        .I5(Q[32]),
        .O(tmp_r0_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry_i_3
       (.I0(UnsignY2[3]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[3]),
        .I4(p_0_in),
        .I5(result_r[3]),
        .O(tmp_r0_carry_i_3_n_0));
  MUXF7 tmp_r0_carry_i_30
       (.I0(tmp_r0_carry_i_52_n_0),
        .I1(tmp_r0_carry_i_53_n_0),
        .O(tmp_r0_carry_i_30_n_0),
        .S(\count_reg_n_0_[0] ));
  MUXF7 tmp_r0_carry_i_31
       (.I0(tmp_r0_carry_i_54_n_0),
        .I1(tmp_r0_carry_i_55_n_0),
        .O(tmp_r0_carry_i_31_n_0),
        .S(\count_reg_n_0_[0] ));
  MUXF7 tmp_r0_carry_i_32
       (.I0(tmp_r0_carry_i_56_n_0),
        .I1(tmp_r0_carry_i_57_n_0),
        .O(tmp_r0_carry_i_32_n_0),
        .S(\count_reg_n_0_[0] ));
  MUXF7 tmp_r0_carry_i_33
       (.I0(tmp_r0_carry_i_58_n_0),
        .I1(tmp_r0_carry_i_59_n_0),
        .O(tmp_r0_carry_i_33_n_0),
        .S(\count_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_34
       (.CI(tmp_r0_carry_i_37_n_0),
        .CO({tmp_r0_carry_i_34_n_0,tmp_r0_carry_i_34_n_1,tmp_r0_carry_i_34_n_2,tmp_r0_carry_i_34_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignX2[24:21]),
        .S({tmp_r0_carry_i_60_n_0,tmp_r0_carry_i_61_n_0,tmp_r0_carry_i_62_n_0,tmp_r0_carry_i_63_n_0}));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_35
       (.I0(UnsignX2[22]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[54]),
        .O(tmp_r0_carry_i_35_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_36
       (.I0(UnsignX2[20]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[52]),
        .O(tmp_r0_carry_i_36_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_37
       (.CI(tmp_r0_carry_i_64_n_0),
        .CO({tmp_r0_carry_i_37_n_0,tmp_r0_carry_i_37_n_1,tmp_r0_carry_i_37_n_2,tmp_r0_carry_i_37_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignX2[20:17]),
        .S({tmp_r0_carry_i_65_n_0,tmp_r0_carry_i_66_n_0,tmp_r0_carry_i_67_n_0,tmp_r0_carry_i_68_n_0}));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_38
       (.I0(UnsignX2[18]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[50]),
        .O(tmp_r0_carry_i_38_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_39
       (.I0(UnsignX2[16]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[48]),
        .O(tmp_r0_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry_i_4
       (.I0(UnsignY2[2]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[2]),
        .I4(p_0_in),
        .I5(result_r[2]),
        .O(tmp_r0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_40
       (.CI(tmp_r0_carry_i_42_n_0),
        .CO({NLW_tmp_r0_carry_i_40_CO_UNCONNECTED[3:2],tmp_r0_carry_i_40_n_2,tmp_r0_carry_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_r0_carry_i_40_O_UNCONNECTED[3],UnsignX2[31:29]}),
        .S({1'b0,tmp_r0_carry_i_69_n_0,tmp_r0_carry_i_70_n_0,tmp_r0_carry_i_71_n_0}));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_41
       (.I0(UnsignX2[28]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[60]),
        .O(tmp_r0_carry_i_41_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_42
       (.CI(tmp_r0_carry_i_34_n_0),
        .CO({tmp_r0_carry_i_42_n_0,tmp_r0_carry_i_42_n_1,tmp_r0_carry_i_42_n_2,tmp_r0_carry_i_42_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignX2[28:25]),
        .S({tmp_r0_carry_i_72_n_0,tmp_r0_carry_i_73_n_0,tmp_r0_carry_i_74_n_0,tmp_r0_carry_i_75_n_0}));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_43
       (.I0(UnsignX2[26]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[58]),
        .O(tmp_r0_carry_i_43_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_44
       (.I0(UnsignX2[24]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[56]),
        .O(tmp_r0_carry_i_44_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_45
       (.I0(UnsignX2[6]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[38]),
        .O(tmp_r0_carry_i_45_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_46
       (.I0(UnsignX2[7]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[39]),
        .O(tmp_r0_carry_i_46_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_47
       (.I0(UnsignX2[4]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[36]),
        .O(tmp_r0_carry_i_47_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_48
       (.I0(UnsignX2[5]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[37]),
        .O(tmp_r0_carry_i_48_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_49
       (.I0(UnsignX2[2]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[34]),
        .O(tmp_r0_carry_i_49_n_0));
  LUT6 #(
    .INIT(64'h407FBF80BF80407F)) 
    tmp_r0_carry_i_5
       (.I0(UnsignY2[1]),
        .I1(Q[31]),
        .I2(real_div_signed__0),
        .I3(Q[1]),
        .I4(p_0_in),
        .I5(result_r[1]),
        .O(tmp_r0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_50
       (.I0(UnsignX2[3]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[35]),
        .O(tmp_r0_carry_i_50_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_51
       (.CI(1'b0),
        .CO({tmp_r0_carry_i_51_n_0,tmp_r0_carry_i_51_n_1,tmp_r0_carry_i_51_n_2,tmp_r0_carry_i_51_n_3}),
        .CYINIT(tmp_r0_carry_i_77_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignX2[4:1]),
        .S({tmp_r0_carry_i_78_n_0,tmp_r0_carry_i_79_n_0,tmp_r0_carry_i_80_n_0,tmp_r0_carry_i_81_n_0}));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_52
       (.I0(UnsignX2[14]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[46]),
        .O(tmp_r0_carry_i_52_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_53
       (.I0(UnsignX2[15]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[47]),
        .O(tmp_r0_carry_i_53_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_54
       (.I0(UnsignX2[12]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[44]),
        .O(tmp_r0_carry_i_54_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_55
       (.I0(UnsignX2[13]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[45]),
        .O(tmp_r0_carry_i_55_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_56
       (.I0(UnsignX2[10]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[42]),
        .O(tmp_r0_carry_i_56_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_57
       (.I0(UnsignX2[11]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[43]),
        .O(tmp_r0_carry_i_57_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_58
       (.I0(UnsignX2[8]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[40]),
        .O(tmp_r0_carry_i_58_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    tmp_r0_carry_i_59
       (.I0(UnsignX2[9]),
        .I1(Q[63]),
        .I2(real_div_signed__0),
        .I3(Q[41]),
        .O(tmp_r0_carry_i_59_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    tmp_r0_carry_i_6
       (.I0(Q[0]),
        .O(tmp_r0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_60
       (.I0(Q[56]),
        .O(tmp_r0_carry_i_60_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_61
       (.I0(Q[55]),
        .O(tmp_r0_carry_i_61_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_62
       (.I0(Q[54]),
        .O(tmp_r0_carry_i_62_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_63
       (.I0(Q[53]),
        .O(tmp_r0_carry_i_63_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_64
       (.CI(tmp_r0_carry_i_82_n_0),
        .CO({tmp_r0_carry_i_64_n_0,tmp_r0_carry_i_64_n_1,tmp_r0_carry_i_64_n_2,tmp_r0_carry_i_64_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignX2[16:13]),
        .S({tmp_r0_carry_i_83_n_0,tmp_r0_carry_i_84_n_0,tmp_r0_carry_i_85_n_0,tmp_r0_carry_i_86_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_65
       (.I0(Q[52]),
        .O(tmp_r0_carry_i_65_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_66
       (.I0(Q[51]),
        .O(tmp_r0_carry_i_66_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_67
       (.I0(Q[50]),
        .O(tmp_r0_carry_i_67_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_68
       (.I0(Q[49]),
        .O(tmp_r0_carry_i_68_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_69
       (.I0(Q[63]),
        .O(tmp_r0_carry_i_69_n_0));
  MUXF7 tmp_r0_carry_i_7
       (.I0(tmp_r0_carry_i_11_n_0),
        .I1(tmp_r0_carry_i_12_n_0),
        .O(tmp_r0_carry_i_7_n_0),
        .S(\count_reg_n_0_[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_70
       (.I0(Q[62]),
        .O(tmp_r0_carry_i_70_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_71
       (.I0(Q[61]),
        .O(tmp_r0_carry_i_71_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_72
       (.I0(Q[60]),
        .O(tmp_r0_carry_i_72_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_73
       (.I0(Q[59]),
        .O(tmp_r0_carry_i_73_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_74
       (.I0(Q[58]),
        .O(tmp_r0_carry_i_74_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_75
       (.I0(Q[57]),
        .O(tmp_r0_carry_i_75_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_76
       (.CI(tmp_r0_carry_i_51_n_0),
        .CO({tmp_r0_carry_i_76_n_0,tmp_r0_carry_i_76_n_1,tmp_r0_carry_i_76_n_2,tmp_r0_carry_i_76_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignX2[8:5]),
        .S({tmp_r0_carry_i_87_n_0,tmp_r0_carry_i_88_n_0,tmp_r0_carry_i_89_n_0,tmp_r0_carry_i_90_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_77
       (.I0(Q[32]),
        .O(tmp_r0_carry_i_77_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_78
       (.I0(Q[36]),
        .O(tmp_r0_carry_i_78_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_79
       (.I0(Q[35]),
        .O(tmp_r0_carry_i_79_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tmp_r0_carry_i_8
       (.I0(tmp_r0_carry_i_13_n_0),
        .I1(tmp_r0_carry_i_14_n_0),
        .I2(\count_reg_n_0_[2] ),
        .I3(tmp_r0_carry_i_15_n_0),
        .I4(\count_reg_n_0_[1] ),
        .I5(tmp_r0_carry_i_16_n_0),
        .O(tmp_r0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_80
       (.I0(Q[34]),
        .O(tmp_r0_carry_i_80_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_81
       (.I0(Q[33]),
        .O(tmp_r0_carry_i_81_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp_r0_carry_i_82
       (.CI(tmp_r0_carry_i_76_n_0),
        .CO({tmp_r0_carry_i_82_n_0,tmp_r0_carry_i_82_n_1,tmp_r0_carry_i_82_n_2,tmp_r0_carry_i_82_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(UnsignX2[12:9]),
        .S({tmp_r0_carry_i_91_n_0,tmp_r0_carry_i_92_n_0,tmp_r0_carry_i_93_n_0,tmp_r0_carry_i_94_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_83
       (.I0(Q[48]),
        .O(tmp_r0_carry_i_83_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_84
       (.I0(Q[47]),
        .O(tmp_r0_carry_i_84_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_85
       (.I0(Q[46]),
        .O(tmp_r0_carry_i_85_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_86
       (.I0(Q[45]),
        .O(tmp_r0_carry_i_86_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_87
       (.I0(Q[40]),
        .O(tmp_r0_carry_i_87_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_88
       (.I0(Q[39]),
        .O(tmp_r0_carry_i_88_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_89
       (.I0(Q[38]),
        .O(tmp_r0_carry_i_89_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tmp_r0_carry_i_9
       (.I0(tmp_r0_carry_i_17_n_0),
        .I1(tmp_r0_carry_i_18_n_0),
        .I2(\count_reg_n_0_[2] ),
        .I3(tmp_r0_carry_i_19_n_0),
        .I4(\count_reg_n_0_[1] ),
        .I5(tmp_r0_carry_i_20_n_0),
        .O(tmp_r0_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_90
       (.I0(Q[37]),
        .O(tmp_r0_carry_i_90_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_91
       (.I0(Q[44]),
        .O(tmp_r0_carry_i_91_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_92
       (.I0(Q[43]),
        .O(tmp_r0_carry_i_92_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_93
       (.I0(Q[42]),
        .O(tmp_r0_carry_i_93_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_r0_carry_i_94
       (.I0(Q[41]),
        .O(tmp_r0_carry_i_94_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_r[32]_i_1 
       (.I0(resetn),
        .I1(div_stall__0),
        .O(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[0] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[0]),
        .Q(result_r[1]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[10] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[10]),
        .Q(result_r[11]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[11] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[11]),
        .Q(result_r[12]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[12] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[12]),
        .Q(result_r[13]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[13] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[13]),
        .Q(result_r[14]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[14] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[14]),
        .Q(result_r[15]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[15] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[15]),
        .Q(result_r[16]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[16] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[16]),
        .Q(result_r[17]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[17] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[17]),
        .Q(result_r[18]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[18] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[18]),
        .Q(result_r[19]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[19] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[19]),
        .Q(result_r[20]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[1] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[1]),
        .Q(result_r[2]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[20] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[20]),
        .Q(result_r[21]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[21] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[21]),
        .Q(result_r[22]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[22] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[22]),
        .Q(result_r[23]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[23] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[23]),
        .Q(result_r[24]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[24] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[24]),
        .Q(result_r[25]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[25] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[25]),
        .Q(result_r[26]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[26] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[26]),
        .Q(result_r[27]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[27] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[27]),
        .Q(result_r[28]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[28] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[28]),
        .Q(result_r[29]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[29] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[29]),
        .Q(result_r[30]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[2] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[2]),
        .Q(result_r[3]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[30] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[30]),
        .Q(result_r[31]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[31] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[31]),
        .Q(result_r[32]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[32] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d),
        .Q(p_0_in),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[3] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[3]),
        .Q(result_r[4]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[4] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[4]),
        .Q(result_r[5]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[5] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[5]),
        .Q(result_r[6]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[6] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[6]),
        .Q(result_r[7]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[7] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[7]),
        .Q(result_r[8]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[8] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[8]),
        .Q(result_r[9]),
        .R(\tmp_r[32]_i_1_n_0 ));
  FDRE \tmp_r_reg[9] 
       (.C(clk),
        .CE(p_1_in),
        .D(tmp_d__0[9]),
        .Q(result_r[10]),
        .R(\tmp_r[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEA222A00000000)) 
    x_31_buffer_i_1
       (.I0(x_31_buffer),
        .I1(exe_valid),
        .I2(Q[68]),
        .I3(Q[69]),
        .I4(Q[63]),
        .I5(resetn),
        .O(x_31_buffer_i_1_n_0));
  FDRE x_31_buffer_reg
       (.C(clk),
        .CE(1'b1),
        .D(x_31_buffer_i_1_n_0),
        .Q(x_31_buffer),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEA222A00000000)) 
    y_31_buffer_i_1
       (.I0(y_31_buffer),
        .I1(exe_valid),
        .I2(Q[68]),
        .I3(Q[69]),
        .I4(Q[31]),
        .I5(resetn),
        .O(y_31_buffer_i_1_n_0));
  FDRE y_31_buffer_reg
       (.C(clk),
        .CE(1'b1),
        .D(y_31_buffer_i_1_n_0),
        .Q(y_31_buffer),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "exe_stage" *) 
module mycpu_top_block_exe_stage_0_0_exe_stage
   (Q,
    data_sram_we,
    \exe_data_reg[139]_0 ,
    \exe_data_reg[139]_1 ,
    \exe_data_reg[160]_0 ,
    exe_to_mem_bus,
    exe_to_id_bus,
    exe_to_mem_valid,
    exe_allowin,
    data_sram_en,
    data_sram_wdata,
    resetn,
    clk,
    id_to_exe_bus,
    mem_allowin,
    id_to_exe_valid,
    refetch_flush,
    ertn_flush,
    excp_flush,
    flush_from_mem);
  output [79:0]Q;
  output [3:0]data_sram_we;
  output \exe_data_reg[139]_0 ;
  output \exe_data_reg[139]_1 ;
  output \exe_data_reg[160]_0 ;
  output [94:0]exe_to_mem_bus;
  output [1:0]exe_to_id_bus;
  output exe_to_mem_valid;
  output exe_allowin;
  output data_sram_en;
  output [23:0]data_sram_wdata;
  input resetn;
  input clk;
  input [218:0]id_to_exe_bus;
  input mem_allowin;
  input id_to_exe_valid;
  input refetch_flush;
  input ertn_flush;
  input excp_flush;
  input flush_from_mem;

  wire [79:0]Q;
  wire access_mem__0;
  wire [0:0]adder_b;
  wire adder_cin;
  wire [31:0]alu_result0;
  wire [2:2]alu_result1;
  wire alu_result1__0;
  wire alu_result9__0;
  wire clk;
  wire [31:0]data2;
  wire \data_sram_addr[0]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[0]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[0]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[0]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[0]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[0]_INST_0_i_7_n_3 ;
  wire \data_sram_addr[0]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[0]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[10]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[10]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[10]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[10]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[10]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[10]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[10]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_15_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_16_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_17_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_18_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[11]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[11]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[11]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[12]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[12]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[12]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[12]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[12]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[12]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[12]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[13]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[13]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[13]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[13]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[13]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[13]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[13]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[14]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[14]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[14]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[14]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[14]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[14]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[14]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_15_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_16_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_17_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_18_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_19_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[15]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[15]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[15]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[16]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[17]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[18]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_15_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_16_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_17_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_18_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_19_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[19]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[19]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[19]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_11_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[1]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[20]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[21]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[22]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_15_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_16_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_17_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_18_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_19_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_20_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[23]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[23]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[23]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[24]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[25]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[26]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_15_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_16_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_17_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_18_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[27]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[27]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[27]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[28]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[28]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[28]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[28]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[28]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[28]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[28]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[29]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[2]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[30]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[30]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[30]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[30]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[30]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[30]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_17_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_21_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_22_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_23_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_24_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_25_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_26_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_28_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_29_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[31]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[31]_INST_0_i_30_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_31_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[31]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_16_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_18_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[3]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[3]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[3]_INST_0_i_9_n_0 ;
  wire \data_sram_addr[4]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[4]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[4]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[4]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[4]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[5]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[5]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[5]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[5]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[5]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[6]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[6]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[6]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[6]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[6]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_10_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_15_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_16_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_17_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_1 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_2 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_3 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_4 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_5 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_6 ;
  wire \data_sram_addr[7]_INST_0_i_2_n_7 ;
  wire \data_sram_addr[7]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[7]_INST_0_i_5_n_0 ;
  wire \data_sram_addr[8]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[8]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[8]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[8]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[8]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[8]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[9]_INST_0_i_1_n_0 ;
  wire \data_sram_addr[9]_INST_0_i_3_n_0 ;
  wire \data_sram_addr[9]_INST_0_i_4_n_0 ;
  wire \data_sram_addr[9]_INST_0_i_6_n_0 ;
  wire \data_sram_addr[9]_INST_0_i_7_n_0 ;
  wire \data_sram_addr[9]_INST_0_i_8_n_0 ;
  wire \data_sram_addr[9]_INST_0_i_9_n_0 ;
  wire data_sram_en;
  wire [23:0]data_sram_wdata;
  wire [3:0]data_sram_we;
  wire ertn_flush;
  wire excp_flush;
  wire exe_allowin;
  wire [11:0]exe_alu_op;
  wire [31:0]exe_alu_src1;
  wire [0:0]exe_alu_src2;
  wire [31:1]exe_alu_src2__63;
  wire [31:0]exe_csr_data;
  wire exe_data0;
  wire \exe_data_reg[139]_0 ;
  wire \exe_data_reg[139]_1 ;
  wire \exe_data_reg[160]_0 ;
  wire \exe_data_reg_n_0_[100] ;
  wire \exe_data_reg_n_0_[101] ;
  wire \exe_data_reg_n_0_[102] ;
  wire \exe_data_reg_n_0_[103] ;
  wire \exe_data_reg_n_0_[104] ;
  wire \exe_data_reg_n_0_[105] ;
  wire \exe_data_reg_n_0_[106] ;
  wire \exe_data_reg_n_0_[107] ;
  wire \exe_data_reg_n_0_[108] ;
  wire \exe_data_reg_n_0_[109] ;
  wire \exe_data_reg_n_0_[110] ;
  wire \exe_data_reg_n_0_[111] ;
  wire \exe_data_reg_n_0_[112] ;
  wire \exe_data_reg_n_0_[113] ;
  wire \exe_data_reg_n_0_[114] ;
  wire \exe_data_reg_n_0_[115] ;
  wire \exe_data_reg_n_0_[116] ;
  wire \exe_data_reg_n_0_[117] ;
  wire \exe_data_reg_n_0_[118] ;
  wire \exe_data_reg_n_0_[119] ;
  wire \exe_data_reg_n_0_[120] ;
  wire \exe_data_reg_n_0_[121] ;
  wire \exe_data_reg_n_0_[122] ;
  wire \exe_data_reg_n_0_[123] ;
  wire \exe_data_reg_n_0_[124] ;
  wire \exe_data_reg_n_0_[125] ;
  wire \exe_data_reg_n_0_[126] ;
  wire \exe_data_reg_n_0_[127] ;
  wire \exe_data_reg_n_0_[135] ;
  wire \exe_data_reg_n_0_[136] ;
  wire \exe_data_reg_n_0_[137] ;
  wire \exe_data_reg_n_0_[210] ;
  wire \exe_data_reg_n_0_[96] ;
  wire \exe_data_reg_n_0_[97] ;
  wire \exe_data_reg_n_0_[98] ;
  wire \exe_data_reg_n_0_[99] ;
  wire exe_excp;
  wire exe_flush_sign__1;
  wire exe_mul_div_sign;
  wire [31:0]exe_rj_value;
  wire [31:8]exe_rkd_value;
  wire [1:0]exe_to_id_bus;
  wire \exe_to_id_bus[0]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[10]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[10]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[11]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[11]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[12]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[12]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[13]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[13]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[14]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[14]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[15]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[15]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[16]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[16]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[17]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[17]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[18]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[18]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[19]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[19]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[1]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[20]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[20]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[21]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[21]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[22]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[22]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[23]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[23]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[24]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[24]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[25]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[25]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[26]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[26]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[27]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[27]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[28]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[28]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[29]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[29]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[2]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[2]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[2]_INST_0_i_5_n_0 ;
  wire \exe_to_id_bus[30]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[30]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[30]_INST_0_i_6_n_0 ;
  wire \exe_to_id_bus[31]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[31]_INST_0_i_3_n_0 ;
  wire \exe_to_id_bus[31]_INST_0_i_5_n_0 ;
  wire \exe_to_id_bus[37]_INST_0_i_1_n_0 ;
  wire \exe_to_id_bus[3]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[3]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[4]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[4]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[5]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[5]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[6]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[6]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[7]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[7]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[8]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[8]_INST_0_i_4_n_0 ;
  wire \exe_to_id_bus[9]_INST_0_i_2_n_0 ;
  wire \exe_to_id_bus[9]_INST_0_i_4_n_0 ;
  wire [94:0]exe_to_mem_bus;
  wire exe_to_mem_valid;
  wire exe_valid;
  wire exe_valid0__0;
  wire flush_from_mem;
  wire [218:0]id_to_exe_bus;
  wire id_to_exe_valid;
  wire mem_allowin;
  wire [63:17]p_0_in;
  wire p_1_out__0_i_1_n_0;
  wire p_1_out__1_n_100;
  wire p_1_out__1_n_101;
  wire p_1_out__1_n_102;
  wire p_1_out__1_n_103;
  wire p_1_out__1_n_104;
  wire p_1_out__1_n_105;
  wire p_1_out__1_n_106;
  wire p_1_out__1_n_107;
  wire p_1_out__1_n_108;
  wire p_1_out__1_n_109;
  wire p_1_out__1_n_110;
  wire p_1_out__1_n_111;
  wire p_1_out__1_n_112;
  wire p_1_out__1_n_113;
  wire p_1_out__1_n_114;
  wire p_1_out__1_n_115;
  wire p_1_out__1_n_116;
  wire p_1_out__1_n_117;
  wire p_1_out__1_n_118;
  wire p_1_out__1_n_119;
  wire p_1_out__1_n_120;
  wire p_1_out__1_n_121;
  wire p_1_out__1_n_122;
  wire p_1_out__1_n_123;
  wire p_1_out__1_n_124;
  wire p_1_out__1_n_125;
  wire p_1_out__1_n_126;
  wire p_1_out__1_n_127;
  wire p_1_out__1_n_128;
  wire p_1_out__1_n_129;
  wire p_1_out__1_n_130;
  wire p_1_out__1_n_131;
  wire p_1_out__1_n_132;
  wire p_1_out__1_n_133;
  wire p_1_out__1_n_134;
  wire p_1_out__1_n_135;
  wire p_1_out__1_n_136;
  wire p_1_out__1_n_137;
  wire p_1_out__1_n_138;
  wire p_1_out__1_n_139;
  wire p_1_out__1_n_140;
  wire p_1_out__1_n_141;
  wire p_1_out__1_n_142;
  wire p_1_out__1_n_143;
  wire p_1_out__1_n_144;
  wire p_1_out__1_n_145;
  wire p_1_out__1_n_146;
  wire p_1_out__1_n_147;
  wire p_1_out__1_n_148;
  wire p_1_out__1_n_149;
  wire p_1_out__1_n_150;
  wire p_1_out__1_n_151;
  wire p_1_out__1_n_152;
  wire p_1_out__1_n_153;
  wire p_1_out__1_n_58;
  wire p_1_out__1_n_59;
  wire p_1_out__1_n_60;
  wire p_1_out__1_n_61;
  wire p_1_out__1_n_62;
  wire p_1_out__1_n_63;
  wire p_1_out__1_n_64;
  wire p_1_out__1_n_65;
  wire p_1_out__1_n_66;
  wire p_1_out__1_n_67;
  wire p_1_out__1_n_68;
  wire p_1_out__1_n_69;
  wire p_1_out__1_n_70;
  wire p_1_out__1_n_71;
  wire p_1_out__1_n_72;
  wire p_1_out__1_n_73;
  wire p_1_out__1_n_74;
  wire p_1_out__1_n_75;
  wire p_1_out__1_n_76;
  wire p_1_out__1_n_77;
  wire p_1_out__1_n_78;
  wire p_1_out__1_n_79;
  wire p_1_out__1_n_80;
  wire p_1_out__1_n_81;
  wire p_1_out__1_n_82;
  wire p_1_out__1_n_83;
  wire p_1_out__1_n_84;
  wire p_1_out__1_n_85;
  wire p_1_out__1_n_86;
  wire p_1_out__1_n_87;
  wire p_1_out__1_n_88;
  wire p_1_out__1_n_89;
  wire p_1_out__1_n_90;
  wire p_1_out__1_n_91;
  wire p_1_out__1_n_92;
  wire p_1_out__1_n_93;
  wire p_1_out__1_n_94;
  wire p_1_out__1_n_95;
  wire p_1_out__1_n_96;
  wire p_1_out__1_n_97;
  wire p_1_out__1_n_98;
  wire p_1_out__1_n_99;
  wire p_1_out__2_n_100;
  wire p_1_out__2_n_101;
  wire p_1_out__2_n_102;
  wire p_1_out__2_n_103;
  wire p_1_out__2_n_104;
  wire p_1_out__2_n_105;
  wire p_1_out__2_n_59;
  wire p_1_out__2_n_60;
  wire p_1_out__2_n_61;
  wire p_1_out__2_n_62;
  wire p_1_out__2_n_63;
  wire p_1_out__2_n_64;
  wire p_1_out__2_n_65;
  wire p_1_out__2_n_66;
  wire p_1_out__2_n_67;
  wire p_1_out__2_n_68;
  wire p_1_out__2_n_69;
  wire p_1_out__2_n_70;
  wire p_1_out__2_n_71;
  wire p_1_out__2_n_72;
  wire p_1_out__2_n_73;
  wire p_1_out__2_n_74;
  wire p_1_out__2_n_75;
  wire p_1_out__2_n_76;
  wire p_1_out__2_n_77;
  wire p_1_out__2_n_78;
  wire p_1_out__2_n_79;
  wire p_1_out__2_n_80;
  wire p_1_out__2_n_81;
  wire p_1_out__2_n_82;
  wire p_1_out__2_n_83;
  wire p_1_out__2_n_84;
  wire p_1_out__2_n_85;
  wire p_1_out__2_n_86;
  wire p_1_out__2_n_87;
  wire p_1_out__2_n_88;
  wire p_1_out__2_n_89;
  wire p_1_out__2_n_90;
  wire p_1_out__2_n_91;
  wire p_1_out__2_n_92;
  wire p_1_out__2_n_93;
  wire p_1_out__2_n_94;
  wire p_1_out__2_n_95;
  wire p_1_out__2_n_96;
  wire p_1_out__2_n_97;
  wire p_1_out__2_n_98;
  wire p_1_out__2_n_99;
  wire p_1_out_i_1_n_0;
  wire p_1_out_n_106;
  wire p_1_out_n_107;
  wire p_1_out_n_108;
  wire p_1_out_n_109;
  wire p_1_out_n_110;
  wire p_1_out_n_111;
  wire p_1_out_n_112;
  wire p_1_out_n_113;
  wire p_1_out_n_114;
  wire p_1_out_n_115;
  wire p_1_out_n_116;
  wire p_1_out_n_117;
  wire p_1_out_n_118;
  wire p_1_out_n_119;
  wire p_1_out_n_120;
  wire p_1_out_n_121;
  wire p_1_out_n_122;
  wire p_1_out_n_123;
  wire p_1_out_n_124;
  wire p_1_out_n_125;
  wire p_1_out_n_126;
  wire p_1_out_n_127;
  wire p_1_out_n_128;
  wire p_1_out_n_129;
  wire p_1_out_n_130;
  wire p_1_out_n_131;
  wire p_1_out_n_132;
  wire p_1_out_n_133;
  wire p_1_out_n_134;
  wire p_1_out_n_135;
  wire p_1_out_n_136;
  wire p_1_out_n_137;
  wire p_1_out_n_138;
  wire p_1_out_n_139;
  wire p_1_out_n_140;
  wire p_1_out_n_141;
  wire p_1_out_n_142;
  wire p_1_out_n_143;
  wire p_1_out_n_144;
  wire p_1_out_n_145;
  wire p_1_out_n_146;
  wire p_1_out_n_147;
  wire p_1_out_n_148;
  wire p_1_out_n_149;
  wire p_1_out_n_150;
  wire p_1_out_n_151;
  wire p_1_out_n_152;
  wire p_1_out_n_153;
  wire p_1_out_n_58;
  wire p_1_out_n_59;
  wire p_1_out_n_60;
  wire p_1_out_n_61;
  wire p_1_out_n_62;
  wire p_1_out_n_63;
  wire p_1_out_n_64;
  wire p_1_out_n_65;
  wire p_1_out_n_66;
  wire p_1_out_n_67;
  wire p_1_out_n_68;
  wire p_1_out_n_69;
  wire p_1_out_n_70;
  wire p_1_out_n_71;
  wire p_1_out_n_72;
  wire p_1_out_n_73;
  wire p_1_out_n_74;
  wire p_1_out_n_75;
  wire p_1_out_n_76;
  wire p_1_out_n_77;
  wire p_1_out_n_78;
  wire p_1_out_n_79;
  wire p_1_out_n_80;
  wire p_1_out_n_81;
  wire p_1_out_n_82;
  wire p_1_out_n_83;
  wire p_1_out_n_84;
  wire p_1_out_n_85;
  wire p_1_out_n_86;
  wire p_1_out_n_87;
  wire p_1_out_n_88;
  wire p_2_out_carry__0_i_1_n_0;
  wire p_2_out_carry__0_i_2_n_0;
  wire p_2_out_carry__0_i_3_n_0;
  wire p_2_out_carry__0_i_4_n_0;
  wire p_2_out_carry__0_n_0;
  wire p_2_out_carry__0_n_1;
  wire p_2_out_carry__0_n_2;
  wire p_2_out_carry__0_n_3;
  wire p_2_out_carry__0_n_4;
  wire p_2_out_carry__0_n_5;
  wire p_2_out_carry__0_n_6;
  wire p_2_out_carry__0_n_7;
  wire p_2_out_carry__10_i_1_n_0;
  wire p_2_out_carry__10_i_2_n_0;
  wire p_2_out_carry__10_i_3_n_0;
  wire p_2_out_carry__10_i_4_n_0;
  wire p_2_out_carry__10_n_1;
  wire p_2_out_carry__10_n_2;
  wire p_2_out_carry__10_n_3;
  wire p_2_out_carry__1_i_1_n_0;
  wire p_2_out_carry__1_i_2_n_0;
  wire p_2_out_carry__1_i_3_n_0;
  wire p_2_out_carry__1_i_4_n_0;
  wire p_2_out_carry__1_n_0;
  wire p_2_out_carry__1_n_1;
  wire p_2_out_carry__1_n_2;
  wire p_2_out_carry__1_n_3;
  wire p_2_out_carry__1_n_4;
  wire p_2_out_carry__1_n_5;
  wire p_2_out_carry__1_n_6;
  wire p_2_out_carry__1_n_7;
  wire p_2_out_carry__2_i_1_n_0;
  wire p_2_out_carry__2_i_2_n_0;
  wire p_2_out_carry__2_i_3_n_0;
  wire p_2_out_carry__2_i_4_n_0;
  wire p_2_out_carry__2_n_0;
  wire p_2_out_carry__2_n_1;
  wire p_2_out_carry__2_n_2;
  wire p_2_out_carry__2_n_3;
  wire p_2_out_carry__2_n_4;
  wire p_2_out_carry__2_n_5;
  wire p_2_out_carry__2_n_6;
  wire p_2_out_carry__2_n_7;
  wire p_2_out_carry__3_i_1_n_0;
  wire p_2_out_carry__3_i_2_n_0;
  wire p_2_out_carry__3_i_3_n_0;
  wire p_2_out_carry__3_i_4_n_0;
  wire p_2_out_carry__3_n_0;
  wire p_2_out_carry__3_n_1;
  wire p_2_out_carry__3_n_2;
  wire p_2_out_carry__3_n_3;
  wire p_2_out_carry__4_i_1_n_0;
  wire p_2_out_carry__4_i_2_n_0;
  wire p_2_out_carry__4_i_3_n_0;
  wire p_2_out_carry__4_i_4_n_0;
  wire p_2_out_carry__4_n_0;
  wire p_2_out_carry__4_n_1;
  wire p_2_out_carry__4_n_2;
  wire p_2_out_carry__4_n_3;
  wire p_2_out_carry__5_i_1_n_0;
  wire p_2_out_carry__5_i_2_n_0;
  wire p_2_out_carry__5_i_3_n_0;
  wire p_2_out_carry__5_i_4_n_0;
  wire p_2_out_carry__5_n_0;
  wire p_2_out_carry__5_n_1;
  wire p_2_out_carry__5_n_2;
  wire p_2_out_carry__5_n_3;
  wire p_2_out_carry__6_i_1_n_0;
  wire p_2_out_carry__6_i_2_n_0;
  wire p_2_out_carry__6_i_3_n_0;
  wire p_2_out_carry__6_i_4_n_0;
  wire p_2_out_carry__6_n_0;
  wire p_2_out_carry__6_n_1;
  wire p_2_out_carry__6_n_2;
  wire p_2_out_carry__6_n_3;
  wire p_2_out_carry__7_i_1_n_0;
  wire p_2_out_carry__7_i_2_n_0;
  wire p_2_out_carry__7_i_3_n_0;
  wire p_2_out_carry__7_i_4_n_0;
  wire p_2_out_carry__7_n_0;
  wire p_2_out_carry__7_n_1;
  wire p_2_out_carry__7_n_2;
  wire p_2_out_carry__7_n_3;
  wire p_2_out_carry__8_i_1_n_0;
  wire p_2_out_carry__8_i_2_n_0;
  wire p_2_out_carry__8_i_3_n_0;
  wire p_2_out_carry__8_i_4_n_0;
  wire p_2_out_carry__8_n_0;
  wire p_2_out_carry__8_n_1;
  wire p_2_out_carry__8_n_2;
  wire p_2_out_carry__8_n_3;
  wire p_2_out_carry__9_i_1_n_0;
  wire p_2_out_carry__9_i_2_n_0;
  wire p_2_out_carry__9_i_3_n_0;
  wire p_2_out_carry__9_i_4_n_0;
  wire p_2_out_carry__9_n_0;
  wire p_2_out_carry__9_n_1;
  wire p_2_out_carry__9_n_2;
  wire p_2_out_carry__9_n_3;
  wire p_2_out_carry_i_1_n_0;
  wire p_2_out_carry_i_2_n_0;
  wire p_2_out_carry_i_3_n_0;
  wire p_2_out_carry_n_0;
  wire p_2_out_carry_n_1;
  wire p_2_out_carry_n_2;
  wire p_2_out_carry_n_3;
  wire p_2_out_carry_n_4;
  wire p_2_out_carry_n_5;
  wire p_2_out_carry_n_6;
  wire p_2_out_carry_n_7;
  wire refetch_flush;
  wire resetn;
  wire [4:4]sel0;
  wire sr64_result0__0;
  wire [30:30]sr_result;
  wire u_alu_n_0;
  wire u_alu_n_1;
  wire u_alu_n_10;
  wire u_alu_n_11;
  wire u_alu_n_12;
  wire u_alu_n_13;
  wire u_alu_n_14;
  wire u_alu_n_15;
  wire u_alu_n_16;
  wire u_alu_n_17;
  wire u_alu_n_18;
  wire u_alu_n_19;
  wire u_alu_n_2;
  wire u_alu_n_20;
  wire u_alu_n_21;
  wire u_alu_n_22;
  wire u_alu_n_23;
  wire u_alu_n_24;
  wire u_alu_n_25;
  wire u_alu_n_26;
  wire u_alu_n_27;
  wire u_alu_n_28;
  wire u_alu_n_29;
  wire u_alu_n_3;
  wire u_alu_n_30;
  wire u_alu_n_31;
  wire u_alu_n_4;
  wire u_alu_n_5;
  wire u_alu_n_6;
  wire u_alu_n_7;
  wire u_alu_n_8;
  wire u_alu_n_9;
  wire u_div_n_0;
  wire [3:1]\NLW_data_sram_addr[0]_INST_0_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_sram_addr[0]_INST_0_i_7_O_UNCONNECTED ;
  wire NLW_p_1_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out_CARRYOUT_UNCONNECTED;
  wire NLW_p_1_out__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out__0_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out__0_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_p_1_out__0_P_UNCONNECTED;
  wire [47:0]NLW_p_1_out__0_PCOUT_UNCONNECTED;
  wire NLW_p_1_out__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out__1_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out__1_CARRYOUT_UNCONNECTED;
  wire NLW_p_1_out__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out__2_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out__2_CARRYOUT_UNCONNECTED;
  wire [47:47]NLW_p_1_out__2_P_UNCONNECTED;
  wire [47:0]NLW_p_1_out__2_PCOUT_UNCONNECTED;
  wire [3:3]NLW_p_2_out_carry__10_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \data_sram_addr[0]_INST_0 
       (.I0(alu_result0[0]),
        .I1(alu_result9__0),
        .I2(\data_sram_addr[3]_INST_0_i_2_n_7 ),
        .I3(\data_sram_addr[0]_INST_0_i_2_n_0 ),
        .I4(\data_sram_addr[0]_INST_0_i_3_n_0 ),
        .I5(\data_sram_addr[0]_INST_0_i_4_n_0 ),
        .O(\exe_data_reg[139]_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \data_sram_addr[0]_INST_0_i_1 
       (.I0(alu_result1__0),
        .I1(\data_sram_addr[0]_INST_0_i_5_n_0 ),
        .I2(exe_alu_src2__63[1]),
        .I3(\data_sram_addr[0]_INST_0_i_6_n_0 ),
        .I4(exe_alu_src2),
        .I5(\data_sram_addr[1]_INST_0_i_6_n_0 ),
        .O(alu_result0[0]));
  LUT6 #(
    .INIT(64'hFC0C02A2000002A2)) 
    \data_sram_addr[0]_INST_0_i_2 
       (.I0(exe_alu_op[5]),
        .I1(exe_rj_value[0]),
        .I2(\exe_data_reg_n_0_[137] ),
        .I3(Q[0]),
        .I4(exe_alu_src2),
        .I5(exe_alu_op[4]),
        .O(\data_sram_addr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF4F4F4444444444)) 
    \data_sram_addr[0]_INST_0_i_3 
       (.I0(\data_sram_addr[0]_INST_0_i_7_n_3 ),
        .I1(exe_alu_op[3]),
        .I2(exe_alu_src2__63[31]),
        .I3(exe_alu_src1[31]),
        .I4(\data_sram_addr[31]_INST_0_i_2_n_4 ),
        .I5(exe_alu_op[2]),
        .O(\data_sram_addr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888B888)) 
    \data_sram_addr[0]_INST_0_i_4 
       (.I0(exe_alu_op[11]),
        .I1(exe_alu_src2),
        .I2(exe_alu_op[8]),
        .I3(\data_sram_addr[1]_INST_0_i_4_n_0 ),
        .I4(exe_alu_src2__63[1]),
        .I5(\data_sram_addr[0]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[0]_INST_0_i_5 
       (.I0(\data_sram_addr[2]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[0]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[0]_INST_0_i_6 
       (.I0(\data_sram_addr[2]_INST_0_i_9_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[2]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[0]_INST_0_i_6_n_0 ));
  CARRY4 \data_sram_addr[0]_INST_0_i_7 
       (.CI(\data_sram_addr[31]_INST_0_i_2_n_0 ),
        .CO({\NLW_data_sram_addr[0]_INST_0_i_7_CO_UNCONNECTED [3:1],\data_sram_addr[0]_INST_0_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_sram_addr[0]_INST_0_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'hFFFFFC0C02A2A808)) 
    \data_sram_addr[0]_INST_0_i_8 
       (.I0(exe_alu_op[7]),
        .I1(exe_rj_value[0]),
        .I2(\exe_data_reg_n_0_[137] ),
        .I3(Q[0]),
        .I4(exe_alu_src2),
        .I5(exe_alu_op[6]),
        .O(\data_sram_addr[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[0]_INST_0_i_9 
       (.I0(exe_alu_src1[24]),
        .I1(exe_alu_src1[8]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[16]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[0]),
        .O(\data_sram_addr[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[10]_INST_0 
       (.I0(\data_sram_addr[10]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[11]_INST_0_i_2_n_5 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[10]),
        .I5(\data_sram_addr[10]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[73]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[10]_INST_0_i_1 
       (.I0(\data_sram_addr[10]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[11]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[10]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[10]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[10]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[11]_INST_0_i_15_n_0 ),
        .O(alu_result0[10]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[10]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[10]),
        .I4(exe_alu_src1[10]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[10]_INST_0_i_4 
       (.I0(\data_sram_addr[10]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[12]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[10]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[10]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[106] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[10]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[10]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[10]_INST_0_i_6 
       (.I0(\data_sram_addr[12]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[10]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_sram_addr[10]_INST_0_i_7 
       (.I0(exe_alu_src1[3]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[7]),
        .I4(exe_alu_src2__63[3]),
        .O(\data_sram_addr[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[10]_INST_0_i_8 
       (.I0(\data_sram_addr[14]_INST_0_i_9_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[10]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[10]_INST_0_i_9 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src1[18]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[26]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[10]),
        .O(\data_sram_addr[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[11]_INST_0 
       (.I0(\data_sram_addr[11]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[11]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[11]),
        .I5(\data_sram_addr[11]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[74]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[11]_INST_0_i_1 
       (.I0(\data_sram_addr[11]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[12]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[11]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[11]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[11]_INST_0_i_10 
       (.I0(Q[8]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[8]),
        .O(exe_alu_src1[8]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[11]_INST_0_i_15 
       (.I0(\data_sram_addr[13]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[11]_INST_0_i_17_n_0 ),
        .O(\data_sram_addr[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_sram_addr[11]_INST_0_i_16 
       (.I0(exe_alu_src1[4]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src1[0]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[8]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[11]_INST_0_i_17 
       (.I0(\data_sram_addr[15]_INST_0_i_19_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[11]_INST_0_i_18_n_0 ),
        .O(\data_sram_addr[11]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[11]_INST_0_i_18 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src1[19]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[27]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[11]),
        .O(\data_sram_addr[11]_INST_0_i_18_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[11]_INST_0_i_2 
       (.CI(\data_sram_addr[7]_INST_0_i_2_n_0 ),
        .CO({\data_sram_addr[11]_INST_0_i_2_n_0 ,\data_sram_addr[11]_INST_0_i_2_n_1 ,\data_sram_addr[11]_INST_0_i_2_n_2 ,\data_sram_addr[11]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(exe_alu_src1[11:8]),
        .O({\data_sram_addr[11]_INST_0_i_2_n_4 ,\data_sram_addr[11]_INST_0_i_2_n_5 ,\data_sram_addr[11]_INST_0_i_2_n_6 ,\data_sram_addr[11]_INST_0_i_2_n_7 }),
        .S({u_alu_n_8,u_alu_n_9,u_alu_n_10,u_alu_n_11}));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[11]_INST_0_i_3 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[11]_INST_0_i_15_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[12]_INST_0_i_6_n_0 ),
        .O(alu_result0[11]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[11]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[11]),
        .I4(exe_alu_src1[11]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[11]_INST_0_i_5 
       (.I0(\data_sram_addr[11]_INST_0_i_16_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[13]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[11]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[11]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[107] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[11]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[11]_INST_0_i_7 
       (.I0(Q[11]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[11]),
        .O(exe_alu_src1[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[11]_INST_0_i_8 
       (.I0(Q[10]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[10]),
        .O(exe_alu_src1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[11]_INST_0_i_9 
       (.I0(Q[9]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[9]),
        .O(exe_alu_src1[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[12]_INST_0 
       (.I0(\data_sram_addr[12]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[15]_INST_0_i_2_n_7 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[12]),
        .I5(\data_sram_addr[12]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[75]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[12]_INST_0_i_1 
       (.I0(\data_sram_addr[12]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[13]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[12]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[12]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[12]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[13]_INST_0_i_6_n_0 ),
        .O(alu_result0[12]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[12]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[12]),
        .I4(exe_alu_src1[12]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[12]_INST_0_i_4 
       (.I0(\data_sram_addr[12]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[14]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[12]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[12]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[108] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[12]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[12]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[12]_INST_0_i_6 
       (.I0(\data_sram_addr[14]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[12]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_sram_addr[12]_INST_0_i_7 
       (.I0(exe_alu_src1[5]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src1[1]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[9]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[12]_INST_0_i_8 
       (.I0(\data_sram_addr[16]_INST_0_i_10_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[12]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[12]_INST_0_i_9 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src1[20]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[28]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[12]),
        .O(\data_sram_addr[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[13]_INST_0 
       (.I0(\data_sram_addr[13]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[15]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[13]),
        .I5(\data_sram_addr[13]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[76]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[13]_INST_0_i_1 
       (.I0(\data_sram_addr[13]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[14]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[13]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[13]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[13]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[14]_INST_0_i_6_n_0 ),
        .O(alu_result0[13]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[13]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[13]),
        .I4(exe_alu_src1[13]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[13]_INST_0_i_4 
       (.I0(\data_sram_addr[13]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[15]_INST_0_i_16_n_0 ),
        .O(\data_sram_addr[13]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[13]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[109] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[13]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[13]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[13]_INST_0_i_6 
       (.I0(\data_sram_addr[15]_INST_0_i_17_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[13]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_sram_addr[13]_INST_0_i_7 
       (.I0(exe_alu_src1[6]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src1[2]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[10]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[13]_INST_0_i_8 
       (.I0(\data_sram_addr[17]_INST_0_i_10_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[13]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[13]_INST_0_i_9 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src1[21]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[29]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[13]),
        .O(\data_sram_addr[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[14]_INST_0 
       (.I0(\data_sram_addr[14]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[15]_INST_0_i_2_n_5 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[14]),
        .I5(\data_sram_addr[14]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[77]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[14]_INST_0_i_1 
       (.I0(\data_sram_addr[14]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[15]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[14]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[14]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[14]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[15]_INST_0_i_15_n_0 ),
        .O(alu_result0[14]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[14]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[14]),
        .I4(exe_alu_src1[14]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[14]_INST_0_i_4 
       (.I0(\data_sram_addr[14]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[16]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[14]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[14]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[110] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[14]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[14]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[14]_INST_0_i_6 
       (.I0(\data_sram_addr[16]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[14]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_sram_addr[14]_INST_0_i_7 
       (.I0(exe_alu_src1[7]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src1[3]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[11]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[14]_INST_0_i_8 
       (.I0(\data_sram_addr[18]_INST_0_i_10_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[14]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[14]_INST_0_i_9 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src1[22]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[30]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[14]),
        .O(\data_sram_addr[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[15]_INST_0 
       (.I0(\data_sram_addr[15]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[15]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[15]),
        .I5(\data_sram_addr[15]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[78]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[15]_INST_0_i_1 
       (.I0(\data_sram_addr[15]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[16]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[15]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[15]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[15]_INST_0_i_10 
       (.I0(Q[12]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[12]),
        .O(exe_alu_src1[12]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[15]_INST_0_i_15 
       (.I0(\data_sram_addr[17]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[15]_INST_0_i_17_n_0 ),
        .O(\data_sram_addr[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[15]_INST_0_i_16 
       (.I0(exe_alu_src1[0]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[8]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[15]_INST_0_i_18_n_0 ),
        .O(\data_sram_addr[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[15]_INST_0_i_17 
       (.I0(\data_sram_addr[19]_INST_0_i_19_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[15]_INST_0_i_19_n_0 ),
        .O(\data_sram_addr[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \data_sram_addr[15]_INST_0_i_18 
       (.I0(exe_rj_value[4]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(Q[4]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[12]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAF00CFCFAF00C0C0)) 
    \data_sram_addr[15]_INST_0_i_19 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_src1[23]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[31]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[15]),
        .O(\data_sram_addr[15]_INST_0_i_19_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[15]_INST_0_i_2 
       (.CI(\data_sram_addr[11]_INST_0_i_2_n_0 ),
        .CO({\data_sram_addr[15]_INST_0_i_2_n_0 ,\data_sram_addr[15]_INST_0_i_2_n_1 ,\data_sram_addr[15]_INST_0_i_2_n_2 ,\data_sram_addr[15]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(exe_alu_src1[15:12]),
        .O({\data_sram_addr[15]_INST_0_i_2_n_4 ,\data_sram_addr[15]_INST_0_i_2_n_5 ,\data_sram_addr[15]_INST_0_i_2_n_6 ,\data_sram_addr[15]_INST_0_i_2_n_7 }),
        .S({u_alu_n_12,u_alu_n_13,u_alu_n_14,u_alu_n_15}));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[15]_INST_0_i_3 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[15]_INST_0_i_15_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[16]_INST_0_i_6_n_0 ),
        .O(alu_result0[15]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[15]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[15]),
        .I4(exe_alu_src1[15]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[15]_INST_0_i_5 
       (.I0(\data_sram_addr[15]_INST_0_i_16_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[17]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[15]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[15]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[111] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[15]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[15]_INST_0_i_7 
       (.I0(Q[15]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[15]),
        .O(exe_alu_src1[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[15]_INST_0_i_8 
       (.I0(Q[14]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[14]),
        .O(exe_alu_src1[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[15]_INST_0_i_9 
       (.I0(Q[13]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[13]),
        .O(exe_alu_src1[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[16]_INST_0 
       (.I0(\data_sram_addr[16]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[19]_INST_0_i_2_n_7 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[16]),
        .I5(\data_sram_addr[16]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[79]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[16]_INST_0_i_1 
       (.I0(\data_sram_addr[16]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[17]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[16]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[16]_INST_0_i_10 
       (.I0(exe_alu_src1[24]),
        .I1(exe_alu_src2__63[3]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[16]),
        .O(\data_sram_addr[16]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[16]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[16]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[17]_INST_0_i_6_n_0 ),
        .O(alu_result0[16]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[16]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[16]),
        .I4(exe_alu_src1[16]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[16]_INST_0_i_4 
       (.I0(\data_sram_addr[16]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[18]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[16]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[16]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[112] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[16]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[16]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[16]_INST_0_i_6 
       (.I0(\data_sram_addr[18]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[16]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[16]_INST_0_i_7 
       (.I0(exe_alu_src1[1]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[9]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[16]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[16]_INST_0_i_8 
       (.I0(\data_sram_addr[20]_INST_0_i_10_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[16]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \data_sram_addr[16]_INST_0_i_9 
       (.I0(exe_rj_value[5]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(Q[5]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[13]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[17]_INST_0 
       (.I0(\data_sram_addr[17]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[19]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[17]),
        .I5(\data_sram_addr[17]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[80]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[17]_INST_0_i_1 
       (.I0(\data_sram_addr[17]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[18]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[17]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[17]_INST_0_i_10 
       (.I0(exe_alu_src1[25]),
        .I1(exe_alu_src2__63[3]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[17]),
        .O(\data_sram_addr[17]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[17]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[17]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[18]_INST_0_i_6_n_0 ),
        .O(alu_result0[17]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[17]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[17]),
        .I4(exe_alu_src1[17]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[17]_INST_0_i_4 
       (.I0(\data_sram_addr[17]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[19]_INST_0_i_16_n_0 ),
        .O(\data_sram_addr[17]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[17]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[113] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[17]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[17]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[17]_INST_0_i_6 
       (.I0(\data_sram_addr[19]_INST_0_i_17_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[17]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[17]_INST_0_i_7 
       (.I0(exe_alu_src1[2]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[10]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[17]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[17]_INST_0_i_8 
       (.I0(\data_sram_addr[21]_INST_0_i_10_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[17]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \data_sram_addr[17]_INST_0_i_9 
       (.I0(exe_rj_value[6]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(Q[6]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[14]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[18]_INST_0 
       (.I0(\data_sram_addr[18]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[19]_INST_0_i_2_n_5 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[18]),
        .I5(\data_sram_addr[18]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[81]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[18]_INST_0_i_1 
       (.I0(\data_sram_addr[18]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[19]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[18]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[18]_INST_0_i_10 
       (.I0(exe_alu_src1[26]),
        .I1(exe_alu_src2__63[3]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[18]),
        .O(\data_sram_addr[18]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[18]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[18]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[19]_INST_0_i_15_n_0 ),
        .O(alu_result0[18]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[18]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[18]),
        .I4(exe_alu_src1[18]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[18]_INST_0_i_4 
       (.I0(\data_sram_addr[18]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[20]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[18]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[18]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[114] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[18]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[18]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[18]_INST_0_i_6 
       (.I0(\data_sram_addr[20]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[18]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[18]_INST_0_i_7 
       (.I0(exe_alu_src1[3]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[11]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[18]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[18]_INST_0_i_8 
       (.I0(\data_sram_addr[22]_INST_0_i_10_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[18]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[18]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \data_sram_addr[18]_INST_0_i_9 
       (.I0(exe_rj_value[7]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(Q[7]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[15]),
        .I5(exe_alu_src2__63[4]),
        .O(\data_sram_addr[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[19]_INST_0 
       (.I0(\data_sram_addr[19]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[19]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[19]),
        .I5(\data_sram_addr[19]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[82]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[19]_INST_0_i_1 
       (.I0(\data_sram_addr[19]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[20]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[19]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[19]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[19]_INST_0_i_10 
       (.I0(Q[16]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[16]),
        .O(exe_alu_src1[16]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[19]_INST_0_i_15 
       (.I0(\data_sram_addr[21]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[19]_INST_0_i_17_n_0 ),
        .O(\data_sram_addr[19]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[19]_INST_0_i_16 
       (.I0(exe_alu_src1[4]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[12]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[19]_INST_0_i_18_n_0 ),
        .O(\data_sram_addr[19]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[19]_INST_0_i_17 
       (.I0(\data_sram_addr[23]_INST_0_i_20_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[19]_INST_0_i_19_n_0 ),
        .O(\data_sram_addr[19]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[19]_INST_0_i_18 
       (.I0(exe_alu_src1[8]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[0]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[16]),
        .O(\data_sram_addr[19]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[19]_INST_0_i_19 
       (.I0(exe_alu_src1[27]),
        .I1(exe_alu_src2__63[3]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[19]),
        .O(\data_sram_addr[19]_INST_0_i_19_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[19]_INST_0_i_2 
       (.CI(\data_sram_addr[15]_INST_0_i_2_n_0 ),
        .CO({\data_sram_addr[19]_INST_0_i_2_n_0 ,\data_sram_addr[19]_INST_0_i_2_n_1 ,\data_sram_addr[19]_INST_0_i_2_n_2 ,\data_sram_addr[19]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(exe_alu_src1[19:16]),
        .O({\data_sram_addr[19]_INST_0_i_2_n_4 ,\data_sram_addr[19]_INST_0_i_2_n_5 ,\data_sram_addr[19]_INST_0_i_2_n_6 ,\data_sram_addr[19]_INST_0_i_2_n_7 }),
        .S({u_alu_n_16,u_alu_n_17,u_alu_n_18,u_alu_n_19}));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[19]_INST_0_i_3 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[19]_INST_0_i_15_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[20]_INST_0_i_6_n_0 ),
        .O(alu_result0[19]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[19]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[19]),
        .I4(exe_alu_src1[19]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[19]_INST_0_i_5 
       (.I0(\data_sram_addr[19]_INST_0_i_16_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[21]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[19]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[19]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[115] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[19]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[19]_INST_0_i_7 
       (.I0(Q[19]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[19]),
        .O(exe_alu_src1[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[19]_INST_0_i_8 
       (.I0(Q[18]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[18]),
        .O(exe_alu_src1[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[19]_INST_0_i_9 
       (.I0(Q[17]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[17]),
        .O(exe_alu_src1[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[1]_INST_0 
       (.I0(\data_sram_addr[1]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[3]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[1]),
        .I5(\data_sram_addr[1]_INST_0_i_3_n_0 ),
        .O(\exe_data_reg[139]_1 ));
  LUT6 #(
    .INIT(64'hFFFFB8000000B800)) 
    \data_sram_addr[1]_INST_0_i_1 
       (.I0(\data_sram_addr[1]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[1]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[1]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[1]_INST_0_i_10 
       (.I0(exe_alu_src1[29]),
        .I1(exe_alu_src1[13]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[21]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[5]),
        .O(\data_sram_addr[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[1]_INST_0_i_11 
       (.I0(exe_alu_src1[25]),
        .I1(exe_alu_src1[9]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[17]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[1]),
        .O(\data_sram_addr[1]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[1]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[1]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[2]_INST_0_i_5_n_0 ),
        .O(alu_result0[1]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[1]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[1]),
        .I4(exe_alu_src1[1]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_sram_addr[1]_INST_0_i_4 
       (.I0(exe_alu_src2__63[3]),
        .I1(exe_rj_value[0]),
        .I2(\exe_data_reg_n_0_[137] ),
        .I3(Q[0]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src2__63[2]),
        .O(\data_sram_addr[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_sram_addr[1]_INST_0_i_5 
       (.I0(exe_alu_src2__63[3]),
        .I1(exe_rj_value[1]),
        .I2(\exe_data_reg_n_0_[137] ),
        .I3(Q[1]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src2__63[2]),
        .O(\data_sram_addr[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[1]_INST_0_i_6 
       (.I0(\data_sram_addr[1]_INST_0_i_8_n_0 ),
        .I1(\data_sram_addr[1]_INST_0_i_9_n_0 ),
        .I2(exe_alu_src2__63[1]),
        .I3(\data_sram_addr[1]_INST_0_i_10_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[1]_INST_0_i_11_n_0 ),
        .O(\data_sram_addr[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[1]_INST_0_i_7 
       (.I0(Q[1]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[1]),
        .O(exe_alu_src1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[1]_INST_0_i_8 
       (.I0(exe_alu_src1[31]),
        .I1(exe_alu_src1[15]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[23]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[7]),
        .O(\data_sram_addr[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[1]_INST_0_i_9 
       (.I0(exe_alu_src1[27]),
        .I1(exe_alu_src1[11]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[19]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[3]),
        .O(\data_sram_addr[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[20]_INST_0 
       (.I0(\data_sram_addr[20]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[23]_INST_0_i_2_n_7 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[20]),
        .I5(\data_sram_addr[20]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[83]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[20]_INST_0_i_1 
       (.I0(\data_sram_addr[20]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[21]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[20]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[20]_INST_0_i_10 
       (.I0(exe_alu_src1[28]),
        .I1(exe_alu_src2__63[3]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[20]),
        .O(\data_sram_addr[20]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[20]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[20]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[21]_INST_0_i_6_n_0 ),
        .O(alu_result0[20]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[20]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[20]),
        .I4(exe_alu_src1[20]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[20]_INST_0_i_4 
       (.I0(\data_sram_addr[20]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[22]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[20]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[20]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[116] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[20]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[20]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[20]_INST_0_i_6 
       (.I0(\data_sram_addr[22]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[20]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[20]_INST_0_i_7 
       (.I0(exe_alu_src1[5]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[13]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[20]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \data_sram_addr[20]_INST_0_i_8 
       (.I0(exe_alu_src2__63[3]),
        .I1(sr64_result0__0),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[24]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[20]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[20]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[20]_INST_0_i_9 
       (.I0(exe_alu_src1[9]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[1]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[17]),
        .O(\data_sram_addr[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[21]_INST_0 
       (.I0(\data_sram_addr[21]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[23]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[21]),
        .I5(\data_sram_addr[21]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[84]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[21]_INST_0_i_1 
       (.I0(\data_sram_addr[21]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[22]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[21]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[21]_INST_0_i_10 
       (.I0(exe_alu_src1[29]),
        .I1(exe_alu_src2__63[3]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[21]),
        .O(\data_sram_addr[21]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[21]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[21]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[22]_INST_0_i_6_n_0 ),
        .O(alu_result0[21]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[21]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[21]),
        .I4(exe_alu_src1[21]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[21]_INST_0_i_4 
       (.I0(\data_sram_addr[21]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[23]_INST_0_i_16_n_0 ),
        .O(\data_sram_addr[21]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[21]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[117] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[21]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[21]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[21]_INST_0_i_6 
       (.I0(\data_sram_addr[23]_INST_0_i_17_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[21]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[21]_INST_0_i_7 
       (.I0(exe_alu_src1[6]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[14]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[21]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \data_sram_addr[21]_INST_0_i_8 
       (.I0(exe_alu_src2__63[3]),
        .I1(sr64_result0__0),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[25]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[21]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[21]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[21]_INST_0_i_9 
       (.I0(exe_alu_src1[10]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[2]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[18]),
        .O(\data_sram_addr[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[22]_INST_0 
       (.I0(\data_sram_addr[22]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[23]_INST_0_i_2_n_5 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[22]),
        .I5(\data_sram_addr[22]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[85]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[22]_INST_0_i_1 
       (.I0(\data_sram_addr[22]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[23]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[22]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[22]_INST_0_i_10 
       (.I0(exe_alu_src1[30]),
        .I1(exe_alu_src2__63[3]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[22]),
        .O(\data_sram_addr[22]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[22]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[22]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[23]_INST_0_i_15_n_0 ),
        .O(alu_result0[22]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[22]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[22]),
        .I4(exe_alu_src1[22]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[22]_INST_0_i_4 
       (.I0(\data_sram_addr[22]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[24]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[22]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[22]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[118] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[22]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[22]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[22]_INST_0_i_6 
       (.I0(\data_sram_addr[24]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[22]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_sram_addr[22]_INST_0_i_7 
       (.I0(exe_alu_src1[7]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[15]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[22]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \data_sram_addr[22]_INST_0_i_8 
       (.I0(exe_alu_src2__63[3]),
        .I1(sr64_result0__0),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[26]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[22]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[22]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[22]_INST_0_i_9 
       (.I0(exe_alu_src1[11]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[3]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[19]),
        .O(\data_sram_addr[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[23]_INST_0 
       (.I0(\data_sram_addr[23]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[23]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[23]),
        .I5(\data_sram_addr[23]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[86]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[23]_INST_0_i_1 
       (.I0(\data_sram_addr[23]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[24]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[23]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[23]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[23]_INST_0_i_10 
       (.I0(Q[20]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[20]),
        .O(exe_alu_src1[20]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[23]_INST_0_i_15 
       (.I0(\data_sram_addr[25]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[23]_INST_0_i_17_n_0 ),
        .O(\data_sram_addr[23]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[23]_INST_0_i_16 
       (.I0(exe_alu_src1[8]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[23]_INST_0_i_18_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[23]_INST_0_i_19_n_0 ),
        .O(\data_sram_addr[23]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \data_sram_addr[23]_INST_0_i_17 
       (.I0(exe_alu_src2__63[3]),
        .I1(sr64_result0__0),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[27]),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[23]_INST_0_i_20_n_0 ),
        .O(\data_sram_addr[23]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[23]_INST_0_i_18 
       (.I0(Q[0]),
        .I1(exe_rj_value[0]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[16]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[16]),
        .O(\data_sram_addr[23]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[23]_INST_0_i_19 
       (.I0(exe_alu_src1[12]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[4]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[20]),
        .O(\data_sram_addr[23]_INST_0_i_19_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[23]_INST_0_i_2 
       (.CI(\data_sram_addr[19]_INST_0_i_2_n_0 ),
        .CO({\data_sram_addr[23]_INST_0_i_2_n_0 ,\data_sram_addr[23]_INST_0_i_2_n_1 ,\data_sram_addr[23]_INST_0_i_2_n_2 ,\data_sram_addr[23]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(exe_alu_src1[23:20]),
        .O({\data_sram_addr[23]_INST_0_i_2_n_4 ,\data_sram_addr[23]_INST_0_i_2_n_5 ,\data_sram_addr[23]_INST_0_i_2_n_6 ,\data_sram_addr[23]_INST_0_i_2_n_7 }),
        .S({u_alu_n_20,u_alu_n_21,u_alu_n_22,u_alu_n_23}));
  LUT5 #(
    .INIT(32'hC0F5C0A0)) 
    \data_sram_addr[23]_INST_0_i_20 
       (.I0(exe_alu_src2__63[3]),
        .I1(exe_alu_op[10]),
        .I2(exe_alu_src1[31]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[23]),
        .O(\data_sram_addr[23]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[23]_INST_0_i_3 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[23]_INST_0_i_15_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[24]_INST_0_i_6_n_0 ),
        .O(alu_result0[23]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[23]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[23]),
        .I4(exe_alu_src1[23]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[23]_INST_0_i_5 
       (.I0(\data_sram_addr[23]_INST_0_i_16_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[25]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[23]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[23]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[119] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[23]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[23]_INST_0_i_7 
       (.I0(Q[23]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[23]),
        .O(exe_alu_src1[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[23]_INST_0_i_8 
       (.I0(Q[22]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[22]),
        .O(exe_alu_src1[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[23]_INST_0_i_9 
       (.I0(Q[21]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[21]),
        .O(exe_alu_src1[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[24]_INST_0 
       (.I0(\data_sram_addr[24]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[27]_INST_0_i_2_n_7 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[24]),
        .I5(\data_sram_addr[24]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[87]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[24]_INST_0_i_1 
       (.I0(\data_sram_addr[24]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[25]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[24]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[24]_INST_0_i_10 
       (.I0(exe_alu_src1[13]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[5]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[21]),
        .O(\data_sram_addr[24]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[24]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[24]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[25]_INST_0_i_6_n_0 ),
        .O(alu_result0[24]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[24]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[24]),
        .I4(exe_alu_src1[24]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[24]_INST_0_i_4 
       (.I0(\data_sram_addr[24]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[26]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[24]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[24]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[120] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[24]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[24]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[24]_INST_0_i_6 
       (.I0(\data_sram_addr[26]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[24]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[24]_INST_0_i_7 
       (.I0(exe_alu_src1[9]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[24]_INST_0_i_9_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[24]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \data_sram_addr[24]_INST_0_i_8 
       (.I0(exe_alu_src1[28]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[3]),
        .I3(sr64_result0__0),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[24]),
        .O(\data_sram_addr[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[24]_INST_0_i_9 
       (.I0(Q[1]),
        .I1(exe_rj_value[1]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[17]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[17]),
        .O(\data_sram_addr[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[25]_INST_0 
       (.I0(\data_sram_addr[25]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[27]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[25]),
        .I5(\data_sram_addr[25]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[88]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[25]_INST_0_i_1 
       (.I0(\data_sram_addr[25]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[26]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[25]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[25]_INST_0_i_10 
       (.I0(exe_alu_src1[14]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[6]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[22]),
        .O(\data_sram_addr[25]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[25]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[25]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[26]_INST_0_i_6_n_0 ),
        .O(alu_result0[25]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[25]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[25]),
        .I4(exe_alu_src1[25]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[25]_INST_0_i_4 
       (.I0(\data_sram_addr[25]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[27]_INST_0_i_16_n_0 ),
        .O(\data_sram_addr[25]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[25]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[121] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[25]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[25]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[25]_INST_0_i_6 
       (.I0(\data_sram_addr[27]_INST_0_i_17_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[25]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[25]_INST_0_i_7 
       (.I0(exe_alu_src1[10]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[25]_INST_0_i_9_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[25]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \data_sram_addr[25]_INST_0_i_8 
       (.I0(exe_alu_src1[29]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[3]),
        .I3(sr64_result0__0),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[25]),
        .O(\data_sram_addr[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[25]_INST_0_i_9 
       (.I0(Q[2]),
        .I1(exe_rj_value[2]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[18]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[18]),
        .O(\data_sram_addr[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[26]_INST_0 
       (.I0(\data_sram_addr[26]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[27]_INST_0_i_2_n_5 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[26]),
        .I5(\data_sram_addr[26]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[89]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[26]_INST_0_i_1 
       (.I0(\data_sram_addr[26]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[27]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[26]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_sram_addr[26]_INST_0_i_10 
       (.I0(exe_alu_src1[15]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_src1[7]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[23]),
        .O(\data_sram_addr[26]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[26]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[26]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[27]_INST_0_i_15_n_0 ),
        .O(alu_result0[26]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[26]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[26]),
        .I4(exe_alu_src1[26]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[26]_INST_0_i_4 
       (.I0(\data_sram_addr[26]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[28]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[26]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[26]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[122] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[26]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_sram_addr[26]_INST_0_i_6 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src2__63[2]),
        .I2(\data_sram_addr[28]_INST_0_i_8_n_0 ),
        .I3(exe_alu_src2__63[1]),
        .I4(\data_sram_addr[26]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[26]_INST_0_i_7 
       (.I0(exe_alu_src1[11]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[26]_INST_0_i_9_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[26]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \data_sram_addr[26]_INST_0_i_8 
       (.I0(exe_alu_src1[30]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[3]),
        .I3(sr64_result0__0),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[26]),
        .O(\data_sram_addr[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[26]_INST_0_i_9 
       (.I0(Q[3]),
        .I1(exe_rj_value[3]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[19]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[19]),
        .O(\data_sram_addr[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[27]_INST_0 
       (.I0(\data_sram_addr[27]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[27]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[27]),
        .I5(\data_sram_addr[27]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[90]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[27]_INST_0_i_1 
       (.I0(\data_sram_addr[27]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[28]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[27]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[27]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[27]_INST_0_i_10 
       (.I0(Q[24]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[24]),
        .O(exe_alu_src1[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_sram_addr[27]_INST_0_i_15 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src2__63[2]),
        .I2(\data_sram_addr[29]_INST_0_i_9_n_0 ),
        .I3(exe_alu_src2__63[1]),
        .I4(\data_sram_addr[27]_INST_0_i_17_n_0 ),
        .O(\data_sram_addr[27]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[27]_INST_0_i_16 
       (.I0(exe_alu_src1[12]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[27]_INST_0_i_18_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[31]_INST_0_i_28_n_0 ),
        .O(\data_sram_addr[27]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF000F311F000E200)) 
    \data_sram_addr[27]_INST_0_i_17 
       (.I0(exe_alu_src2__63[2]),
        .I1(exe_alu_src2__63[3]),
        .I2(exe_alu_op[10]),
        .I3(exe_alu_src1[31]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[27]),
        .O(\data_sram_addr[27]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[27]_INST_0_i_18 
       (.I0(Q[4]),
        .I1(exe_rj_value[4]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[20]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[20]),
        .O(\data_sram_addr[27]_INST_0_i_18_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[27]_INST_0_i_2 
       (.CI(\data_sram_addr[23]_INST_0_i_2_n_0 ),
        .CO({\data_sram_addr[27]_INST_0_i_2_n_0 ,\data_sram_addr[27]_INST_0_i_2_n_1 ,\data_sram_addr[27]_INST_0_i_2_n_2 ,\data_sram_addr[27]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(exe_alu_src1[27:24]),
        .O({\data_sram_addr[27]_INST_0_i_2_n_4 ,\data_sram_addr[27]_INST_0_i_2_n_5 ,\data_sram_addr[27]_INST_0_i_2_n_6 ,\data_sram_addr[27]_INST_0_i_2_n_7 }),
        .S({u_alu_n_24,u_alu_n_25,u_alu_n_26,u_alu_n_27}));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[27]_INST_0_i_3 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[27]_INST_0_i_15_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[28]_INST_0_i_6_n_0 ),
        .O(alu_result0[27]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[27]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[27]),
        .I4(exe_alu_src1[27]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[27]_INST_0_i_5 
       (.I0(\data_sram_addr[27]_INST_0_i_16_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[29]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[27]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[27]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[123] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[27]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[27]_INST_0_i_7 
       (.I0(Q[27]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[27]),
        .O(exe_alu_src1[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[27]_INST_0_i_8 
       (.I0(Q[26]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[26]),
        .O(exe_alu_src1[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[27]_INST_0_i_9 
       (.I0(Q[25]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[25]),
        .O(exe_alu_src1[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[28]_INST_0 
       (.I0(\data_sram_addr[28]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[31]_INST_0_i_2_n_7 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[28]),
        .I5(\data_sram_addr[28]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[91]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[28]_INST_0_i_1 
       (.I0(\data_sram_addr[28]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[29]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[28]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[28]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[28]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[29]_INST_0_i_6_n_0 ),
        .O(alu_result0[28]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[28]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[28]),
        .I4(exe_alu_src1[28]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[28]_INST_0_i_4 
       (.I0(\data_sram_addr[28]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[30]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[28]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[28]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[124] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[28]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[28]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[28]_INST_0_i_6 
       (.I0(\data_sram_addr[30]_INST_0_i_8_n_0 ),
        .I1(exe_alu_src2__63[1]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[2]),
        .I4(\data_sram_addr[28]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[28]_INST_0_i_7 
       (.I0(exe_alu_src1[13]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[28]_INST_0_i_9_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[31]_INST_0_i_30_n_0 ),
        .O(\data_sram_addr[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \data_sram_addr[28]_INST_0_i_8 
       (.I0(exe_alu_src2__63[3]),
        .I1(sr64_result0__0),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[28]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[28]),
        .O(\data_sram_addr[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[28]_INST_0_i_9 
       (.I0(Q[5]),
        .I1(exe_rj_value[5]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[21]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[21]),
        .O(\data_sram_addr[28]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[29]_INST_0 
       (.I0(\data_sram_addr[29]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[31]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[29]),
        .I5(\data_sram_addr[29]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[92]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[29]_INST_0_i_1 
       (.I0(\data_sram_addr[29]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[30]_INST_0_i_6_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[29]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[29]_INST_0_i_10 
       (.I0(Q[6]),
        .I1(exe_rj_value[6]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[22]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[22]),
        .O(\data_sram_addr[29]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[29]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[29]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[29]_INST_0_i_7_n_0 ),
        .O(alu_result0[29]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[29]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[29]),
        .I4(exe_alu_src1[29]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[29]_INST_0_i_4 
       (.I0(\data_sram_addr[29]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[31]_INST_0_i_21_n_0 ),
        .O(\data_sram_addr[29]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[29]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[125] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[29]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[29]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_sram_addr[29]_INST_0_i_6 
       (.I0(\data_sram_addr[31]_INST_0_i_17_n_0 ),
        .I1(exe_alu_src2__63[1]),
        .I2(sr64_result0__0),
        .I3(exe_alu_src2__63[2]),
        .I4(\data_sram_addr[29]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data_sram_addr[29]_INST_0_i_7 
       (.I0(exe_alu_src2__63[1]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[3]),
        .I3(sr64_result0__0),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[30]),
        .O(\data_sram_addr[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[29]_INST_0_i_8 
       (.I0(exe_alu_src1[14]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[29]_INST_0_i_10_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[31]_INST_0_i_22_n_0 ),
        .O(\data_sram_addr[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \data_sram_addr[29]_INST_0_i_9 
       (.I0(exe_alu_src2__63[3]),
        .I1(sr64_result0__0),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[29]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[29]),
        .O(\data_sram_addr[29]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[2]_INST_0 
       (.I0(\data_sram_addr[2]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[3]_INST_0_i_2_n_5 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[2]),
        .I5(\data_sram_addr[2]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[65]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[2]_INST_0_i_1 
       (.I0(\data_sram_addr[2]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[3]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[2]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[2]_INST_0_i_10 
       (.I0(exe_alu_src1[26]),
        .I1(exe_alu_src1[10]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[18]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[2]),
        .O(\data_sram_addr[2]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[2]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[2]_INST_0_i_5_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[3]_INST_0_i_16_n_0 ),
        .O(alu_result0[2]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[2]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[2]),
        .I4(exe_alu_src1[2]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \data_sram_addr[2]_INST_0_i_4 
       (.I0(exe_alu_src2__63[2]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src1[1]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src2__63[1]),
        .O(\data_sram_addr[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[2]_INST_0_i_5 
       (.I0(\data_sram_addr[2]_INST_0_i_7_n_0 ),
        .I1(\data_sram_addr[2]_INST_0_i_8_n_0 ),
        .I2(exe_alu_src2__63[1]),
        .I3(\data_sram_addr[2]_INST_0_i_9_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[2]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[2]_INST_0_i_6 
       (.I0(Q[2]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[2]),
        .O(exe_alu_src1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[2]_INST_0_i_7 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src1[16]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[24]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[8]),
        .O(\data_sram_addr[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[2]_INST_0_i_8 
       (.I0(exe_alu_src1[28]),
        .I1(exe_alu_src1[12]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[20]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[4]),
        .O(\data_sram_addr[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[2]_INST_0_i_9 
       (.I0(exe_alu_src1[30]),
        .I1(exe_alu_src1[14]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[22]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[6]),
        .O(\data_sram_addr[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_sram_addr[30]_INST_0 
       (.I0(\data_sram_addr[30]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[31]_INST_0_i_2_n_5 ),
        .I2(alu_result9__0),
        .I3(sr_result),
        .I4(alu_result1__0),
        .I5(\data_sram_addr[30]_INST_0_i_5_n_0 ),
        .O(exe_to_mem_bus[93]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[30]_INST_0_i_1 
       (.I0(\data_sram_addr[30]_INST_0_i_6_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[31]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[30]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[30]_INST_0_i_10 
       (.I0(Q[7]),
        .I1(exe_rj_value[7]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[23]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[23]),
        .O(\data_sram_addr[30]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_sram_addr[30]_INST_0_i_2 
       (.I0(exe_alu_op[0]),
        .I1(exe_alu_op[1]),
        .O(alu_result9__0));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \data_sram_addr[30]_INST_0_i_3 
       (.I0(\data_sram_addr[31]_INST_0_i_17_n_0 ),
        .I1(exe_alu_src2),
        .I2(exe_alu_src2__63[1]),
        .I3(sr64_result0__0),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[30]_INST_0_i_8_n_0 ),
        .O(sr_result));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_sram_addr[30]_INST_0_i_4 
       (.I0(exe_alu_op[9]),
        .I1(exe_alu_op[10]),
        .O(alu_result1__0));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[30]_INST_0_i_5 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[30]),
        .I4(exe_alu_src1[30]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[30]_INST_0_i_6 
       (.I0(\data_sram_addr[30]_INST_0_i_9_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[31]_INST_0_i_24_n_0 ),
        .O(\data_sram_addr[30]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[30]_INST_0_i_7 
       (.I0(\exe_data_reg_n_0_[126] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[30]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[30]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \data_sram_addr[30]_INST_0_i_8 
       (.I0(exe_alu_src2__63[3]),
        .I1(sr64_result0__0),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[30]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[30]),
        .O(\data_sram_addr[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_sram_addr[30]_INST_0_i_9 
       (.I0(exe_alu_src1[15]),
        .I1(exe_alu_src2__63[4]),
        .I2(exe_alu_src2__63[3]),
        .I3(\data_sram_addr[30]_INST_0_i_10_n_0 ),
        .I4(exe_alu_src2__63[2]),
        .I5(\data_sram_addr[31]_INST_0_i_25_n_0 ),
        .O(\data_sram_addr[30]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[31]_INST_0 
       (.I0(\data_sram_addr[31]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[31]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[31]),
        .I5(\data_sram_addr[31]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[94]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[31]_INST_0_i_1 
       (.I0(\data_sram_addr[31]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[31]_INST_0_i_7_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[31]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[31]_INST_0_i_10 
       (.I0(Q[30]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[30]),
        .O(exe_alu_src1[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[31]_INST_0_i_11 
       (.I0(Q[29]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[29]),
        .O(exe_alu_src1[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[31]_INST_0_i_12 
       (.I0(Q[28]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[28]),
        .O(exe_alu_src1[28]));
  LUT6 #(
    .INIT(64'hCD00CDCDCD000000)) 
    \data_sram_addr[31]_INST_0_i_17 
       (.I0(exe_alu_src2__63[3]),
        .I1(exe_alu_op[10]),
        .I2(exe_alu_src2__63[4]),
        .I3(Q[31]),
        .I4(\exe_data_reg_n_0_[137] ),
        .I5(exe_rj_value[31]),
        .O(\data_sram_addr[31]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \data_sram_addr[31]_INST_0_i_18 
       (.I0(\exe_data_reg_n_0_[98] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(\exe_data_reg_n_0_[135] ),
        .I3(Q[34]),
        .O(exe_alu_src2__63[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \data_sram_addr[31]_INST_0_i_19 
       (.I0(exe_alu_op[10]),
        .I1(exe_rj_value[31]),
        .I2(\exe_data_reg_n_0_[137] ),
        .I3(Q[31]),
        .O(sr64_result0__0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[31]_INST_0_i_2 
       (.CI(\data_sram_addr[27]_INST_0_i_2_n_0 ),
        .CO({\data_sram_addr[31]_INST_0_i_2_n_0 ,\data_sram_addr[31]_INST_0_i_2_n_1 ,\data_sram_addr[31]_INST_0_i_2_n_2 ,\data_sram_addr[31]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(exe_alu_src1[31:28]),
        .O({\data_sram_addr[31]_INST_0_i_2_n_4 ,\data_sram_addr[31]_INST_0_i_2_n_5 ,\data_sram_addr[31]_INST_0_i_2_n_6 ,\data_sram_addr[31]_INST_0_i_2_n_7 }),
        .S({u_alu_n_28,u_alu_n_29,u_alu_n_30,u_alu_n_31}));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[31]_INST_0_i_20 
       (.I0(\exe_data_reg_n_0_[97] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(Q[33]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[1]));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[31]_INST_0_i_21 
       (.I0(\data_sram_addr[31]_INST_0_i_28_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[31]_INST_0_i_29_n_0 ),
        .O(\data_sram_addr[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_22 
       (.I0(exe_alu_src1[2]),
        .I1(exe_alu_src1[18]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[10]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[26]),
        .O(\data_sram_addr[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_23 
       (.I0(exe_alu_src1[6]),
        .I1(exe_alu_src1[22]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[14]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[30]),
        .O(\data_sram_addr[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[31]_INST_0_i_24 
       (.I0(\data_sram_addr[31]_INST_0_i_30_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[31]_INST_0_i_31_n_0 ),
        .O(\data_sram_addr[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_25 
       (.I0(exe_alu_src1[3]),
        .I1(exe_alu_src1[19]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[11]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[27]),
        .O(\data_sram_addr[31]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_26 
       (.I0(exe_alu_src1[7]),
        .I1(exe_alu_src1[23]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[15]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[31]),
        .O(\data_sram_addr[31]_INST_0_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \data_sram_addr[31]_INST_0_i_27 
       (.I0(exe_alu_op[1]),
        .I1(exe_alu_op[2]),
        .I2(exe_alu_op[3]),
        .O(adder_cin));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_28 
       (.I0(exe_alu_src1[0]),
        .I1(exe_alu_src1[16]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[8]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[24]),
        .O(\data_sram_addr[31]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_29 
       (.I0(exe_alu_src1[4]),
        .I1(exe_alu_src1[20]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[12]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[28]),
        .O(\data_sram_addr[31]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00AA00A808)) 
    \data_sram_addr[31]_INST_0_i_3 
       (.I0(alu_result1__0),
        .I1(\data_sram_addr[31]_INST_0_i_17_n_0 ),
        .I2(exe_alu_src2__63[2]),
        .I3(sr64_result0__0),
        .I4(exe_alu_src2__63[1]),
        .I5(exe_alu_src2),
        .O(alu_result0[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_30 
       (.I0(exe_alu_src1[1]),
        .I1(exe_alu_src1[17]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[9]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[25]),
        .O(\data_sram_addr[31]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[31]_INST_0_i_31 
       (.I0(exe_alu_src1[5]),
        .I1(exe_alu_src1[21]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[13]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[29]),
        .O(\data_sram_addr[31]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[31]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[31]),
        .I4(exe_alu_src1[31]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[31]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_sram_addr[31]_INST_0_i_5 
       (.I0(\data_sram_addr[31]_INST_0_i_21_n_0 ),
        .I1(exe_alu_src2__63[1]),
        .I2(\data_sram_addr[31]_INST_0_i_22_n_0 ),
        .I3(exe_alu_src2__63[2]),
        .I4(\data_sram_addr[31]_INST_0_i_23_n_0 ),
        .O(\data_sram_addr[31]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[31]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[96] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(Q[32]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_sram_addr[31]_INST_0_i_7 
       (.I0(\data_sram_addr[31]_INST_0_i_24_n_0 ),
        .I1(exe_alu_src2__63[1]),
        .I2(\data_sram_addr[31]_INST_0_i_25_n_0 ),
        .I3(exe_alu_src2__63[2]),
        .I4(\data_sram_addr[31]_INST_0_i_26_n_0 ),
        .O(\data_sram_addr[31]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[31]_INST_0_i_8 
       (.I0(\exe_data_reg_n_0_[127] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[31]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[31]_INST_0_i_9 
       (.I0(Q[31]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[31]),
        .O(exe_alu_src1[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[3]_INST_0 
       (.I0(\data_sram_addr[3]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[3]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[3]),
        .I5(\data_sram_addr[3]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[66]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[3]_INST_0_i_1 
       (.I0(\data_sram_addr[3]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[4]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[3]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[3]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[3]_INST_0_i_10 
       (.I0(Q[1]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[1]),
        .O(\data_sram_addr[3]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[3]_INST_0_i_11 
       (.I0(Q[0]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[0]),
        .O(exe_alu_src1[0]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[3]_INST_0_i_16 
       (.I0(\data_sram_addr[5]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[3]_INST_0_i_18_n_0 ),
        .O(\data_sram_addr[3]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[3]_INST_0_i_17 
       (.I0(Q[3]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[3]),
        .O(exe_alu_src1[3]));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[3]_INST_0_i_18 
       (.I0(\data_sram_addr[1]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[1]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[3]_INST_0_i_18_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[3]_INST_0_i_2 
       (.CI(1'b0),
        .CO({\data_sram_addr[3]_INST_0_i_2_n_0 ,\data_sram_addr[3]_INST_0_i_2_n_1 ,\data_sram_addr[3]_INST_0_i_2_n_2 ,\data_sram_addr[3]_INST_0_i_2_n_3 }),
        .CYINIT(adder_b),
        .DI({\data_sram_addr[3]_INST_0_i_8_n_0 ,\data_sram_addr[3]_INST_0_i_9_n_0 ,\data_sram_addr[3]_INST_0_i_10_n_0 ,exe_alu_src1[0]}),
        .O({\data_sram_addr[3]_INST_0_i_2_n_4 ,\data_sram_addr[3]_INST_0_i_2_n_5 ,\data_sram_addr[3]_INST_0_i_2_n_6 ,\data_sram_addr[3]_INST_0_i_2_n_7 }),
        .S({u_alu_n_0,u_alu_n_1,u_alu_n_2,u_alu_n_3}));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[3]_INST_0_i_3 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[3]_INST_0_i_16_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[4]_INST_0_i_6_n_0 ),
        .O(alu_result0[3]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[3]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[3]),
        .I4(exe_alu_src1[3]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \data_sram_addr[3]_INST_0_i_5 
       (.I0(exe_alu_src1[0]),
        .I1(exe_alu_src2__63[1]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[2]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src2__63[2]),
        .O(\data_sram_addr[3]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[3]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[99] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(Q[35]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[3]));
  LUT4 #(
    .INIT(16'h01FE)) 
    \data_sram_addr[3]_INST_0_i_7 
       (.I0(exe_alu_op[3]),
        .I1(exe_alu_op[2]),
        .I2(exe_alu_op[1]),
        .I3(exe_alu_src2),
        .O(adder_b));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[3]_INST_0_i_8 
       (.I0(Q[3]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[3]),
        .O(\data_sram_addr[3]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[3]_INST_0_i_9 
       (.I0(Q[2]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[2]),
        .O(\data_sram_addr[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[4]_INST_0 
       (.I0(\data_sram_addr[4]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[7]_INST_0_i_2_n_7 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[4]),
        .I5(\data_sram_addr[4]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[67]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[4]_INST_0_i_1 
       (.I0(\data_sram_addr[4]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[5]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[4]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[4]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[5]_INST_0_i_6_n_0 ),
        .O(alu_result0[4]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[4]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[4]),
        .I4(exe_alu_src1[4]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \data_sram_addr[4]_INST_0_i_4 
       (.I0(exe_alu_src1[1]),
        .I1(exe_alu_src2__63[1]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[3]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src2__63[2]),
        .O(\data_sram_addr[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[4]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[100] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(Q[36]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[4]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[4]_INST_0_i_6 
       (.I0(\data_sram_addr[6]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[4]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[4]_INST_0_i_7 
       (.I0(Q[4]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[4]),
        .O(exe_alu_src1[4]));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[4]_INST_0_i_8 
       (.I0(\data_sram_addr[2]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[2]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[5]_INST_0 
       (.I0(\data_sram_addr[5]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[7]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[5]),
        .I5(\data_sram_addr[5]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[68]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[5]_INST_0_i_1 
       (.I0(\data_sram_addr[5]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[6]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[5]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[5]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[5]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[6]_INST_0_i_6_n_0 ),
        .O(alu_result0[5]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[5]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[5]),
        .I4(exe_alu_src1[5]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \data_sram_addr[5]_INST_0_i_4 
       (.I0(exe_alu_src2__63[3]),
        .I1(exe_alu_src1[2]),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src2__63[2]),
        .I4(exe_alu_src2__63[1]),
        .I5(\data_sram_addr[7]_INST_0_i_16_n_0 ),
        .O(\data_sram_addr[5]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[5]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[101] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(Q[37]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[5]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[5]_INST_0_i_6 
       (.I0(\data_sram_addr[7]_INST_0_i_17_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[5]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[5]_INST_0_i_7 
       (.I0(\data_sram_addr[9]_INST_0_i_9_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[1]_INST_0_i_10_n_0 ),
        .O(\data_sram_addr[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[6]_INST_0 
       (.I0(\data_sram_addr[6]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[7]_INST_0_i_2_n_5 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[6]),
        .I5(\data_sram_addr[6]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[69]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[6]_INST_0_i_1 
       (.I0(\data_sram_addr[6]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[7]_INST_0_i_5_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[6]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[6]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[6]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[7]_INST_0_i_15_n_0 ),
        .O(alu_result0[6]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[6]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[6]),
        .I4(exe_alu_src1[6]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \data_sram_addr[6]_INST_0_i_4 
       (.I0(exe_alu_src2__63[3]),
        .I1(exe_alu_src1[3]),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src2__63[2]),
        .I4(exe_alu_src2__63[1]),
        .I5(\data_sram_addr[8]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[6]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[102] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(Q[38]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[6]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[6]_INST_0_i_6 
       (.I0(\data_sram_addr[8]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[6]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[6]_INST_0_i_7 
       (.I0(\data_sram_addr[10]_INST_0_i_9_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[2]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[7]_INST_0 
       (.I0(\data_sram_addr[7]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[7]_INST_0_i_2_n_4 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[7]),
        .I5(\data_sram_addr[7]_INST_0_i_4_n_0 ),
        .O(exe_to_mem_bus[70]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[7]_INST_0_i_1 
       (.I0(\data_sram_addr[7]_INST_0_i_5_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[8]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[7]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[7]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[7]_INST_0_i_10 
       (.I0(Q[4]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[4]),
        .O(\data_sram_addr[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[7]_INST_0_i_15 
       (.I0(\data_sram_addr[9]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[7]_INST_0_i_17_n_0 ),
        .O(\data_sram_addr[7]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_sram_addr[7]_INST_0_i_16 
       (.I0(exe_alu_src1[0]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[4]),
        .I4(exe_alu_src2__63[3]),
        .O(\data_sram_addr[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[7]_INST_0_i_17 
       (.I0(\data_sram_addr[11]_INST_0_i_18_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[1]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[7]_INST_0_i_17_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_sram_addr[7]_INST_0_i_2 
       (.CI(\data_sram_addr[3]_INST_0_i_2_n_0 ),
        .CO({\data_sram_addr[7]_INST_0_i_2_n_0 ,\data_sram_addr[7]_INST_0_i_2_n_1 ,\data_sram_addr[7]_INST_0_i_2_n_2 ,\data_sram_addr[7]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({exe_alu_src1[7:5],\data_sram_addr[7]_INST_0_i_10_n_0 }),
        .O({\data_sram_addr[7]_INST_0_i_2_n_4 ,\data_sram_addr[7]_INST_0_i_2_n_5 ,\data_sram_addr[7]_INST_0_i_2_n_6 ,\data_sram_addr[7]_INST_0_i_2_n_7 }),
        .S({u_alu_n_4,u_alu_n_5,u_alu_n_6,u_alu_n_7}));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[7]_INST_0_i_3 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[7]_INST_0_i_15_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[8]_INST_0_i_6_n_0 ),
        .O(alu_result0[7]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[7]_INST_0_i_4 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[7]),
        .I4(exe_alu_src1[7]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[7]_INST_0_i_5 
       (.I0(\data_sram_addr[7]_INST_0_i_16_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[9]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[7]_INST_0_i_6 
       (.I0(\exe_data_reg_n_0_[103] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(Q[39]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[7]_INST_0_i_7 
       (.I0(Q[7]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[7]),
        .O(exe_alu_src1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[7]_INST_0_i_8 
       (.I0(Q[6]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[6]),
        .O(exe_alu_src1[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sram_addr[7]_INST_0_i_9 
       (.I0(Q[5]),
        .I1(\exe_data_reg_n_0_[137] ),
        .I2(exe_rj_value[5]),
        .O(exe_alu_src1[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[8]_INST_0 
       (.I0(\data_sram_addr[8]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[11]_INST_0_i_2_n_7 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[8]),
        .I5(\data_sram_addr[8]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[71]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[8]_INST_0_i_1 
       (.I0(\data_sram_addr[8]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[9]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[8]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[8]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[8]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[9]_INST_0_i_6_n_0 ),
        .O(alu_result0[8]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[8]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[8]),
        .I4(exe_alu_src1[8]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[8]_INST_0_i_4 
       (.I0(\data_sram_addr[8]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[10]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[8]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[8]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[104] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[8]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[8]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[8]_INST_0_i_6 
       (.I0(\data_sram_addr[10]_INST_0_i_8_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[8]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[8]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_sram_addr[8]_INST_0_i_7 
       (.I0(exe_alu_src1[1]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[5]),
        .I4(exe_alu_src2__63[3]),
        .O(\data_sram_addr[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[8]_INST_0_i_8 
       (.I0(\data_sram_addr[12]_INST_0_i_9_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[2]_INST_0_i_7_n_0 ),
        .O(\data_sram_addr[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \data_sram_addr[9]_INST_0 
       (.I0(\data_sram_addr[9]_INST_0_i_1_n_0 ),
        .I1(\data_sram_addr[11]_INST_0_i_2_n_6 ),
        .I2(exe_alu_op[0]),
        .I3(exe_alu_op[1]),
        .I4(alu_result0[9]),
        .I5(\data_sram_addr[9]_INST_0_i_3_n_0 ),
        .O(exe_to_mem_bus[72]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_sram_addr[9]_INST_0_i_1 
       (.I0(\data_sram_addr[9]_INST_0_i_4_n_0 ),
        .I1(exe_alu_src2),
        .I2(\data_sram_addr[10]_INST_0_i_4_n_0 ),
        .I3(exe_alu_op[8]),
        .I4(exe_alu_src2__63[9]),
        .I5(exe_alu_op[11]),
        .O(\data_sram_addr[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \data_sram_addr[9]_INST_0_i_2 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[9]_INST_0_i_6_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[10]_INST_0_i_6_n_0 ),
        .O(alu_result0[9]));
  LUT6 #(
    .INIT(64'hFAEEEEFFFAEEEE00)) 
    \data_sram_addr[9]_INST_0_i_3 
       (.I0(exe_alu_op[6]),
        .I1(exe_alu_op[7]),
        .I2(exe_alu_op[4]),
        .I3(exe_alu_src2__63[9]),
        .I4(exe_alu_src1[9]),
        .I5(exe_alu_op[5]),
        .O(\data_sram_addr[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[9]_INST_0_i_4 
       (.I0(\data_sram_addr[9]_INST_0_i_7_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[11]_INST_0_i_16_n_0 ),
        .O(\data_sram_addr[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_sram_addr[9]_INST_0_i_5 
       (.I0(\exe_data_reg_n_0_[105] ),
        .I1(\exe_data_reg_n_0_[136] ),
        .I2(exe_rkd_value[9]),
        .I3(\exe_data_reg_n_0_[135] ),
        .O(exe_alu_src2__63[9]));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \data_sram_addr[9]_INST_0_i_6 
       (.I0(\data_sram_addr[11]_INST_0_i_17_n_0 ),
        .I1(\exe_data_reg_n_0_[97] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(Q[33]),
        .I4(\exe_data_reg_n_0_[135] ),
        .I5(\data_sram_addr[9]_INST_0_i_8_n_0 ),
        .O(\data_sram_addr[9]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_sram_addr[9]_INST_0_i_7 
       (.I0(exe_alu_src1[2]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[4]),
        .I3(exe_alu_src1[6]),
        .I4(exe_alu_src2__63[3]),
        .O(\data_sram_addr[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    \data_sram_addr[9]_INST_0_i_8 
       (.I0(\data_sram_addr[13]_INST_0_i_9_n_0 ),
        .I1(\exe_data_reg_n_0_[98] ),
        .I2(\exe_data_reg_n_0_[136] ),
        .I3(\exe_data_reg_n_0_[135] ),
        .I4(Q[34]),
        .I5(\data_sram_addr[9]_INST_0_i_9_n_0 ),
        .O(\data_sram_addr[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_sram_addr[9]_INST_0_i_9 
       (.I0(sr64_result0__0),
        .I1(exe_alu_src1[17]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_src1[25]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[9]),
        .O(\data_sram_addr[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002220)) 
    data_sram_en_INST_0
       (.I0(exe_valid),
        .I1(\exe_data_reg[160]_0 ),
        .I2(Q[45]),
        .I3(Q[47]),
        .I4(flush_from_mem),
        .I5(exe_flush_sign__1),
        .O(data_sram_en));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    data_sram_en_INST_0_i_1
       (.I0(excp_flush),
        .I1(ertn_flush),
        .I2(refetch_flush),
        .O(exe_flush_sign__1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[10]_INST_0 
       (.I0(Q[34]),
        .I1(exe_rkd_value[10]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[11]_INST_0 
       (.I0(Q[35]),
        .I1(exe_rkd_value[11]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[12]_INST_0 
       (.I0(Q[36]),
        .I1(exe_rkd_value[12]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[13]_INST_0 
       (.I0(Q[37]),
        .I1(exe_rkd_value[13]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[14]_INST_0 
       (.I0(Q[38]),
        .I1(exe_rkd_value[14]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[15]_INST_0 
       (.I0(Q[39]),
        .I1(exe_rkd_value[15]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[7]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[16]_INST_0 
       (.I0(exe_rkd_value[16]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[32]),
        .O(data_sram_wdata[8]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[17]_INST_0 
       (.I0(exe_rkd_value[17]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[33]),
        .O(data_sram_wdata[9]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[18]_INST_0 
       (.I0(exe_rkd_value[18]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[34]),
        .O(data_sram_wdata[10]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[19]_INST_0 
       (.I0(exe_rkd_value[19]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[35]),
        .O(data_sram_wdata[11]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[20]_INST_0 
       (.I0(exe_rkd_value[20]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[36]),
        .O(data_sram_wdata[12]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[21]_INST_0 
       (.I0(exe_rkd_value[21]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[37]),
        .O(data_sram_wdata[13]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[22]_INST_0 
       (.I0(exe_rkd_value[22]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[38]),
        .O(data_sram_wdata[14]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \data_sram_wdata[23]_INST_0 
       (.I0(exe_rkd_value[23]),
        .I1(Q[53]),
        .I2(Q[52]),
        .I3(Q[39]),
        .O(data_sram_wdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[24]_INST_0 
       (.I0(Q[32]),
        .I1(exe_rkd_value[24]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[8]),
        .O(data_sram_wdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[25]_INST_0 
       (.I0(Q[33]),
        .I1(exe_rkd_value[25]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[9]),
        .O(data_sram_wdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[26]_INST_0 
       (.I0(Q[34]),
        .I1(exe_rkd_value[26]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[10]),
        .O(data_sram_wdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[27]_INST_0 
       (.I0(Q[35]),
        .I1(exe_rkd_value[27]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[11]),
        .O(data_sram_wdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[28]_INST_0 
       (.I0(Q[36]),
        .I1(exe_rkd_value[28]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[12]),
        .O(data_sram_wdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[29]_INST_0 
       (.I0(Q[37]),
        .I1(exe_rkd_value[29]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[13]),
        .O(data_sram_wdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[30]_INST_0 
       (.I0(Q[38]),
        .I1(exe_rkd_value[30]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[14]),
        .O(data_sram_wdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCAFCCA0C)) 
    \data_sram_wdata[31]_INST_0 
       (.I0(Q[39]),
        .I1(exe_rkd_value[31]),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(exe_rkd_value[15]),
        .O(data_sram_wdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[8]_INST_0 
       (.I0(Q[32]),
        .I1(exe_rkd_value[8]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \data_sram_wdata[9]_INST_0 
       (.I0(Q[33]),
        .I1(exe_rkd_value[9]),
        .I2(Q[53]),
        .I3(Q[52]),
        .O(data_sram_wdata[1]));
  LUT6 #(
    .INIT(64'h000010001000F000)) 
    \data_sram_we[0]_INST_0 
       (.I0(\exe_data_reg[139]_0 ),
        .I1(\exe_data_reg[139]_1 ),
        .I2(exe_valid),
        .I3(Q[45]),
        .I4(Q[53]),
        .I5(Q[52]),
        .O(data_sram_we[0]));
  LUT6 #(
    .INIT(64'h0008000008080888)) 
    \data_sram_we[1]_INST_0 
       (.I0(exe_valid),
        .I1(Q[45]),
        .I2(Q[53]),
        .I3(\exe_data_reg[139]_1 ),
        .I4(\exe_data_reg[139]_0 ),
        .I5(Q[52]),
        .O(data_sram_we[1]));
  LUT6 #(
    .INIT(64'h000020002000F000)) 
    \data_sram_we[2]_INST_0 
       (.I0(\exe_data_reg[139]_1 ),
        .I1(\exe_data_reg[139]_0 ),
        .I2(exe_valid),
        .I3(Q[45]),
        .I4(Q[53]),
        .I5(Q[52]),
        .O(data_sram_we[2]));
  LUT6 #(
    .INIT(64'h0800000008880808)) 
    \data_sram_we[3]_INST_0 
       (.I0(exe_valid),
        .I1(Q[45]),
        .I2(Q[53]),
        .I3(\exe_data_reg[139]_0 ),
        .I4(\exe_data_reg[139]_1 ),
        .I5(Q[52]),
        .O(data_sram_we[3]));
  FDRE \exe_data_reg[0] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \exe_data_reg[100] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[100]),
        .Q(\exe_data_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \exe_data_reg[101] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[101]),
        .Q(\exe_data_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \exe_data_reg[102] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[102]),
        .Q(\exe_data_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \exe_data_reg[103] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[103]),
        .Q(\exe_data_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \exe_data_reg[104] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[104]),
        .Q(\exe_data_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \exe_data_reg[105] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[105]),
        .Q(\exe_data_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \exe_data_reg[106] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[106]),
        .Q(\exe_data_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \exe_data_reg[107] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[107]),
        .Q(\exe_data_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \exe_data_reg[108] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[108]),
        .Q(\exe_data_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \exe_data_reg[109] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[109]),
        .Q(\exe_data_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \exe_data_reg[10] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \exe_data_reg[110] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[110]),
        .Q(\exe_data_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \exe_data_reg[111] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[111]),
        .Q(\exe_data_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \exe_data_reg[112] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[112]),
        .Q(\exe_data_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \exe_data_reg[113] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[113]),
        .Q(\exe_data_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \exe_data_reg[114] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[114]),
        .Q(\exe_data_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \exe_data_reg[115] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[115]),
        .Q(\exe_data_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \exe_data_reg[116] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[116]),
        .Q(\exe_data_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \exe_data_reg[117] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[117]),
        .Q(\exe_data_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \exe_data_reg[118] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[118]),
        .Q(\exe_data_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \exe_data_reg[119] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[119]),
        .Q(\exe_data_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \exe_data_reg[11] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \exe_data_reg[120] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[120]),
        .Q(\exe_data_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \exe_data_reg[121] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[121]),
        .Q(\exe_data_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \exe_data_reg[122] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[122]),
        .Q(\exe_data_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \exe_data_reg[123] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[123]),
        .Q(\exe_data_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \exe_data_reg[124] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[124]),
        .Q(\exe_data_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \exe_data_reg[125] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[125]),
        .Q(\exe_data_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \exe_data_reg[126] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[126]),
        .Q(\exe_data_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \exe_data_reg[127] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[127]),
        .Q(\exe_data_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \exe_data_reg[128] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[128]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \exe_data_reg[129] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[129]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \exe_data_reg[12] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \exe_data_reg[130] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[130]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \exe_data_reg[131] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[131]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \exe_data_reg[132] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[132]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \exe_data_reg[133] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[133]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \exe_data_reg[134] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[134]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \exe_data_reg[135] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[135]),
        .Q(\exe_data_reg_n_0_[135] ),
        .R(1'b0));
  FDRE \exe_data_reg[136] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[136]),
        .Q(\exe_data_reg_n_0_[136] ),
        .R(1'b0));
  FDRE \exe_data_reg[137] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[137]),
        .Q(\exe_data_reg_n_0_[137] ),
        .R(1'b0));
  FDRE \exe_data_reg[138] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[138]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \exe_data_reg[139] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[139]),
        .Q(exe_alu_op[0]),
        .R(1'b0));
  FDRE \exe_data_reg[13] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \exe_data_reg[140] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[140]),
        .Q(exe_alu_op[1]),
        .R(1'b0));
  FDRE \exe_data_reg[141] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[141]),
        .Q(exe_alu_op[2]),
        .R(1'b0));
  FDRE \exe_data_reg[142] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[142]),
        .Q(exe_alu_op[3]),
        .R(1'b0));
  FDRE \exe_data_reg[143] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[143]),
        .Q(exe_alu_op[4]),
        .R(1'b0));
  FDRE \exe_data_reg[144] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[144]),
        .Q(exe_alu_op[5]),
        .R(1'b0));
  FDRE \exe_data_reg[145] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[145]),
        .Q(exe_alu_op[6]),
        .R(1'b0));
  FDRE \exe_data_reg[146] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[146]),
        .Q(exe_alu_op[7]),
        .R(1'b0));
  FDRE \exe_data_reg[147] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[147]),
        .Q(exe_alu_op[8]),
        .R(1'b0));
  FDRE \exe_data_reg[148] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[148]),
        .Q(exe_alu_op[9]),
        .R(1'b0));
  FDRE \exe_data_reg[149] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[149]),
        .Q(exe_alu_op[10]),
        .R(1'b0));
  FDRE \exe_data_reg[14] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \exe_data_reg[150] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[150]),
        .Q(exe_alu_op[11]),
        .R(1'b0));
  FDRE \exe_data_reg[153] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[151]),
        .Q(exe_mul_div_sign),
        .R(1'b0));
  FDRE \exe_data_reg[154] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[152]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \exe_data_reg[155] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[153]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \exe_data_reg[156] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[154]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \exe_data_reg[157] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[155]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \exe_data_reg[158] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[156]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \exe_data_reg[159] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[157]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \exe_data_reg[15] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \exe_data_reg[160] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[158]),
        .Q(exe_excp),
        .R(1'b0));
  FDRE \exe_data_reg[161] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[159]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \exe_data_reg[162] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[160]),
        .Q(exe_csr_data[0]),
        .R(1'b0));
  FDRE \exe_data_reg[163] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[161]),
        .Q(exe_csr_data[1]),
        .R(1'b0));
  FDRE \exe_data_reg[164] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[162]),
        .Q(exe_csr_data[2]),
        .R(1'b0));
  FDRE \exe_data_reg[165] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[163]),
        .Q(exe_csr_data[3]),
        .R(1'b0));
  FDRE \exe_data_reg[166] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[164]),
        .Q(exe_csr_data[4]),
        .R(1'b0));
  FDRE \exe_data_reg[167] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[165]),
        .Q(exe_csr_data[5]),
        .R(1'b0));
  FDRE \exe_data_reg[168] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[166]),
        .Q(exe_csr_data[6]),
        .R(1'b0));
  FDRE \exe_data_reg[169] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[167]),
        .Q(exe_csr_data[7]),
        .R(1'b0));
  FDRE \exe_data_reg[16] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \exe_data_reg[170] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[168]),
        .Q(exe_csr_data[8]),
        .R(1'b0));
  FDRE \exe_data_reg[171] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[169]),
        .Q(exe_csr_data[9]),
        .R(1'b0));
  FDRE \exe_data_reg[172] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[170]),
        .Q(exe_csr_data[10]),
        .R(1'b0));
  FDRE \exe_data_reg[173] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[171]),
        .Q(exe_csr_data[11]),
        .R(1'b0));
  FDRE \exe_data_reg[174] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[172]),
        .Q(exe_csr_data[12]),
        .R(1'b0));
  FDRE \exe_data_reg[175] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[173]),
        .Q(exe_csr_data[13]),
        .R(1'b0));
  FDRE \exe_data_reg[176] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[174]),
        .Q(exe_csr_data[14]),
        .R(1'b0));
  FDRE \exe_data_reg[177] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[175]),
        .Q(exe_csr_data[15]),
        .R(1'b0));
  FDRE \exe_data_reg[178] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[176]),
        .Q(exe_csr_data[16]),
        .R(1'b0));
  FDRE \exe_data_reg[179] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[177]),
        .Q(exe_csr_data[17]),
        .R(1'b0));
  FDRE \exe_data_reg[17] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \exe_data_reg[180] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[178]),
        .Q(exe_csr_data[18]),
        .R(1'b0));
  FDRE \exe_data_reg[181] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[179]),
        .Q(exe_csr_data[19]),
        .R(1'b0));
  FDRE \exe_data_reg[182] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[180]),
        .Q(exe_csr_data[20]),
        .R(1'b0));
  FDRE \exe_data_reg[183] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[181]),
        .Q(exe_csr_data[21]),
        .R(1'b0));
  FDRE \exe_data_reg[184] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[182]),
        .Q(exe_csr_data[22]),
        .R(1'b0));
  FDRE \exe_data_reg[185] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[183]),
        .Q(exe_csr_data[23]),
        .R(1'b0));
  FDRE \exe_data_reg[186] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[184]),
        .Q(exe_csr_data[24]),
        .R(1'b0));
  FDRE \exe_data_reg[187] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[185]),
        .Q(exe_csr_data[25]),
        .R(1'b0));
  FDRE \exe_data_reg[188] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[186]),
        .Q(exe_csr_data[26]),
        .R(1'b0));
  FDRE \exe_data_reg[189] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[187]),
        .Q(exe_csr_data[27]),
        .R(1'b0));
  FDRE \exe_data_reg[18] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \exe_data_reg[190] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[188]),
        .Q(exe_csr_data[28]),
        .R(1'b0));
  FDRE \exe_data_reg[191] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[189]),
        .Q(exe_csr_data[29]),
        .R(1'b0));
  FDRE \exe_data_reg[192] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[190]),
        .Q(exe_csr_data[30]),
        .R(1'b0));
  FDRE \exe_data_reg[193] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[191]),
        .Q(exe_csr_data[31]),
        .R(1'b0));
  FDRE \exe_data_reg[194] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[192]),
        .Q(sel0),
        .R(1'b0));
  FDRE \exe_data_reg[195] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[193]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \exe_data_reg[196] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[194]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \exe_data_reg[197] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[195]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \exe_data_reg[198] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[196]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \exe_data_reg[199] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[197]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \exe_data_reg[19] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \exe_data_reg[1] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \exe_data_reg[200] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[198]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \exe_data_reg[201] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[199]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \exe_data_reg[202] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[200]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \exe_data_reg[203] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[201]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \exe_data_reg[204] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[202]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \exe_data_reg[205] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[203]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \exe_data_reg[206] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[204]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE \exe_data_reg[207] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[205]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE \exe_data_reg[208] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[206]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE \exe_data_reg[209] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[207]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE \exe_data_reg[20] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \exe_data_reg[210] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[208]),
        .Q(\exe_data_reg_n_0_[210] ),
        .R(1'b0));
  FDRE \exe_data_reg[211] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[209]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE \exe_data_reg[212] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[210]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE \exe_data_reg[213] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[211]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE \exe_data_reg[214] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[212]),
        .Q(Q[73]),
        .R(1'b0));
  FDRE \exe_data_reg[215] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[213]),
        .Q(Q[74]),
        .R(1'b0));
  FDRE \exe_data_reg[216] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[214]),
        .Q(Q[75]),
        .R(1'b0));
  FDRE \exe_data_reg[217] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[215]),
        .Q(Q[76]),
        .R(1'b0));
  FDRE \exe_data_reg[218] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[216]),
        .Q(Q[77]),
        .R(1'b0));
  FDRE \exe_data_reg[219] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[217]),
        .Q(Q[78]),
        .R(1'b0));
  FDRE \exe_data_reg[21] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \exe_data_reg[220] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[218]),
        .Q(Q[79]),
        .R(1'b0));
  FDRE \exe_data_reg[22] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \exe_data_reg[23] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \exe_data_reg[24] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \exe_data_reg[25] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \exe_data_reg[26] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \exe_data_reg[27] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \exe_data_reg[28] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \exe_data_reg[29] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \exe_data_reg[2] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \exe_data_reg[30] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \exe_data_reg[31] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \exe_data_reg[32] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \exe_data_reg[33] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \exe_data_reg[34] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \exe_data_reg[35] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \exe_data_reg[36] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \exe_data_reg[37] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \exe_data_reg[38] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \exe_data_reg[39] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \exe_data_reg[3] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \exe_data_reg[40] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[40]),
        .Q(exe_rkd_value[8]),
        .R(1'b0));
  FDRE \exe_data_reg[41] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[41]),
        .Q(exe_rkd_value[9]),
        .R(1'b0));
  FDRE \exe_data_reg[42] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[42]),
        .Q(exe_rkd_value[10]),
        .R(1'b0));
  FDRE \exe_data_reg[43] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[43]),
        .Q(exe_rkd_value[11]),
        .R(1'b0));
  FDRE \exe_data_reg[44] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[44]),
        .Q(exe_rkd_value[12]),
        .R(1'b0));
  FDRE \exe_data_reg[45] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[45]),
        .Q(exe_rkd_value[13]),
        .R(1'b0));
  FDRE \exe_data_reg[46] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[46]),
        .Q(exe_rkd_value[14]),
        .R(1'b0));
  FDRE \exe_data_reg[47] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[47]),
        .Q(exe_rkd_value[15]),
        .R(1'b0));
  FDRE \exe_data_reg[48] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[48]),
        .Q(exe_rkd_value[16]),
        .R(1'b0));
  FDRE \exe_data_reg[49] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[49]),
        .Q(exe_rkd_value[17]),
        .R(1'b0));
  FDRE \exe_data_reg[4] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \exe_data_reg[50] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[50]),
        .Q(exe_rkd_value[18]),
        .R(1'b0));
  FDRE \exe_data_reg[51] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[51]),
        .Q(exe_rkd_value[19]),
        .R(1'b0));
  FDRE \exe_data_reg[52] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[52]),
        .Q(exe_rkd_value[20]),
        .R(1'b0));
  FDRE \exe_data_reg[53] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[53]),
        .Q(exe_rkd_value[21]),
        .R(1'b0));
  FDRE \exe_data_reg[54] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[54]),
        .Q(exe_rkd_value[22]),
        .R(1'b0));
  FDRE \exe_data_reg[55] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[55]),
        .Q(exe_rkd_value[23]),
        .R(1'b0));
  FDRE \exe_data_reg[56] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[56]),
        .Q(exe_rkd_value[24]),
        .R(1'b0));
  FDRE \exe_data_reg[57] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[57]),
        .Q(exe_rkd_value[25]),
        .R(1'b0));
  FDRE \exe_data_reg[58] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[58]),
        .Q(exe_rkd_value[26]),
        .R(1'b0));
  FDRE \exe_data_reg[59] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[59]),
        .Q(exe_rkd_value[27]),
        .R(1'b0));
  FDRE \exe_data_reg[5] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \exe_data_reg[60] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[60]),
        .Q(exe_rkd_value[28]),
        .R(1'b0));
  FDRE \exe_data_reg[61] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[61]),
        .Q(exe_rkd_value[29]),
        .R(1'b0));
  FDRE \exe_data_reg[62] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[62]),
        .Q(exe_rkd_value[30]),
        .R(1'b0));
  FDRE \exe_data_reg[63] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[63]),
        .Q(exe_rkd_value[31]),
        .R(1'b0));
  FDRE \exe_data_reg[64] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[64]),
        .Q(exe_rj_value[0]),
        .R(1'b0));
  FDRE \exe_data_reg[65] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[65]),
        .Q(exe_rj_value[1]),
        .R(1'b0));
  FDRE \exe_data_reg[66] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[66]),
        .Q(exe_rj_value[2]),
        .R(1'b0));
  FDRE \exe_data_reg[67] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[67]),
        .Q(exe_rj_value[3]),
        .R(1'b0));
  FDRE \exe_data_reg[68] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[68]),
        .Q(exe_rj_value[4]),
        .R(1'b0));
  FDRE \exe_data_reg[69] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[69]),
        .Q(exe_rj_value[5]),
        .R(1'b0));
  FDRE \exe_data_reg[6] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \exe_data_reg[70] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[70]),
        .Q(exe_rj_value[6]),
        .R(1'b0));
  FDRE \exe_data_reg[71] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[71]),
        .Q(exe_rj_value[7]),
        .R(1'b0));
  FDRE \exe_data_reg[72] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[72]),
        .Q(exe_rj_value[8]),
        .R(1'b0));
  FDRE \exe_data_reg[73] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[73]),
        .Q(exe_rj_value[9]),
        .R(1'b0));
  FDRE \exe_data_reg[74] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[74]),
        .Q(exe_rj_value[10]),
        .R(1'b0));
  FDRE \exe_data_reg[75] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[75]),
        .Q(exe_rj_value[11]),
        .R(1'b0));
  FDRE \exe_data_reg[76] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[76]),
        .Q(exe_rj_value[12]),
        .R(1'b0));
  FDRE \exe_data_reg[77] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[77]),
        .Q(exe_rj_value[13]),
        .R(1'b0));
  FDRE \exe_data_reg[78] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[78]),
        .Q(exe_rj_value[14]),
        .R(1'b0));
  FDRE \exe_data_reg[79] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[79]),
        .Q(exe_rj_value[15]),
        .R(1'b0));
  FDRE \exe_data_reg[7] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \exe_data_reg[80] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[80]),
        .Q(exe_rj_value[16]),
        .R(1'b0));
  FDRE \exe_data_reg[81] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[81]),
        .Q(exe_rj_value[17]),
        .R(1'b0));
  FDRE \exe_data_reg[82] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[82]),
        .Q(exe_rj_value[18]),
        .R(1'b0));
  FDRE \exe_data_reg[83] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[83]),
        .Q(exe_rj_value[19]),
        .R(1'b0));
  FDRE \exe_data_reg[84] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[84]),
        .Q(exe_rj_value[20]),
        .R(1'b0));
  FDRE \exe_data_reg[85] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[85]),
        .Q(exe_rj_value[21]),
        .R(1'b0));
  FDRE \exe_data_reg[86] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[86]),
        .Q(exe_rj_value[22]),
        .R(1'b0));
  FDRE \exe_data_reg[87] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[87]),
        .Q(exe_rj_value[23]),
        .R(1'b0));
  FDRE \exe_data_reg[88] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[88]),
        .Q(exe_rj_value[24]),
        .R(1'b0));
  FDRE \exe_data_reg[89] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[89]),
        .Q(exe_rj_value[25]),
        .R(1'b0));
  FDRE \exe_data_reg[8] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \exe_data_reg[90] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[90]),
        .Q(exe_rj_value[26]),
        .R(1'b0));
  FDRE \exe_data_reg[91] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[91]),
        .Q(exe_rj_value[27]),
        .R(1'b0));
  FDRE \exe_data_reg[92] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[92]),
        .Q(exe_rj_value[28]),
        .R(1'b0));
  FDRE \exe_data_reg[93] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[93]),
        .Q(exe_rj_value[29]),
        .R(1'b0));
  FDRE \exe_data_reg[94] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[94]),
        .Q(exe_rj_value[30]),
        .R(1'b0));
  FDRE \exe_data_reg[95] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[95]),
        .Q(exe_rj_value[31]),
        .R(1'b0));
  FDRE \exe_data_reg[96] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[96]),
        .Q(\exe_data_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \exe_data_reg[97] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[97]),
        .Q(\exe_data_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \exe_data_reg[98] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[98]),
        .Q(\exe_data_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \exe_data_reg[99] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[99]),
        .Q(\exe_data_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \exe_data_reg[9] 
       (.C(clk),
        .CE(exe_data0),
        .D(id_to_exe_bus[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[0]_INST_0_i_2 
       (.I0(exe_csr_data[0]),
        .I1(data2[0]),
        .I2(p_1_out__1_n_105),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[10]_INST_0_i_2 
       (.I0(\data_sram_addr[10]_INST_0_i_3_n_0 ),
        .I1(alu_result0[10]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[11]_INST_0_i_2_n_5 ),
        .I4(\data_sram_addr[10]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[10]_INST_0_i_4 
       (.I0(exe_csr_data[10]),
        .I1(data2[10]),
        .I2(p_1_out__1_n_95),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[11]_INST_0_i_2 
       (.I0(\data_sram_addr[11]_INST_0_i_4_n_0 ),
        .I1(alu_result0[11]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[11]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[11]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[11]_INST_0_i_4 
       (.I0(exe_csr_data[11]),
        .I1(data2[11]),
        .I2(p_1_out__1_n_94),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[12]_INST_0_i_2 
       (.I0(\data_sram_addr[12]_INST_0_i_3_n_0 ),
        .I1(alu_result0[12]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[15]_INST_0_i_2_n_7 ),
        .I4(\data_sram_addr[12]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[12]_INST_0_i_4 
       (.I0(exe_csr_data[12]),
        .I1(data2[12]),
        .I2(p_1_out__1_n_93),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[13]_INST_0_i_2 
       (.I0(\data_sram_addr[13]_INST_0_i_3_n_0 ),
        .I1(alu_result0[13]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[15]_INST_0_i_2_n_6 ),
        .I4(\data_sram_addr[13]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[13]_INST_0_i_4 
       (.I0(exe_csr_data[13]),
        .I1(data2[13]),
        .I2(p_1_out__1_n_92),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[14]_INST_0_i_2 
       (.I0(\data_sram_addr[14]_INST_0_i_3_n_0 ),
        .I1(alu_result0[14]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[15]_INST_0_i_2_n_5 ),
        .I4(\data_sram_addr[14]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[14]_INST_0_i_4 
       (.I0(exe_csr_data[14]),
        .I1(data2[14]),
        .I2(p_1_out__1_n_91),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[15]_INST_0_i_2 
       (.I0(\data_sram_addr[15]_INST_0_i_4_n_0 ),
        .I1(alu_result0[15]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[15]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[15]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[15]_INST_0_i_4 
       (.I0(exe_csr_data[15]),
        .I1(data2[15]),
        .I2(p_1_out__1_n_90),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[16]_INST_0_i_2 
       (.I0(\data_sram_addr[16]_INST_0_i_3_n_0 ),
        .I1(alu_result0[16]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[19]_INST_0_i_2_n_7 ),
        .I4(\data_sram_addr[16]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[16]_INST_0_i_4 
       (.I0(exe_csr_data[16]),
        .I1(data2[16]),
        .I2(p_2_out_carry_n_7),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[17]_INST_0_i_2 
       (.I0(\data_sram_addr[17]_INST_0_i_3_n_0 ),
        .I1(alu_result0[17]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[19]_INST_0_i_2_n_6 ),
        .I4(\data_sram_addr[17]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[17]_INST_0_i_4 
       (.I0(exe_csr_data[17]),
        .I1(data2[17]),
        .I2(p_2_out_carry_n_6),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[18]_INST_0_i_2 
       (.I0(\data_sram_addr[18]_INST_0_i_3_n_0 ),
        .I1(alu_result0[18]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[19]_INST_0_i_2_n_5 ),
        .I4(\data_sram_addr[18]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[18]_INST_0_i_4 
       (.I0(exe_csr_data[18]),
        .I1(data2[18]),
        .I2(p_2_out_carry_n_5),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[19]_INST_0_i_2 
       (.I0(\data_sram_addr[19]_INST_0_i_4_n_0 ),
        .I1(alu_result0[19]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[19]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[19]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[19]_INST_0_i_4 
       (.I0(exe_csr_data[19]),
        .I1(data2[19]),
        .I2(p_2_out_carry_n_4),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[1]_INST_0_i_2 
       (.I0(exe_csr_data[1]),
        .I1(data2[1]),
        .I2(p_1_out__1_n_104),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[20]_INST_0_i_2 
       (.I0(\data_sram_addr[20]_INST_0_i_3_n_0 ),
        .I1(alu_result0[20]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[23]_INST_0_i_2_n_7 ),
        .I4(\data_sram_addr[20]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[20]_INST_0_i_4 
       (.I0(exe_csr_data[20]),
        .I1(data2[20]),
        .I2(p_2_out_carry__0_n_7),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[21]_INST_0_i_2 
       (.I0(\data_sram_addr[21]_INST_0_i_3_n_0 ),
        .I1(alu_result0[21]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[23]_INST_0_i_2_n_6 ),
        .I4(\data_sram_addr[21]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[21]_INST_0_i_4 
       (.I0(exe_csr_data[21]),
        .I1(data2[21]),
        .I2(p_2_out_carry__0_n_6),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[22]_INST_0_i_2 
       (.I0(\data_sram_addr[22]_INST_0_i_3_n_0 ),
        .I1(alu_result0[22]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[23]_INST_0_i_2_n_5 ),
        .I4(\data_sram_addr[22]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[22]_INST_0_i_4 
       (.I0(exe_csr_data[22]),
        .I1(data2[22]),
        .I2(p_2_out_carry__0_n_5),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[23]_INST_0_i_2 
       (.I0(\data_sram_addr[23]_INST_0_i_4_n_0 ),
        .I1(alu_result0[23]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[23]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[23]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[23]_INST_0_i_4 
       (.I0(exe_csr_data[23]),
        .I1(data2[23]),
        .I2(p_2_out_carry__0_n_4),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[24]_INST_0_i_2 
       (.I0(\data_sram_addr[24]_INST_0_i_3_n_0 ),
        .I1(alu_result0[24]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[27]_INST_0_i_2_n_7 ),
        .I4(\data_sram_addr[24]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[24]_INST_0_i_4 
       (.I0(exe_csr_data[24]),
        .I1(data2[24]),
        .I2(p_2_out_carry__1_n_7),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[25]_INST_0_i_2 
       (.I0(\data_sram_addr[25]_INST_0_i_3_n_0 ),
        .I1(alu_result0[25]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[27]_INST_0_i_2_n_6 ),
        .I4(\data_sram_addr[25]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[25]_INST_0_i_4 
       (.I0(exe_csr_data[25]),
        .I1(data2[25]),
        .I2(p_2_out_carry__1_n_6),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[26]_INST_0_i_2 
       (.I0(\data_sram_addr[26]_INST_0_i_3_n_0 ),
        .I1(alu_result0[26]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[27]_INST_0_i_2_n_5 ),
        .I4(\data_sram_addr[26]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[26]_INST_0_i_4 
       (.I0(exe_csr_data[26]),
        .I1(data2[26]),
        .I2(p_2_out_carry__1_n_5),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[27]_INST_0_i_2 
       (.I0(\data_sram_addr[27]_INST_0_i_4_n_0 ),
        .I1(alu_result0[27]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[27]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[27]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[27]_INST_0_i_4 
       (.I0(exe_csr_data[27]),
        .I1(data2[27]),
        .I2(p_2_out_carry__1_n_4),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[28]_INST_0_i_2 
       (.I0(\data_sram_addr[28]_INST_0_i_3_n_0 ),
        .I1(alu_result0[28]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[31]_INST_0_i_2_n_7 ),
        .I4(\data_sram_addr[28]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[28]_INST_0_i_4 
       (.I0(exe_csr_data[28]),
        .I1(data2[28]),
        .I2(p_2_out_carry__2_n_7),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[29]_INST_0_i_2 
       (.I0(\data_sram_addr[29]_INST_0_i_3_n_0 ),
        .I1(alu_result0[29]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[31]_INST_0_i_2_n_6 ),
        .I4(\data_sram_addr[29]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[29]_INST_0_i_4 
       (.I0(exe_csr_data[29]),
        .I1(data2[29]),
        .I2(p_2_out_carry__2_n_6),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[2]_INST_0_i_2 
       (.I0(\data_sram_addr[2]_INST_0_i_3_n_0 ),
        .I1(\exe_to_id_bus[2]_INST_0_i_5_n_0 ),
        .I2(exe_alu_op[11]),
        .I3(exe_alu_src2__63[2]),
        .I4(alu_result1),
        .I5(Q[51]),
        .O(\exe_to_id_bus[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[2]_INST_0_i_4 
       (.I0(exe_csr_data[2]),
        .I1(data2[2]),
        .I2(p_1_out__1_n_103),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \exe_to_id_bus[2]_INST_0_i_5 
       (.I0(\data_sram_addr[3]_INST_0_i_2_n_5 ),
        .I1(alu_result9__0),
        .I2(\data_sram_addr[3]_INST_0_i_16_n_0 ),
        .I3(exe_alu_src2),
        .I4(\data_sram_addr[2]_INST_0_i_5_n_0 ),
        .I5(alu_result1__0),
        .O(\exe_to_id_bus[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \exe_to_id_bus[2]_INST_0_i_6 
       (.I0(exe_alu_op[8]),
        .I1(\data_sram_addr[3]_INST_0_i_5_n_0 ),
        .I2(exe_alu_src2),
        .I3(exe_alu_src2__63[1]),
        .I4(\data_sram_addr[1]_INST_0_i_5_n_0 ),
        .O(alu_result1));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[30]_INST_0_i_2 
       (.I0(\data_sram_addr[30]_INST_0_i_5_n_0 ),
        .I1(alu_result0[30]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[31]_INST_0_i_2_n_5 ),
        .I4(\data_sram_addr[30]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[30]_INST_0_i_4 
       (.I0(exe_csr_data[30]),
        .I1(data2[30]),
        .I2(p_2_out_carry__2_n_5),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[30]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \exe_to_id_bus[30]_INST_0_i_5 
       (.I0(exe_alu_op[10]),
        .I1(exe_alu_op[9]),
        .I2(\data_sram_addr[29]_INST_0_i_7_n_0 ),
        .I3(exe_alu_src2),
        .I4(\exe_to_id_bus[30]_INST_0_i_6_n_0 ),
        .O(alu_result0[30]));
  LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
    \exe_to_id_bus[30]_INST_0_i_6 
       (.I0(exe_alu_src2__63[1]),
        .I1(exe_alu_src2__63[2]),
        .I2(exe_alu_src2__63[3]),
        .I3(exe_alu_op[10]),
        .I4(exe_alu_src2__63[4]),
        .I5(exe_alu_src1[31]),
        .O(\exe_to_id_bus[30]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \exe_to_id_bus[31]_INST_0_i_1 
       (.I0(Q[48]),
        .I1(Q[49]),
        .I2(sel0),
        .O(\exe_to_id_bus[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[31]_INST_0_i_3 
       (.I0(\data_sram_addr[31]_INST_0_i_4_n_0 ),
        .I1(alu_result0[31]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[31]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[31]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[31]_INST_0_i_5 
       (.I0(exe_csr_data[31]),
        .I1(data2[31]),
        .I2(p_2_out_carry__2_n_4),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \exe_to_id_bus[37]_INST_0_i_1 
       (.I0(Q[42]),
        .I1(Q[44]),
        .I2(Q[40]),
        .I3(Q[41]),
        .I4(Q[43]),
        .I5(Q[46]),
        .O(\exe_to_id_bus[37]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[3]_INST_0_i_2 
       (.I0(\data_sram_addr[3]_INST_0_i_4_n_0 ),
        .I1(alu_result0[3]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[3]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[3]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[3]_INST_0_i_4 
       (.I0(exe_csr_data[3]),
        .I1(data2[3]),
        .I2(p_1_out__1_n_102),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[4]_INST_0_i_2 
       (.I0(\data_sram_addr[4]_INST_0_i_3_n_0 ),
        .I1(alu_result0[4]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[7]_INST_0_i_2_n_7 ),
        .I4(\data_sram_addr[4]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[4]_INST_0_i_4 
       (.I0(exe_csr_data[4]),
        .I1(data2[4]),
        .I2(p_1_out__1_n_101),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[5]_INST_0_i_2 
       (.I0(\data_sram_addr[5]_INST_0_i_3_n_0 ),
        .I1(alu_result0[5]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[7]_INST_0_i_2_n_6 ),
        .I4(\data_sram_addr[5]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[5]_INST_0_i_4 
       (.I0(exe_csr_data[5]),
        .I1(data2[5]),
        .I2(p_1_out__1_n_100),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[6]_INST_0_i_2 
       (.I0(\data_sram_addr[6]_INST_0_i_3_n_0 ),
        .I1(alu_result0[6]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[7]_INST_0_i_2_n_5 ),
        .I4(\data_sram_addr[6]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[6]_INST_0_i_4 
       (.I0(exe_csr_data[6]),
        .I1(data2[6]),
        .I2(p_1_out__1_n_99),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[7]_INST_0_i_2 
       (.I0(\data_sram_addr[7]_INST_0_i_4_n_0 ),
        .I1(alu_result0[7]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[7]_INST_0_i_2_n_4 ),
        .I4(\data_sram_addr[7]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[7]_INST_0_i_4 
       (.I0(exe_csr_data[7]),
        .I1(data2[7]),
        .I2(p_1_out__1_n_98),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[8]_INST_0_i_2 
       (.I0(\data_sram_addr[8]_INST_0_i_3_n_0 ),
        .I1(alu_result0[8]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[11]_INST_0_i_2_n_7 ),
        .I4(\data_sram_addr[8]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[8]_INST_0_i_4 
       (.I0(exe_csr_data[8]),
        .I1(data2[8]),
        .I2(p_1_out__1_n_97),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \exe_to_id_bus[9]_INST_0_i_2 
       (.I0(\data_sram_addr[9]_INST_0_i_3_n_0 ),
        .I1(alu_result0[9]),
        .I2(alu_result9__0),
        .I3(\data_sram_addr[11]_INST_0_i_2_n_6 ),
        .I4(\data_sram_addr[9]_INST_0_i_1_n_0 ),
        .I5(Q[51]),
        .O(\exe_to_id_bus[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \exe_to_id_bus[9]_INST_0_i_4 
       (.I0(exe_csr_data[9]),
        .I1(data2[9]),
        .I2(p_1_out__1_n_96),
        .I3(sel0),
        .I4(Q[49]),
        .I5(Q[48]),
        .O(\exe_to_id_bus[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[100]_INST_0 
       (.I0(exe_rj_value[21]),
        .I1(exe_csr_data[21]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[21]),
        .O(exe_to_mem_bus[53]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[101]_INST_0 
       (.I0(exe_rj_value[22]),
        .I1(exe_csr_data[22]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[22]),
        .O(exe_to_mem_bus[54]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[102]_INST_0 
       (.I0(exe_rj_value[23]),
        .I1(exe_csr_data[23]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[23]),
        .O(exe_to_mem_bus[55]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[103]_INST_0 
       (.I0(exe_rj_value[24]),
        .I1(exe_csr_data[24]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[24]),
        .O(exe_to_mem_bus[56]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[104]_INST_0 
       (.I0(exe_rj_value[25]),
        .I1(exe_csr_data[25]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[25]),
        .O(exe_to_mem_bus[57]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[105]_INST_0 
       (.I0(exe_rj_value[26]),
        .I1(exe_csr_data[26]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[26]),
        .O(exe_to_mem_bus[58]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[106]_INST_0 
       (.I0(exe_rj_value[27]),
        .I1(exe_csr_data[27]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[27]),
        .O(exe_to_mem_bus[59]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[107]_INST_0 
       (.I0(exe_rj_value[28]),
        .I1(exe_csr_data[28]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[28]),
        .O(exe_to_mem_bus[60]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[108]_INST_0 
       (.I0(exe_rj_value[29]),
        .I1(exe_csr_data[29]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[29]),
        .O(exe_to_mem_bus[61]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[109]_INST_0 
       (.I0(exe_rj_value[30]),
        .I1(exe_csr_data[30]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[30]),
        .O(exe_to_mem_bus[62]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[110]_INST_0 
       (.I0(exe_rj_value[31]),
        .I1(exe_csr_data[31]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[31]),
        .O(exe_to_mem_bus[63]));
  LUT6 #(
    .INIT(64'hC0CEC0CEC0CE0000)) 
    \exe_to_mem_bus[135]_INST_0 
       (.I0(\exe_data_reg[139]_1 ),
        .I1(\exe_data_reg[139]_0 ),
        .I2(Q[53]),
        .I3(Q[52]),
        .I4(Q[45]),
        .I5(Q[47]),
        .O(exe_to_mem_bus[64]));
  LUT6 #(
    .INIT(64'hEEAEAAAEEEAEAAAA)) 
    \exe_to_mem_bus[77]_INST_0 
       (.I0(exe_excp),
        .I1(access_mem__0),
        .I2(Q[52]),
        .I3(Q[53]),
        .I4(\exe_data_reg[139]_0 ),
        .I5(\exe_data_reg[139]_1 ),
        .O(\exe_data_reg[160]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \exe_to_mem_bus[77]_INST_0_i_1 
       (.I0(Q[47]),
        .I1(Q[45]),
        .O(access_mem__0));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[79]_INST_0 
       (.I0(exe_rj_value[0]),
        .I1(exe_csr_data[0]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[32]),
        .O(exe_to_mem_bus[32]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[80]_INST_0 
       (.I0(exe_rj_value[1]),
        .I1(exe_csr_data[1]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[33]),
        .O(exe_to_mem_bus[33]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[81]_INST_0 
       (.I0(exe_rj_value[2]),
        .I1(exe_csr_data[2]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[34]),
        .O(exe_to_mem_bus[34]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[82]_INST_0 
       (.I0(exe_rj_value[3]),
        .I1(exe_csr_data[3]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[35]),
        .O(exe_to_mem_bus[35]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[83]_INST_0 
       (.I0(exe_rj_value[4]),
        .I1(exe_csr_data[4]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[36]),
        .O(exe_to_mem_bus[36]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[84]_INST_0 
       (.I0(exe_rj_value[5]),
        .I1(exe_csr_data[5]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[37]),
        .O(exe_to_mem_bus[37]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[85]_INST_0 
       (.I0(exe_rj_value[6]),
        .I1(exe_csr_data[6]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[38]),
        .O(exe_to_mem_bus[38]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[86]_INST_0 
       (.I0(exe_rj_value[7]),
        .I1(exe_csr_data[7]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(Q[39]),
        .O(exe_to_mem_bus[39]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[87]_INST_0 
       (.I0(exe_rj_value[8]),
        .I1(exe_csr_data[8]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[8]),
        .O(exe_to_mem_bus[40]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[88]_INST_0 
       (.I0(exe_rj_value[9]),
        .I1(exe_csr_data[9]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[9]),
        .O(exe_to_mem_bus[41]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[89]_INST_0 
       (.I0(exe_rj_value[10]),
        .I1(exe_csr_data[10]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[10]),
        .O(exe_to_mem_bus[42]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[90]_INST_0 
       (.I0(exe_rj_value[11]),
        .I1(exe_csr_data[11]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[11]),
        .O(exe_to_mem_bus[43]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[91]_INST_0 
       (.I0(exe_rj_value[12]),
        .I1(exe_csr_data[12]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[12]),
        .O(exe_to_mem_bus[44]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[92]_INST_0 
       (.I0(exe_rj_value[13]),
        .I1(exe_csr_data[13]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[13]),
        .O(exe_to_mem_bus[45]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[93]_INST_0 
       (.I0(exe_rj_value[14]),
        .I1(exe_csr_data[14]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[14]),
        .O(exe_to_mem_bus[46]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[94]_INST_0 
       (.I0(exe_rj_value[15]),
        .I1(exe_csr_data[15]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[15]),
        .O(exe_to_mem_bus[47]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[95]_INST_0 
       (.I0(exe_rj_value[16]),
        .I1(exe_csr_data[16]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[16]),
        .O(exe_to_mem_bus[48]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[96]_INST_0 
       (.I0(exe_rj_value[17]),
        .I1(exe_csr_data[17]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[17]),
        .O(exe_to_mem_bus[49]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[97]_INST_0 
       (.I0(exe_rj_value[18]),
        .I1(exe_csr_data[18]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[18]),
        .O(exe_to_mem_bus[50]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[98]_INST_0 
       (.I0(exe_rj_value[19]),
        .I1(exe_csr_data[19]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[19]),
        .O(exe_to_mem_bus[51]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exe_to_mem_bus[99]_INST_0 
       (.I0(exe_rj_value[20]),
        .I1(exe_csr_data[20]),
        .I2(\exe_data_reg_n_0_[210] ),
        .I3(exe_rkd_value[20]),
        .O(exe_to_mem_bus[52]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    exe_valid_i_2
       (.I0(refetch_flush),
        .I1(ertn_flush),
        .I2(excp_flush),
        .I3(resetn),
        .O(exe_valid0__0));
  FDRE exe_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_div_n_0),
        .Q(exe_valid),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,id_to_exe_bus[80:64]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,exe_rkd_value[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(exe_data0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out_OVERFLOW_UNCONNECTED),
        .P({p_1_out_n_58,p_1_out_n_59,p_1_out_n_60,p_1_out_n_61,p_1_out_n_62,p_1_out_n_63,p_1_out_n_64,p_1_out_n_65,p_1_out_n_66,p_1_out_n_67,p_1_out_n_68,p_1_out_n_69,p_1_out_n_70,p_1_out_n_71,p_1_out_n_72,p_1_out_n_73,p_1_out_n_74,p_1_out_n_75,p_1_out_n_76,p_1_out_n_77,p_1_out_n_78,p_1_out_n_79,p_1_out_n_80,p_1_out_n_81,p_1_out_n_82,p_1_out_n_83,p_1_out_n_84,p_1_out_n_85,p_1_out_n_86,p_1_out_n_87,p_1_out_n_88,p_0_in[33:17]}),
        .PATTERNBDETECT(NLW_p_1_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p_1_out_n_106,p_1_out_n_107,p_1_out_n_108,p_1_out_n_109,p_1_out_n_110,p_1_out_n_111,p_1_out_n_112,p_1_out_n_113,p_1_out_n_114,p_1_out_n_115,p_1_out_n_116,p_1_out_n_117,p_1_out_n_118,p_1_out_n_119,p_1_out_n_120,p_1_out_n_121,p_1_out_n_122,p_1_out_n_123,p_1_out_n_124,p_1_out_n_125,p_1_out_n_126,p_1_out_n_127,p_1_out_n_128,p_1_out_n_129,p_1_out_n_130,p_1_out_n_131,p_1_out_n_132,p_1_out_n_133,p_1_out_n_134,p_1_out_n_135,p_1_out_n_136,p_1_out_n_137,p_1_out_n_138,p_1_out_n_139,p_1_out_n_140,p_1_out_n_141,p_1_out_n_142,p_1_out_n_143,p_1_out_n_144,p_1_out_n_145,p_1_out_n_146,p_1_out_n_147,p_1_out_n_148,p_1_out_n_149,p_1_out_n_150,p_1_out_n_151,p_1_out_n_152,p_1_out_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out__0
       (.A({p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,p_1_out_i_1_n_0,exe_rkd_value[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_1_out__0_i_1_n_0,p_1_out__0_i_1_n_0,p_1_out__0_i_1_n_0,exe_rj_value[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out__0_OVERFLOW_UNCONNECTED),
        .P({NLW_p_1_out__0_P_UNCONNECTED[47:30],p_0_in[63:34]}),
        .PATTERNBDETECT(NLW_p_1_out__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({p_1_out_n_106,p_1_out_n_107,p_1_out_n_108,p_1_out_n_109,p_1_out_n_110,p_1_out_n_111,p_1_out_n_112,p_1_out_n_113,p_1_out_n_114,p_1_out_n_115,p_1_out_n_116,p_1_out_n_117,p_1_out_n_118,p_1_out_n_119,p_1_out_n_120,p_1_out_n_121,p_1_out_n_122,p_1_out_n_123,p_1_out_n_124,p_1_out_n_125,p_1_out_n_126,p_1_out_n_127,p_1_out_n_128,p_1_out_n_129,p_1_out_n_130,p_1_out_n_131,p_1_out_n_132,p_1_out_n_133,p_1_out_n_134,p_1_out_n_135,p_1_out_n_136,p_1_out_n_137,p_1_out_n_138,p_1_out_n_139,p_1_out_n_140,p_1_out_n_141,p_1_out_n_142,p_1_out_n_143,p_1_out_n_144,p_1_out_n_145,p_1_out_n_146,p_1_out_n_147,p_1_out_n_148,p_1_out_n_149,p_1_out_n_150,p_1_out_n_151,p_1_out_n_152,p_1_out_n_153}),
        .PCOUT(NLW_p_1_out__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    p_1_out__0_i_1
       (.I0(exe_mul_div_sign),
        .I1(exe_rj_value[31]),
        .O(p_1_out__0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,id_to_exe_bus[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,id_to_exe_bus[80:64]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(exe_data0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(exe_data0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out__1_OVERFLOW_UNCONNECTED),
        .P({p_1_out__1_n_58,p_1_out__1_n_59,p_1_out__1_n_60,p_1_out__1_n_61,p_1_out__1_n_62,p_1_out__1_n_63,p_1_out__1_n_64,p_1_out__1_n_65,p_1_out__1_n_66,p_1_out__1_n_67,p_1_out__1_n_68,p_1_out__1_n_69,p_1_out__1_n_70,p_1_out__1_n_71,p_1_out__1_n_72,p_1_out__1_n_73,p_1_out__1_n_74,p_1_out__1_n_75,p_1_out__1_n_76,p_1_out__1_n_77,p_1_out__1_n_78,p_1_out__1_n_79,p_1_out__1_n_80,p_1_out__1_n_81,p_1_out__1_n_82,p_1_out__1_n_83,p_1_out__1_n_84,p_1_out__1_n_85,p_1_out__1_n_86,p_1_out__1_n_87,p_1_out__1_n_88,p_1_out__1_n_89,p_1_out__1_n_90,p_1_out__1_n_91,p_1_out__1_n_92,p_1_out__1_n_93,p_1_out__1_n_94,p_1_out__1_n_95,p_1_out__1_n_96,p_1_out__1_n_97,p_1_out__1_n_98,p_1_out__1_n_99,p_1_out__1_n_100,p_1_out__1_n_101,p_1_out__1_n_102,p_1_out__1_n_103,p_1_out__1_n_104,p_1_out__1_n_105}),
        .PATTERNBDETECT(NLW_p_1_out__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p_1_out__1_n_106,p_1_out__1_n_107,p_1_out__1_n_108,p_1_out__1_n_109,p_1_out__1_n_110,p_1_out__1_n_111,p_1_out__1_n_112,p_1_out__1_n_113,p_1_out__1_n_114,p_1_out__1_n_115,p_1_out__1_n_116,p_1_out__1_n_117,p_1_out__1_n_118,p_1_out__1_n_119,p_1_out__1_n_120,p_1_out__1_n_121,p_1_out__1_n_122,p_1_out__1_n_123,p_1_out__1_n_124,p_1_out__1_n_125,p_1_out__1_n_126,p_1_out__1_n_127,p_1_out__1_n_128,p_1_out__1_n_129,p_1_out__1_n_130,p_1_out__1_n_131,p_1_out__1_n_132,p_1_out__1_n_133,p_1_out__1_n_134,p_1_out__1_n_135,p_1_out__1_n_136,p_1_out__1_n_137,p_1_out__1_n_138,p_1_out__1_n_139,p_1_out__1_n_140,p_1_out__1_n_141,p_1_out__1_n_142,p_1_out__1_n_143,p_1_out__1_n_144,p_1_out__1_n_145,p_1_out__1_n_146,p_1_out__1_n_147,p_1_out__1_n_148,p_1_out__1_n_149,p_1_out__1_n_150,p_1_out__1_n_151,p_1_out__1_n_152,p_1_out__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,id_to_exe_bus[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_1_out__0_i_1_n_0,p_1_out__0_i_1_n_0,p_1_out__0_i_1_n_0,exe_rj_value[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(exe_data0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out__2_OVERFLOW_UNCONNECTED),
        .P({NLW_p_1_out__2_P_UNCONNECTED[47],p_1_out__2_n_59,p_1_out__2_n_60,p_1_out__2_n_61,p_1_out__2_n_62,p_1_out__2_n_63,p_1_out__2_n_64,p_1_out__2_n_65,p_1_out__2_n_66,p_1_out__2_n_67,p_1_out__2_n_68,p_1_out__2_n_69,p_1_out__2_n_70,p_1_out__2_n_71,p_1_out__2_n_72,p_1_out__2_n_73,p_1_out__2_n_74,p_1_out__2_n_75,p_1_out__2_n_76,p_1_out__2_n_77,p_1_out__2_n_78,p_1_out__2_n_79,p_1_out__2_n_80,p_1_out__2_n_81,p_1_out__2_n_82,p_1_out__2_n_83,p_1_out__2_n_84,p_1_out__2_n_85,p_1_out__2_n_86,p_1_out__2_n_87,p_1_out__2_n_88,p_1_out__2_n_89,p_1_out__2_n_90,p_1_out__2_n_91,p_1_out__2_n_92,p_1_out__2_n_93,p_1_out__2_n_94,p_1_out__2_n_95,p_1_out__2_n_96,p_1_out__2_n_97,p_1_out__2_n_98,p_1_out__2_n_99,p_1_out__2_n_100,p_1_out__2_n_101,p_1_out__2_n_102,p_1_out__2_n_103,p_1_out__2_n_104,p_1_out__2_n_105}),
        .PATTERNBDETECT(NLW_p_1_out__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({p_1_out__1_n_106,p_1_out__1_n_107,p_1_out__1_n_108,p_1_out__1_n_109,p_1_out__1_n_110,p_1_out__1_n_111,p_1_out__1_n_112,p_1_out__1_n_113,p_1_out__1_n_114,p_1_out__1_n_115,p_1_out__1_n_116,p_1_out__1_n_117,p_1_out__1_n_118,p_1_out__1_n_119,p_1_out__1_n_120,p_1_out__1_n_121,p_1_out__1_n_122,p_1_out__1_n_123,p_1_out__1_n_124,p_1_out__1_n_125,p_1_out__1_n_126,p_1_out__1_n_127,p_1_out__1_n_128,p_1_out__1_n_129,p_1_out__1_n_130,p_1_out__1_n_131,p_1_out__1_n_132,p_1_out__1_n_133,p_1_out__1_n_134,p_1_out__1_n_135,p_1_out__1_n_136,p_1_out__1_n_137,p_1_out__1_n_138,p_1_out__1_n_139,p_1_out__1_n_140,p_1_out__1_n_141,p_1_out__1_n_142,p_1_out__1_n_143,p_1_out__1_n_144,p_1_out__1_n_145,p_1_out__1_n_146,p_1_out__1_n_147,p_1_out__1_n_148,p_1_out__1_n_149,p_1_out__1_n_150,p_1_out__1_n_151,p_1_out__1_n_152,p_1_out__1_n_153}),
        .PCOUT(NLW_p_1_out__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out__2_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    p_1_out_i_1
       (.I0(exe_mul_div_sign),
        .I1(exe_rkd_value[31]),
        .O(p_1_out_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry
       (.CI(1'b0),
        .CO({p_2_out_carry_n_0,p_2_out_carry_n_1,p_2_out_carry_n_2,p_2_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_103,p_1_out__2_n_104,p_1_out__2_n_105,1'b0}),
        .O({p_2_out_carry_n_4,p_2_out_carry_n_5,p_2_out_carry_n_6,p_2_out_carry_n_7}),
        .S({p_2_out_carry_i_1_n_0,p_2_out_carry_i_2_n_0,p_2_out_carry_i_3_n_0,p_1_out__1_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__0
       (.CI(p_2_out_carry_n_0),
        .CO({p_2_out_carry__0_n_0,p_2_out_carry__0_n_1,p_2_out_carry__0_n_2,p_2_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_99,p_1_out__2_n_100,p_1_out__2_n_101,p_1_out__2_n_102}),
        .O({p_2_out_carry__0_n_4,p_2_out_carry__0_n_5,p_2_out_carry__0_n_6,p_2_out_carry__0_n_7}),
        .S({p_2_out_carry__0_i_1_n_0,p_2_out_carry__0_i_2_n_0,p_2_out_carry__0_i_3_n_0,p_2_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__0_i_1
       (.I0(p_1_out__2_n_99),
        .I1(p_0_in[23]),
        .O(p_2_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__0_i_2
       (.I0(p_1_out__2_n_100),
        .I1(p_0_in[22]),
        .O(p_2_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__0_i_3
       (.I0(p_1_out__2_n_101),
        .I1(p_0_in[21]),
        .O(p_2_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__0_i_4
       (.I0(p_1_out__2_n_102),
        .I1(p_0_in[20]),
        .O(p_2_out_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__1
       (.CI(p_2_out_carry__0_n_0),
        .CO({p_2_out_carry__1_n_0,p_2_out_carry__1_n_1,p_2_out_carry__1_n_2,p_2_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_95,p_1_out__2_n_96,p_1_out__2_n_97,p_1_out__2_n_98}),
        .O({p_2_out_carry__1_n_4,p_2_out_carry__1_n_5,p_2_out_carry__1_n_6,p_2_out_carry__1_n_7}),
        .S({p_2_out_carry__1_i_1_n_0,p_2_out_carry__1_i_2_n_0,p_2_out_carry__1_i_3_n_0,p_2_out_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__10
       (.CI(p_2_out_carry__9_n_0),
        .CO({NLW_p_2_out_carry__10_CO_UNCONNECTED[3],p_2_out_carry__10_n_1,p_2_out_carry__10_n_2,p_2_out_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_out__2_n_60,p_1_out__2_n_61,p_1_out__2_n_62}),
        .O(data2[31:28]),
        .S({p_2_out_carry__10_i_1_n_0,p_2_out_carry__10_i_2_n_0,p_2_out_carry__10_i_3_n_0,p_2_out_carry__10_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__10_i_1
       (.I0(p_1_out__2_n_59),
        .I1(p_0_in[63]),
        .O(p_2_out_carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__10_i_2
       (.I0(p_1_out__2_n_60),
        .I1(p_0_in[62]),
        .O(p_2_out_carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__10_i_3
       (.I0(p_1_out__2_n_61),
        .I1(p_0_in[61]),
        .O(p_2_out_carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__10_i_4
       (.I0(p_1_out__2_n_62),
        .I1(p_0_in[60]),
        .O(p_2_out_carry__10_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__1_i_1
       (.I0(p_1_out__2_n_95),
        .I1(p_0_in[27]),
        .O(p_2_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__1_i_2
       (.I0(p_1_out__2_n_96),
        .I1(p_0_in[26]),
        .O(p_2_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__1_i_3
       (.I0(p_1_out__2_n_97),
        .I1(p_0_in[25]),
        .O(p_2_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__1_i_4
       (.I0(p_1_out__2_n_98),
        .I1(p_0_in[24]),
        .O(p_2_out_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__2
       (.CI(p_2_out_carry__1_n_0),
        .CO({p_2_out_carry__2_n_0,p_2_out_carry__2_n_1,p_2_out_carry__2_n_2,p_2_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_91,p_1_out__2_n_92,p_1_out__2_n_93,p_1_out__2_n_94}),
        .O({p_2_out_carry__2_n_4,p_2_out_carry__2_n_5,p_2_out_carry__2_n_6,p_2_out_carry__2_n_7}),
        .S({p_2_out_carry__2_i_1_n_0,p_2_out_carry__2_i_2_n_0,p_2_out_carry__2_i_3_n_0,p_2_out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__2_i_1
       (.I0(p_1_out__2_n_91),
        .I1(p_0_in[31]),
        .O(p_2_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__2_i_2
       (.I0(p_1_out__2_n_92),
        .I1(p_0_in[30]),
        .O(p_2_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__2_i_3
       (.I0(p_1_out__2_n_93),
        .I1(p_0_in[29]),
        .O(p_2_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__2_i_4
       (.I0(p_1_out__2_n_94),
        .I1(p_0_in[28]),
        .O(p_2_out_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__3
       (.CI(p_2_out_carry__2_n_0),
        .CO({p_2_out_carry__3_n_0,p_2_out_carry__3_n_1,p_2_out_carry__3_n_2,p_2_out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_87,p_1_out__2_n_88,p_1_out__2_n_89,p_1_out__2_n_90}),
        .O(data2[3:0]),
        .S({p_2_out_carry__3_i_1_n_0,p_2_out_carry__3_i_2_n_0,p_2_out_carry__3_i_3_n_0,p_2_out_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__3_i_1
       (.I0(p_1_out__2_n_87),
        .I1(p_0_in[35]),
        .O(p_2_out_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__3_i_2
       (.I0(p_1_out__2_n_88),
        .I1(p_0_in[34]),
        .O(p_2_out_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__3_i_3
       (.I0(p_1_out__2_n_89),
        .I1(p_0_in[33]),
        .O(p_2_out_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__3_i_4
       (.I0(p_1_out__2_n_90),
        .I1(p_0_in[32]),
        .O(p_2_out_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__4
       (.CI(p_2_out_carry__3_n_0),
        .CO({p_2_out_carry__4_n_0,p_2_out_carry__4_n_1,p_2_out_carry__4_n_2,p_2_out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_83,p_1_out__2_n_84,p_1_out__2_n_85,p_1_out__2_n_86}),
        .O(data2[7:4]),
        .S({p_2_out_carry__4_i_1_n_0,p_2_out_carry__4_i_2_n_0,p_2_out_carry__4_i_3_n_0,p_2_out_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__4_i_1
       (.I0(p_1_out__2_n_83),
        .I1(p_0_in[39]),
        .O(p_2_out_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__4_i_2
       (.I0(p_1_out__2_n_84),
        .I1(p_0_in[38]),
        .O(p_2_out_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__4_i_3
       (.I0(p_1_out__2_n_85),
        .I1(p_0_in[37]),
        .O(p_2_out_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__4_i_4
       (.I0(p_1_out__2_n_86),
        .I1(p_0_in[36]),
        .O(p_2_out_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__5
       (.CI(p_2_out_carry__4_n_0),
        .CO({p_2_out_carry__5_n_0,p_2_out_carry__5_n_1,p_2_out_carry__5_n_2,p_2_out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_79,p_1_out__2_n_80,p_1_out__2_n_81,p_1_out__2_n_82}),
        .O(data2[11:8]),
        .S({p_2_out_carry__5_i_1_n_0,p_2_out_carry__5_i_2_n_0,p_2_out_carry__5_i_3_n_0,p_2_out_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__5_i_1
       (.I0(p_1_out__2_n_79),
        .I1(p_0_in[43]),
        .O(p_2_out_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__5_i_2
       (.I0(p_1_out__2_n_80),
        .I1(p_0_in[42]),
        .O(p_2_out_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__5_i_3
       (.I0(p_1_out__2_n_81),
        .I1(p_0_in[41]),
        .O(p_2_out_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__5_i_4
       (.I0(p_1_out__2_n_82),
        .I1(p_0_in[40]),
        .O(p_2_out_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__6
       (.CI(p_2_out_carry__5_n_0),
        .CO({p_2_out_carry__6_n_0,p_2_out_carry__6_n_1,p_2_out_carry__6_n_2,p_2_out_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_75,p_1_out__2_n_76,p_1_out__2_n_77,p_1_out__2_n_78}),
        .O(data2[15:12]),
        .S({p_2_out_carry__6_i_1_n_0,p_2_out_carry__6_i_2_n_0,p_2_out_carry__6_i_3_n_0,p_2_out_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__6_i_1
       (.I0(p_1_out__2_n_75),
        .I1(p_0_in[47]),
        .O(p_2_out_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__6_i_2
       (.I0(p_1_out__2_n_76),
        .I1(p_0_in[46]),
        .O(p_2_out_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__6_i_3
       (.I0(p_1_out__2_n_77),
        .I1(p_0_in[45]),
        .O(p_2_out_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__6_i_4
       (.I0(p_1_out__2_n_78),
        .I1(p_0_in[44]),
        .O(p_2_out_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__7
       (.CI(p_2_out_carry__6_n_0),
        .CO({p_2_out_carry__7_n_0,p_2_out_carry__7_n_1,p_2_out_carry__7_n_2,p_2_out_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_71,p_1_out__2_n_72,p_1_out__2_n_73,p_1_out__2_n_74}),
        .O(data2[19:16]),
        .S({p_2_out_carry__7_i_1_n_0,p_2_out_carry__7_i_2_n_0,p_2_out_carry__7_i_3_n_0,p_2_out_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__7_i_1
       (.I0(p_1_out__2_n_71),
        .I1(p_0_in[51]),
        .O(p_2_out_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__7_i_2
       (.I0(p_1_out__2_n_72),
        .I1(p_0_in[50]),
        .O(p_2_out_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__7_i_3
       (.I0(p_1_out__2_n_73),
        .I1(p_0_in[49]),
        .O(p_2_out_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__7_i_4
       (.I0(p_1_out__2_n_74),
        .I1(p_0_in[48]),
        .O(p_2_out_carry__7_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__8
       (.CI(p_2_out_carry__7_n_0),
        .CO({p_2_out_carry__8_n_0,p_2_out_carry__8_n_1,p_2_out_carry__8_n_2,p_2_out_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_67,p_1_out__2_n_68,p_1_out__2_n_69,p_1_out__2_n_70}),
        .O(data2[23:20]),
        .S({p_2_out_carry__8_i_1_n_0,p_2_out_carry__8_i_2_n_0,p_2_out_carry__8_i_3_n_0,p_2_out_carry__8_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__8_i_1
       (.I0(p_1_out__2_n_67),
        .I1(p_0_in[55]),
        .O(p_2_out_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__8_i_2
       (.I0(p_1_out__2_n_68),
        .I1(p_0_in[54]),
        .O(p_2_out_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__8_i_3
       (.I0(p_1_out__2_n_69),
        .I1(p_0_in[53]),
        .O(p_2_out_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__8_i_4
       (.I0(p_1_out__2_n_70),
        .I1(p_0_in[52]),
        .O(p_2_out_carry__8_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__9
       (.CI(p_2_out_carry__8_n_0),
        .CO({p_2_out_carry__9_n_0,p_2_out_carry__9_n_1,p_2_out_carry__9_n_2,p_2_out_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out__2_n_63,p_1_out__2_n_64,p_1_out__2_n_65,p_1_out__2_n_66}),
        .O(data2[27:24]),
        .S({p_2_out_carry__9_i_1_n_0,p_2_out_carry__9_i_2_n_0,p_2_out_carry__9_i_3_n_0,p_2_out_carry__9_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__9_i_1
       (.I0(p_1_out__2_n_63),
        .I1(p_0_in[59]),
        .O(p_2_out_carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__9_i_2
       (.I0(p_1_out__2_n_64),
        .I1(p_0_in[58]),
        .O(p_2_out_carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__9_i_3
       (.I0(p_1_out__2_n_65),
        .I1(p_0_in[57]),
        .O(p_2_out_carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry__9_i_4
       (.I0(p_1_out__2_n_66),
        .I1(p_0_in[56]),
        .O(p_2_out_carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry_i_1
       (.I0(p_1_out__2_n_103),
        .I1(p_0_in[19]),
        .O(p_2_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry_i_2
       (.I0(p_1_out__2_n_104),
        .I1(p_0_in[18]),
        .O(p_2_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_2_out_carry_i_3
       (.I0(p_1_out__2_n_105),
        .I1(p_0_in[17]),
        .O(p_2_out_carry_i_3_n_0));
  mycpu_top_block_exe_stage_0_0_alu u_alu
       (.Q({exe_alu_op[3:1],\exe_data_reg_n_0_[137] ,\exe_data_reg_n_0_[136] ,\exe_data_reg_n_0_[135] ,\exe_data_reg_n_0_[127] ,\exe_data_reg_n_0_[126] ,\exe_data_reg_n_0_[125] ,\exe_data_reg_n_0_[124] ,\exe_data_reg_n_0_[123] ,\exe_data_reg_n_0_[122] ,\exe_data_reg_n_0_[121] ,\exe_data_reg_n_0_[120] ,\exe_data_reg_n_0_[119] ,\exe_data_reg_n_0_[118] ,\exe_data_reg_n_0_[117] ,\exe_data_reg_n_0_[116] ,\exe_data_reg_n_0_[115] ,\exe_data_reg_n_0_[114] ,\exe_data_reg_n_0_[113] ,\exe_data_reg_n_0_[112] ,\exe_data_reg_n_0_[111] ,\exe_data_reg_n_0_[110] ,\exe_data_reg_n_0_[109] ,\exe_data_reg_n_0_[108] ,\exe_data_reg_n_0_[107] ,\exe_data_reg_n_0_[106] ,\exe_data_reg_n_0_[105] ,\exe_data_reg_n_0_[104] ,\exe_data_reg_n_0_[103] ,\exe_data_reg_n_0_[102] ,\exe_data_reg_n_0_[101] ,exe_rj_value[4:0],exe_rkd_value,Q[39:37],Q[4:0]}),
        .S({u_alu_n_0,u_alu_n_1,u_alu_n_2,u_alu_n_3}),
        .adder_cin(adder_cin),
        .exe_alu_src1(exe_alu_src1[31:5]),
        .exe_alu_src2__63(exe_alu_src2__63[4:1]),
        .\exe_data_reg[103] ({u_alu_n_4,u_alu_n_5,u_alu_n_6,u_alu_n_7}),
        .\exe_data_reg[107] ({u_alu_n_8,u_alu_n_9,u_alu_n_10,u_alu_n_11}),
        .\exe_data_reg[111] ({u_alu_n_12,u_alu_n_13,u_alu_n_14,u_alu_n_15}),
        .\exe_data_reg[115] ({u_alu_n_16,u_alu_n_17,u_alu_n_18,u_alu_n_19}),
        .\exe_data_reg[119] ({u_alu_n_20,u_alu_n_21,u_alu_n_22,u_alu_n_23}),
        .\exe_data_reg[123] ({u_alu_n_24,u_alu_n_25,u_alu_n_26,u_alu_n_27}),
        .\exe_data_reg[127] ({u_alu_n_28,u_alu_n_29,u_alu_n_30,u_alu_n_31}));
  mycpu_top_block_exe_stage_0_0_div u_div
       (.Q({sel0,Q[51:48],exe_mul_div_sign,Q[47],exe_rj_value,exe_rkd_value,Q[39:32]}),
        .clk(clk),
        .exe_allowin(exe_allowin),
        .exe_allowin_0(\exe_data_reg[160]_0 ),
        .exe_data0(exe_data0),
        .exe_to_id_bus(exe_to_id_bus),
        .\exe_to_id_bus[0]_0 (\exe_data_reg[139]_0 ),
        .\exe_to_id_bus[10] (\exe_to_id_bus[10]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[10]_0 (\exe_to_id_bus[10]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[11] (\exe_to_id_bus[11]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[11]_0 (\exe_to_id_bus[11]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[12] (\exe_to_id_bus[12]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[12]_0 (\exe_to_id_bus[12]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[13] (\exe_to_id_bus[13]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[13]_0 (\exe_to_id_bus[13]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[14] (\exe_to_id_bus[14]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[14]_0 (\exe_to_id_bus[14]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[15] (\exe_to_id_bus[15]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[15]_0 (\exe_to_id_bus[15]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[16] (\exe_to_id_bus[16]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[16]_0 (\exe_to_id_bus[16]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[17] (\exe_to_id_bus[17]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[17]_0 (\exe_to_id_bus[17]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[18] (\exe_to_id_bus[18]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[18]_0 (\exe_to_id_bus[18]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[19] (\exe_to_id_bus[19]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[19]_0 (\exe_to_id_bus[19]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[1]_0 (\exe_data_reg[139]_1 ),
        .\exe_to_id_bus[20] (\exe_to_id_bus[20]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[20]_0 (\exe_to_id_bus[20]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[21] (\exe_to_id_bus[21]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[21]_0 (\exe_to_id_bus[21]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[22] (\exe_to_id_bus[22]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[22]_0 (\exe_to_id_bus[22]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[23] (\exe_to_id_bus[23]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[23]_0 (\exe_to_id_bus[23]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[24] (\exe_to_id_bus[24]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[24]_0 (\exe_to_id_bus[24]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[25] (\exe_to_id_bus[25]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[25]_0 (\exe_to_id_bus[25]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[26] (\exe_to_id_bus[26]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[26]_0 (\exe_to_id_bus[26]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[27] (\exe_to_id_bus[27]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[27]_0 (\exe_to_id_bus[27]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[28] (\exe_to_id_bus[28]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[28]_0 (\exe_to_id_bus[28]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[29] (\exe_to_id_bus[29]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[29]_0 (\exe_to_id_bus[29]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[2] (\exe_to_id_bus[31]_INST_0_i_1_n_0 ),
        .\exe_to_id_bus[2]_0 (\exe_to_id_bus[2]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[2]_1 (\exe_to_id_bus[2]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[30] (\exe_to_id_bus[30]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[30]_0 (\exe_to_id_bus[30]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[31] (\exe_to_id_bus[31]_INST_0_i_3_n_0 ),
        .\exe_to_id_bus[31]_0 (\exe_to_id_bus[31]_INST_0_i_5_n_0 ),
        .\exe_to_id_bus[37] (\exe_to_id_bus[37]_INST_0_i_1_n_0 ),
        .\exe_to_id_bus[3] (\exe_to_id_bus[3]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[3]_0 (\exe_to_id_bus[3]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[4] (\exe_to_id_bus[4]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[4]_0 (\exe_to_id_bus[4]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[5] (\exe_to_id_bus[5]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[5]_0 (\exe_to_id_bus[5]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[6] (\exe_to_id_bus[6]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[6]_0 (\exe_to_id_bus[6]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[7] (\exe_to_id_bus[7]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[7]_0 (\exe_to_id_bus[7]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[8] (\exe_to_id_bus[8]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[8]_0 (\exe_to_id_bus[8]_INST_0_i_4_n_0 ),
        .\exe_to_id_bus[9] (\exe_to_id_bus[9]_INST_0_i_2_n_0 ),
        .\exe_to_id_bus[9]_0 (\exe_to_id_bus[9]_INST_0_i_4_n_0 ),
        .exe_to_id_bus_0_sp_1(\exe_to_id_bus[0]_INST_0_i_2_n_0 ),
        .exe_to_id_bus_1_sp_1(\exe_to_id_bus[1]_INST_0_i_2_n_0 ),
        .exe_to_mem_bus(exe_to_mem_bus[31:0]),
        .exe_to_mem_valid(exe_to_mem_valid),
        .exe_valid(exe_valid),
        .exe_valid0__0(exe_valid0__0),
        .exe_valid_reg(u_div_n_0),
        .id_to_exe_valid(id_to_exe_valid),
        .mem_allowin(mem_allowin),
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
