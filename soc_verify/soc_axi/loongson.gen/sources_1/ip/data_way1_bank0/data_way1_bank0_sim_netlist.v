// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top data_way1_bank0 -prefix
//               data_way1_bank0_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way1_bank0
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
  data_way1_bank0_blk_mem_gen_v8_4_7 U0
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
dekPAqpuLdJDmTpxifjbi+rBSkDgSw4YNo3rVo056kJLmM8fRJJ/ZPnhaAUhj3dr3AXa9Pbb7ras
5RukJBNNpIxizhuXP+7UzqOfY2Zf9Cx7XajDEsrF33VfPydz+GaijQSM32M5hlolC7r3lvQcmz0w
ejT1/99dBwWPbS9U8npDKq5SjtFLK2godlSfqra2lUAZB5y4pS42ynfW6h95bLRyGnpgOOLsdPMS
dSwoGd0MTLkpv8a2WcT721YiqHEyYTvJ0r57Nk2otbGFqyGrBaX3cbmdO+ZJ9/30DQBi/LT1LqC7
0i6V3tBNHvjyYLof8smqKlLmhi9iBDXZfjiE7a+A0zdV3zy/eLRsK9ZbBTqmHVTBvunPMrAq+DoW
EzCtGZwVSNWbveOZzDdsmgSL4k/MqgiL0bAMs9munIC/KFl3NSM17qP3LyyUI4chDWhrumFBBNWd
1SdoH/gqfnN5ezuvpdEqiyr4GE6x7g+IOVlf+ycMyV/JJxG6IuMXMMuDWtqTtxWRGVN1sXpkUZG5
uHBP70113IhepvfY6T5/neC9ONKNQNKY1NO6LnGTkcPk0cdOmzkjo0Fdjn3lPGrPJEORrp33we2Z
kpfHAD+Kr1OsLIuyVtcxW9cqxQdspeTsgb1RQcYtmPzDOEJ0419/PwbbWBmtiMtCFP3rAJhVDgtQ
T96iLv7uSBCSHk/W9Z8qpXmBm+d6zRNMG/13MN2qwU5pgIcvWOUYmdAECe1Hpf/Gqk9pqz4mFhou
3FKjJqlrk+qQqy+KnQoPjWvbWIqjVXoROstye1aeF901sQhuIgPoee1gDA6LLcove2pNM52Y4GCm
nOe5Se4qc4BOaApFsnPCjkUh8a4Bzr4N3csG3PI/5+B2+rdZEX6MMIiYzKpOQf0lOcozhFCN1BjO
w1UC4znZYvgT/knklBZ1Dekt55IvVJm4B6GpQMjKVDqYqVarne5IiR5SNB+ILFVaiQmORWAaLW8q
G1ej+gGCZaHM6y65qq7OVk7u/tJF6d48hh3ObiX/VW8ykJENFEkEdQBO1fZOY6HrrSKf18KKJ1ZC
yvc/wpUXeoYaSK/TU0r4j+kUaLNbbH2Iju15MIojzQKIBNgOXCYhwuSsdNps0GhSsO3afwJLZxI0
RNyh9F6+Th1TXTnHujCuxtifC7NrdMxiihPFef6r3CqVsuCNsrRBSYX+HJL4RraAJakTdwUFrlDR
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
