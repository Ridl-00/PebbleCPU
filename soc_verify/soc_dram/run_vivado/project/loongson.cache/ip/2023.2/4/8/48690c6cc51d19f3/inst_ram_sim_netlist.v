// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Dec  1 13:09:00 2024
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
Cq13gALCmU/b/kesOO0PScm63xckfnaEtw==
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
