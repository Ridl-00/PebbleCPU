// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_way0_bank1 -prefix
//               inst_way0_bank1_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_way0_bank1
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
  inst_way0_bank1_blk_mem_gen_v8_4_7 U0
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
