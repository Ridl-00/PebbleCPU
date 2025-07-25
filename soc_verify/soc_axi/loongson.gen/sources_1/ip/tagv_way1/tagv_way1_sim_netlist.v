// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:26:35 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/loongteam/mycpu_env_try/soc_verify/soc_axi/loongson.gen/sources_1/ip/tagv_way1/tagv_way1_sim_netlist.v
// Design      : tagv_way1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_way1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module tagv_way1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [20:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [20:0]dina;
  wire [20:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [20:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.08085 mW" *) 
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
  (* C_INIT_FILE = "tagv_way1.mem" *) 
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
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tagv_way1_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[20:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20256)
`pragma protect data_block
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
aVhjSdct+Z4jpqQ+o7nLYgJQMEm+
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
