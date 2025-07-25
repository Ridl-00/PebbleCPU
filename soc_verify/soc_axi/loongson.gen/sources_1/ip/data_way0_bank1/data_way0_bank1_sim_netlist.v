// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top data_way0_bank1 -prefix
//               data_way0_bank1_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way0_bank1
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
  data_way0_bank1_blk_mem_gen_v8_4_7 U0
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
