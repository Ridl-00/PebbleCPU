// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:26:34 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top tagv_way0 -prefix
//               tagv_way0_ tagv_way1_sim_netlist.v
// Design      : tagv_way1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_way1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module tagv_way0
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
  tagv_way0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19968)
`pragma protect data_block
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
wN41wi7Yn3dndleg6bwGiTQT
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
