// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:26:34 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_tagv_way1 -prefix
//               inst_tagv_way1_ tagv_way1_sim_netlist.v
// Design      : tagv_way1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_way1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_tagv_way1
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
  inst_tagv_way1_blk_mem_gen_v8_4_7 U0
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
nQpjqQPei1e2VwDFpxvKlyUojtJ+7jR4nw==
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
