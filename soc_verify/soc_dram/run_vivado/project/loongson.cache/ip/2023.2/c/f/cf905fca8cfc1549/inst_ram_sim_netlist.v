// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Dec  1 15:02:45 2024
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
kTZkbVaxTq6orDE9ZAOvpUeZQVR9D4nWyQ==
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
