// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Nov 24 22:21:48 2024
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_ram_sim_netlist.v
// Design      : inst_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_ram,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "inst_ram.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16384)
`pragma protect data_block
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
OBF0883eD+9/nlLBHxOtX8cvTdtXHrkCew==
`pragma protect end_protected
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
