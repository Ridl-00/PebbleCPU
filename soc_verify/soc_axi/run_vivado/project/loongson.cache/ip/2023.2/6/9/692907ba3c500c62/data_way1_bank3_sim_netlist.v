// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_way1_bank3.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
`pragma protect data_block
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
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
