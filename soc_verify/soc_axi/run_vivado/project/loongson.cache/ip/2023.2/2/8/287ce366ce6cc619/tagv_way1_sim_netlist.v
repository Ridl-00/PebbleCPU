// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:26:34 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tagv_way1_sim_netlist.v
// Design      : tagv_way1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_way1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20320)
`pragma protect data_block
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
TleYQOiK2DKUhIcR1pkfgPkr0uvENmiJPUDxSA==
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
