// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Nov 17 18:44:43 2024
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
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
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
5yHfP7zXXsxo6awjEibYEjPlBDhot81hVQ==
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
