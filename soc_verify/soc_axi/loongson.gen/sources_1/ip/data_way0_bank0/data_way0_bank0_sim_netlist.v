// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top data_way0_bank0 -prefix
//               data_way0_bank0_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way0_bank0
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
  data_way0_bank0_blk_mem_gen_v8_4_7 U0
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
