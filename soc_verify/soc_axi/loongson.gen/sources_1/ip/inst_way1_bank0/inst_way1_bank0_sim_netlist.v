// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_way1_bank0 -prefix
//               inst_way1_bank0_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_way1_bank0
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
  inst_way1_bank0_blk_mem_gen_v8_4_7 U0
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
