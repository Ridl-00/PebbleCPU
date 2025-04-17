// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 17 17:57:40 2025
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
    debug_wb_pc,
    debug_wb_rf_we,
    debug_wb_rf_wnum,
    debug_wb_rf_wdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output wb_allowin;
  input mem_to_wb_valid;
  input [69:0]mem_to_wb_bus;
  output [64:0]wb_to_id_bus;
  output [31:0]debug_wb_pc;
  output [3:0]debug_wb_rf_we;
  output [4:0]debug_wb_rf_wnum;
  output [31:0]debug_wb_rf_wdata;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [31:0]debug_wb_pc;
  wire [31:0]debug_wb_rf_wdata;
  wire [3:3]\^debug_wb_rf_we ;
  wire [4:0]debug_wb_rf_wnum;
  wire [69:0]mem_to_wb_bus;
  wire mem_to_wb_valid;
  wire resetn;
  wire [37:37]\^wb_to_id_bus ;

  assign debug_wb_rf_we[3] = \^debug_wb_rf_we [3];
  assign debug_wb_rf_we[2] = \^debug_wb_rf_we [3];
  assign debug_wb_rf_we[1] = \^debug_wb_rf_we [3];
  assign debug_wb_rf_we[0] = \^debug_wb_rf_we [3];
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
       (.Q({\^wb_to_id_bus ,debug_wb_rf_wnum,debug_wb_rf_wdata,debug_wb_pc}),
        .clk(clk),
        .debug_wb_rf_we(\^debug_wb_rf_we ),
        .mem_to_wb_bus(mem_to_wb_bus),
        .mem_to_wb_valid(mem_to_wb_valid),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "wb_stage" *) 
module mycpu_top_block_wb_stage_0_0_wb_stage
   (Q,
    debug_wb_rf_we,
    mem_to_wb_valid,
    resetn,
    mem_to_wb_bus,
    clk);
  output [69:0]Q;
  output [0:0]debug_wb_rf_we;
  input mem_to_wb_valid;
  input resetn;
  input [69:0]mem_to_wb_bus;
  input clk;

  wire [69:0]Q;
  wire clk;
  wire [0:0]debug_wb_rf_we;
  wire [69:0]mem_to_wb_bus;
  wire mem_to_wb_valid;
  wire resetn;
  wire wb_valid;
  wire wb_valid_i_1_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    \debug_wb_rf_we[0]_INST_0 
       (.I0(Q[69]),
        .I1(wb_valid),
        .O(debug_wb_rf_we));
  FDRE \wb_data_reg[0] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \wb_data_reg[10] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \wb_data_reg[11] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \wb_data_reg[12] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \wb_data_reg[13] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \wb_data_reg[14] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \wb_data_reg[15] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[15]),
        .Q(Q[15]),
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
        .Q(Q[69]),
        .R(1'b0));
  FDRE \wb_data_reg[6] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \wb_data_reg[7] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \wb_data_reg[8] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \wb_data_reg[9] 
       (.C(clk),
        .CE(mem_to_wb_valid),
        .D(mem_to_wb_bus[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    wb_valid_i_1
       (.I0(mem_to_wb_valid),
        .I1(resetn),
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
