// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:26:34 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_tagv_way0 -prefix
//               inst_tagv_way0_ tagv_way1_sim_netlist.v
// Design      : tagv_way1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_way1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_tagv_way0
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
  inst_tagv_way0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20032)
`pragma protect data_block
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
dyzFaUV/OI92XcLlspcmTAsfaSsVEeEEKA==
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
