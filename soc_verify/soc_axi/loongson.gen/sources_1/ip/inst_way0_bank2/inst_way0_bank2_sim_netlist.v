// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_way0_bank2 -prefix
//               inst_way0_bank2_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_way0_bank2
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
  inst_way0_bank2_blk_mem_gen_v8_4_7 U0
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
