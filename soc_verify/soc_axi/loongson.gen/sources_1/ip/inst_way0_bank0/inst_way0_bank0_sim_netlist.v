// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_way0_bank0 -prefix
//               inst_way0_bank0_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_way0_bank0
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
  inst_way0_bank0_blk_mem_gen_v8_4_7 U0
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
