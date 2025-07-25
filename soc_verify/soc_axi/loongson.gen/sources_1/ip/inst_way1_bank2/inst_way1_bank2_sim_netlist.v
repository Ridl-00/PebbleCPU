// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_way1_bank2 -prefix
//               inst_way1_bank2_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_way1_bank2
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
  inst_way1_bank2_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
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
