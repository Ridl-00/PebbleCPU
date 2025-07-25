// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top data_way0_bank2 -prefix
//               data_way0_bank2_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way0_bank2
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
  data_way0_bank2_blk_mem_gen_v8_4_7 U0
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
WFjzEsB6IOuc+px2q742/qfESAZOvV8aVHshNdLtjJvABZ/6AeWBKU7L2bkkQJ0h7SGUXb/UIiOd
xcJRP+eKV4eEAj977+VIgmlTFhmvnc+XUX1hd1W/AsFzmoDDd3yVZJD6Rv0U9vmrW96/nxZnTsiD
uxBG08W/Dl5C02ADmO9E9R70ILKlWUJPgrc5Eehscjsd7aEz0Xx7U9EypkwWgTBOXnkjG024t/AM
1lYlu6GZdJ9pb24jmQXjkRe8AJSdRHfetjmnjXxrDMFLYgCa0gxmKMFfTcqkmtOntUxYDPLJIE5Q
4aT7ZrYNc7gs8Kd2IaIIO397CVkQpkTgDfBQqfGv6adZoEh23+g++AWunynnNfG7jjZtY7tq/plS
jkoScBDcPW7wwQ971HK3IoFpSYgsL0ix0D2dPTK/c2+eUg0cwt2gVYGJP9UIRJnRNRhe3ayqd9Tp
V23iBWIxMN7FUqpHpiF34+SiMddaqnormGomkrnIyD5ynQXjDISu82ann6JPqgdnQBfu/FOyyPJG
S65AgVncA+RZSMisfWTa4QZ1q/xFbv0bAe3RbM/ddYelea5jJcZVe9BGONB0n/ux8sHjo995LhGP
CGbSlYD8MNAq1f3wUSjyEScXKbRc4I8PlF1RiKEhMkj7XpSw382HkKznVJyS0yNlp/+U2KGROH/d
6AfdEkHu8BGWWl6voKYDjS39GZx3sYkygP+OQuh0xO+WA5eAw1+4BWq3aldtUM8noW7bJ312X8YI
HOtIWj5Q7lrzAgw8lxDT1VmKvmg645FJZBvgmXY60lH+XEJ+yIIvzXnMqkBhTo7+wm4OZaZ1Tp23
LKrYmHscroyWRXBN9o7o127iUpB25wmlcT9FgTuDzRF3GVyOmXFp+ewzvCl0UhWa1HMoQzoJZCGB
KgNYAHTf4mjnHPIrcSCIwYJ5CqbX73pKBQw+bWhEq2z737cJKOLS1AH3PhKSfjfEWGzbKmRs4GxN
sIv7ehnJoCmYgWK5OrIcPGC6Vp27GSlpcJGBuk13l6pB7jdZvHwHf2lSAea6VnywjFEimJgqas63
zZZaRGYDIP9mdAi/X+4qEdRLWLPuATVJ2nRy4/za5iVdQ7yc/+ShRYE0xCid9BNg1JwRU8Q2J8GO
cU87BT3j0L4gSD7vsBoufIixtKHjVlXMDqj66wsNOl9PIKru0M3qJZiAG24VR914Y2kwJ2IZ6SeF
7XDz8oZ1mJ797y0lIsC12hLiztAfE//HMUJgwBIzricaN+SsXsLx1XE4q7wLMW1wgZXaEd05rh/z
vHqz3zDVYzlvnBy2nNfm7Exo6RJW9z5rzOfQNnm77FqswrpFh9WX53msMySNMUxRwYaV4a+mvXn0
871WJ38EFZbuGRLZEYV2+QQ6Svh7FykIg2cwjd+aBIqXOsKqjKajBauhVMWCwYcM0a7RZYqVTkYX
y2yAE048TmOY16O7+bTnqnnaK8vJ1xnbGKQXKiBVcHTVh/idRUImAycr6gCKLCN4e7PBhaOQ7eFl
FIAByotKE6H3/KsZXAEE6xvYnzAogJUp36RxdOK74KyCc23bpc8Fx2ly74DoYj1InHGQwAZVYTvn
AO0oo5h+7RPxY5mU+oel2Rx3oTuRbZmVqT/01u8pqUl3F6p5AjB6ERkRlCEz0mKUCsPuCSp4lf4f
WyUaSYtm3lmkIKH0dEO1reL+zWEHkfvdWOdFUo9vNtkf6WuKBHdb0TsEXvfn7xe9LKjvm+8kWGwN
KSFFFQktmCBwnfEgGO00qGXGR9MAugrTKR4QUc0VDSQphp0cuzhLcLQPh8pX3YsK9+DGb3ETTpmg
LyOj1tW8xEA1YnRgRAjJHWzsJngMYCKvAXr7WiuTVtYN45qaKX4VGLvmNQk7zPQi8CeVUyELgYYi
snigM11wU/inWG90msyj1Y62wVQ7Tyo4x0gHOV7FgYsNiaK0MQBZi1q46RU7C9/YYCVkVL+PcR5R
GIOPUIB9E3pbonWVlzRq+jAvmnoAqFt0aMwQM7TxqFzU02G5xgZ7CF0L+Hg18qWsUBLeUyAabPVt
Nt+iM/xOdvn//35YQRZb0bqnUr1cebN7FhBPH3MtrK/YoCwt0810oPP4WAWST37iimHz0P++HeZx
T1zY4hx1y5k7EHgdl/9XX3RzBQa+Cg7j0EIaZVpfhEaje/O6XTzCwAM7ufHhvLvZPuNNTu2+i8a2
nYi29nQ7eM+jQOgXX/WurrnKBeGQwjVZlYf5mhEHbCobaTQdw5D/opxm189dNJBXrEJbgpUhSA8C
9UOX8+3IsCNwQSoAXdI4+7NgLP7HqAUS7vQ94PFgHmOwVi5MEa/+/DJIhMH5DiT2/qpAVk5seur4
dI/VC4Gn6oj/vA5k2UHDwlCVRXsYpQ0ccFpLiv5n6QpCnyvdrzPwEm+093pjw43/jBbjQ5nQMJt4
YqZ6QLAyVC7R2YxX7D5nDOXMxPtS/nISD0yBVFykJbkdFwm1XMwA8NtNm4Q4Kqk7pIZMTQzHaD/X
5SsZiVqEqYncQLaWMzqhLJJfGiD3xuJlyYnAgcGki4sa8kD902uNuyIHaWsPc5f8lG74mhmHgq+J
FNdbswhLjjh7/VWim4MAwVrGXy+qhF8wTMA3RvAGH5B+DZQ10d6/wwrXO8g0cale5FO0KT5T2s2k
TT+/OH1VVFm+c7YtbPYfe/KFF8I89eOhDYKCv1krfHzr6cH5hs6lpnLyTfLb4+TrsmwszjjfwNcA
dY5M9PkRSoeCLGWsMSE92UBBR+uGx0QssZDl/kr/B4ca9z/ScTZDNaNud5EYRT259BlAHzjc2UdG
SzsanSTXTCAsMGycdvcgyyedoNF0jSfwUunpezd2qxOy8jgMWOpIDrYFdFsq0vGHGeRVgDhf1F9a
rbZscjrpPcoAbNpCSfHP/ZQOLKfzjqRmlmG5ltOjOn6wAQ/+iPPNl/S5PUmkUtpWQdyTOCytA0zb
i6t62qimNN262fDpFG+0d3DjjPIQ18CKDwxvdqAIUfL9pCDdGEJDtcMcrgi4spR/lyG5Csl/ntwG
mnLPmbNMpJH85i+San8ykm/JfHuThPR4a1beJO41ymQUvWjG5/Iu4BoH+vczsqQpvaQx+hk1Iljf
/qZVVntAIxBKr+hJIP1vPjXZTQhqD15EiUBbpmdnQEJhB/ugVk7kobc23Qv6HD7h5SlYeKXBY4cc
AEGR3qvl2KXMfKKeCQWgzswOznV6p4+34LVbtOzCQmVcOam2x5j/GTheTQGFnBYJ8/nFgTnKsQTX
wBV35EFbt1hf/E7LGU2lBWCCY22b//ka+af6MS/ByeE2P9XPmVrgaO40WVjL3LxE81/IelYZQgeG
SMPSk1RZApbKtuuQKGiyQ4+emXD4Fr/sBBU0jfqIWxEAgLg/u019FdM5MDB+vfX0Jh7lB6hoR1Op
QjiHhq8MvVs9Bm967ZvFVC5HfE7VOA4O+sWJFWMvtmoNkKIuRikFODJV5qmd7e+g7DiYAZ9juNB5
9xb56VvtTRTRH6rulHiGu723rrhoC2bUUvmq9rTJlPP5A/ed6eukMWAfQF3IsEiDsxBXX7TjiWly
jrIDy7ZpDp66Ppej3/lAz0pQq4ySZjc6CyOxzkii969DQU9gh8cGV6RGYWtzDZCwfxm8Y3JHZADh
/DHVRFlNQ4ZIIO5x8Dkz0mhXEM4n0LnGyKY839Ol5ZMOZbRN/naGRe464CKm3uC3q9xPkPUEhPfh
nJModRFTuaTpk4msc3NziXNbRwUY8A5vXSc1ri+xaMWn9ckA7BOnNTODqVxs3bpbJxTX48BQW/oo
8Ea6NKq5KKyponVQosqciRl7CkrQhiFgDSUHkoJiwVxDx40x53holBUwpNAE1PioXZRA4KgzwgF/
UkclPH0m58r8aFrpHQcEQ9ZEdmAYsymhJeSfp4FowmjH+5iPbFMyCTOpdlKGqioBFUJ9VnL81vh0
QiAnaaJtonqIrd8eudyf1gOKto/4cF4tuJNnqIWfIBz0GiVh6s4Qle1KVRPpqwLYdPpuiv+JqP1E
DJMA8VTEZ97lmBH5jO5CXuiAYoLup9rsm840SKwl3NcWyD+P/S85ju/IMKqBIpumffDL+FrZ0wBc
66rzPbO9MhERs7pIHhRxtxrgGO1svP17J0q6SbqOYUh5zG9N/VcNQrS366HC6zZ6Lxj0GKGeZxv9
45iObu+K4EFMRsd+dFFF9VzsbTea8WE9nMRGmsGxjrzFRFmwUuMfkorGLX7Myn6a1E12HoMDlze8
7eoA+U72st4Z9pr5vqTbQQGOwF6xWBRUQbpGy+BTbC7UP10bqcCzolYQ09A3GYdBnE9/reou/w/Q
N6k5NFjy/2YpQzE2rNcsUvkm0bp/Lkn//a9PWKzqaCO0UWALB3LG4pw1DG+E4C8R1YabzNVe7MaO
QaVdQKHxJhWzvzh5/R2F/lAwu6iI6dgPQHlAHl1J86u5MuT8Wx9Yv/xYe5SIHHJZQdcD67IYDO8k
LdGgy/6xP2K7KodJaeg2fK2zwcm2zns9GGeiYDk9SIc9ESKV11QRBKHO9Ld3Pxvr5q8XNYzPEnlN
2MOSSapgUwF+IIojHU9v7qVS2UH+ZhF6GAENBceIfS/sVsVP+GrVW3x2yCmEUDIBsMdNqXJee3Kj
4gPXzJ0mrixdmvChxNgei/TqyLzenXSMa7WO4CNAcQ7iPfRxbX/CSLtojw9DMiCX2zH+/WtbNX85
v4hWG0WMWO03kig6JdER+cQBBdcnB/Wp1DMdrutfeItPR3IQdKFRZ9TKpiWxFh1nTKODkBVZot3J
tJPVW+rO8Q6jbCG0dFgQKgxFx/wYFtM/+AAtCviXH0GwXEeFmGcwHY83YCkn8akK/4dI/WiG0kN4
d131CJOxCJKnfd4svBveyGuJ2l9rnrZL8ZF/QQiCc8IKx8oe7aPoLX1XMrvo5t4dibAoVbSwhPYn
Y0PTpo8VsatGNIdVFwFXilWJw3Crt0Dzy3dke85LW0r5AbHLTYTs6nOI7n2w6jXNFqfnsISY1iKZ
HYiCnEUYSYQ0ogmdwuRQ+AihURj9F3Iin55jDmrj/nSYfVJ2FQRpXXWBKaU9J9Yc2lHjTKi4lHOf
mVq66TQGl2g/5DEh1yBnCwCZq6o4q33S4VBujhb3nIELCbmtSUSCYAkMZ7OYy2pM0DNUPEjWIJNz
Yasua3ARLsJBjpGmyHlXAA69FG0hay6E5ugpUHPKnJfK6mMLh1cmZh2gnLYE00odkwKSSSBb3F4A
LC6D6fruK/4wqVBKE0SKkIFSVgj9Eq4N4DWxiSGbEEKEr/FBZYJi6B4qawmzoYwAZYlahWl+3q+R
XHa9Z1C6tHM0niok32Gh7sxlcMBUBfkTsmcfJF+iJWwQVQpafX33TD1mdmX5/uMEwcg+ez2yiRpJ
Sy3mWtBQnO5zpfKbRVUZibfGyrj2DEBIAAFs7MwMvYdDboC1m+Tio5Xrl0XfKB/mGE+jl9FZzC0i
i+/brjbqKeku4MrrPyiChSzePC7Z/agTtWx+7Kox5651qYgMqFLj1GGyFVtrUMGEUMvkJyddCmuY
uwP9rdeZe3RS/00N3NKaaLlaiq8G3T1qLXUoGym2jhoGD0zq0HIM5ISPLAk4PbS8O9JTx91Mea0s
Mth8D1LCkL1MrmiKo8Zg+lDxZKTKFSvXq+oXlPclAFCv359L3dnLIFSnctxYCz4X2W58N0lLIIHN
42wBcsAO3lP1RCPq6dwv2NaMd0GxzrkpIToksCG4En2yxL1OZfr+Oz1hUChQQcfNUx5cGW7k2hSC
VwCwMzBfmiRNsSvm7+Z5X/4IrL1+SOidaTJoW2R5CQQ3t8ZIl8SZFSuN1Ct9JQQ1cxwWUeEvOKm0
4FLYKqZ4lHgSClD7bM+4XI1icD0z/4Nf9E111SmMttJxO2ZZVZMS2kV6kJNJQ5WoT/w49rQHpzFD
dsdGuQfjee3EFAeywn2KKqL6WDz3XIKByqSfTnnHxAhP+iKGz7CtvV4diaX1s63uHZmi3fEJfXJV
8160drDD3CCeUW9DTbqXgrvFh9+qk77u/ILYLwsRmrW47dBS5V+NDiYt8YRxh9G7Xtn7ylkIR7YI
cOEA/nKVEnXnCK0ks5y8g6NobrZnwCFIPmrwQxH78Tfyn9uqG6cENzQUQ1mH9qaCk/dS2iW0fbtZ
apojBIlBm65AaOwq7EEjBBder+RGtlKhxW41uMgzmZP87XlioMqrHM6P4xsImFPNf9XtT0xpsuVE
g8KHg97+qSLxkKx6h0IcXMfVy+Is2zinWr4EepRVkr505n7E7OuoKgUC+++npEJK3687M2nkl2fD
1CDgjea4gZho+MtZMvfuu4QQXbnZSIgmZAgA+8q9fhBfG5wVnGLmXKbCpYypjgRgqX3csrKJdKIP
/2TydkgbggOdUCEmr7Akdu/mpzvS/j3vGxnNKhsiHI+4Rk7fOj1HcpsDzDVCOTl039eURqfRk12G
Vg52PSYi8uAp69MI2Y9JMvlBLIqOCEcoB9EdiijY1JgdVwgWAATZHaFt/dQj4NHR6fiZqDaQyWCS
3LLGauVVWWI4PRJi5BXZiFGVQnkJbZ1zaVRV+7SmPocmvKHb4TxDMPmfkG/TzxT6Ksz2gNweg8gf
a8MgZ+e8bHeOn0S4ISYyOgIgSLHoOHF2n6VZDK8dxk1PEvccIlMCMu3jF2hHk9wNCGzYB0XcEpxT
fBhQQq0qxyUGkcNUAXQTmudNa/Zw7grB8lktwxvj/BSFXZbPpnLpckZsDVNX+X57nYRA7uZPc5fy
d0X3dPugYSeUrry1rdJ5fYBCcosBYXT1bDpL7lik/XG+Oha84JnIeY6lCNo+RFlz9RVJ2ElZiNsD
5akp47PxKaJrkk9wY+9dyd1tvbUBPqk6rBorcQjD6DnLxqa5YvWgg/VwQD64p2tFzYnOyVFUL7Ye
YE31Jh3cwDfJ1AOyW43/9vgU/Q1Xh89lcrssoA+GTAG6tGuCEiZgOM6njMUwCBMSbOLKbPXPLCRe
C94un9aK2ovajgtCV7Y/7HPLB3lp1b2aNwSAB7bWBd8p7Y8Wnfs1BhPOjalgRzQtIW4vAwr//uMN
QLbhZJPF0cfVW+T5KAmGFot493yyOGf3EgOrpIB9qvgSD4hAtAHvLQtHkEH1648p8nmaBfDIqKMx
UazBfklN1jo40Cs9xLVBZfJc8DNZEhdfuYXKXqrDOWVcOt77mt03lLOiTFYLf9GUWABgPvdepoer
xQ7xYn6z26szOtveDUXUQpYiMlqcofx9A2ujuDYBcjurHT02TiUNeFi4Eh42avLrTi5ge/+GRSxA
Thb6e8TVwbK5u5hjbeGJ8lAy8E4cDFb7ttZ0l5dcCqM81VgOF/zs8WClSQEiH91XhJwlso6LuTGv
ykp+IH8ngVTTRQRxbJ0iEhlStHa8V56nBFlPdHBgUHggG85cAMVUS9jCQTDo/8WbKyEM2m9hTIhc
WR8H392u+1bcpG4u0iGMPjigNeVxvCar42cWZPb3P2+utPUsRZXH6+uLK9RsDEiTrE4If1YIIiPM
F3EDCIY0VbGSOKx7KFSdq+ydzr1p0wpkqhwoA9W+fKJ2GjRyDjNcmH4BBPLkY3vRhRQ+eoaj+yk/
J43qzYWcV9C+nJUClBY5p5Km2zTe1o+WegCSVInat0yXHTwEqa/dmPDBSTQJNThjrwdHF51eo0A8
L2N5B5AlzVpobE76s16TmRb/ezC6EfDdMJ5KHURjQi+S/sh+NFKjiMWmvnsGpViDSPhinzDsjXxD
K3uWY+J2EMABXQDup0Hap/8dyHaYRw7+yicvLNxdH/j+x+o+TyuU0SU5t+3zfd8eV93O503h+gUH
3E3br3BDeEx1CjYBkLKQSdSyHOvfplOfgArDMIpLwHxZXF8Wl9oPDUXgCWo2jKJxCwv2oPOJcHSK
JMQaDk4zNVCthT5BpdZ1Iv6QdSHtupTIKlPiCmzC7rI+VamZsnA0mbL6TzuaiOQSjF2O0CgT2Q55
X3VDv3Kk9EoTLt0SyzIWBV3drR9Rp1i5CA90kEZNUIzTE4SI9n63JNz+fnodz6ZCEOmzPgEiOrOq
dIFV3xuw02jtwFVn4E4q17R1CQzy29EWMaaUFI7IFqZs6q8RRS+I9KR2C2BO4D+egtoyoeLatGKy
mGtzJZusRapfVCbWYX3QunV/TPlCGRfjLWIIYuu3Z8pEXr3L1OsghpdBJw4KDDr8w26TpMYZmSyG
3sBEHJHb/FZ2V7OWQnKfqmqUsw/ogtWzotM618smUE4MA1Jvyj1aP18rpE+esSJIouuCWKh5ViHy
ath3Mu5ZUvDN2FdMZ13x1CDpsNRCOXVrEk0s/MV8X8MZqR4ty803Jiz1/IstAPs0ABaMmcBWw6Nb
bGBdYsWDYdPCTmu8GIxYZI9mRH9/uWfbGvxUKWy0MZJHkdtwPnInV9udtM7vqSldAAXZ49DBUh8J
HK4tPyC5YN/bP/KbZhHaIlO+mvIbL0naBAaxRKR/LPV3khHzcDJpW0ej3s3sbiRTFpa2c/bGNo/0
Jd+R8jIzhGLHMERoTdW9sY2ps8cwcydRNULVvIQwhv7xwgmxWqV7k7pFD203+FW+1DHtDa4W7tfZ
Hm3Idz0MBdMHkUx+cBjIN63yieuJ+TK1PFs+Cd8iYaonDTdj8T8pgi9FMhF6bMxbl3YKQWSktpZg
j8rKHf4hpfFxjacydNl3TTXHebXu3egi59GtkEJo77Jsz+qdGPPMFdEO1MIvVv+Of2Y9FX4pKY4O
RIim4LP9BoJeie5JAoD86chcJXCz/WZNqCpJjomwfQq7n4GeF1gF5LAPK9c62UCggPN44QNYzINd
p1thXNPnDt2g9nQeis6GO7aL7PbTX2DdPpL4K/GuvyQB21nuMz6OvrE4DDHIWsjnBTk6cG4fwkoF
dKMv0huT9Pycc8PwDVBzeIb6Ww4viAERSN31hT9XRucAIBRKw0/MgCHLGsisfyrWdK/RNgPLhfIM
O0jBCd2AHbUD4S6K6kASceBmD3D/kD0YcXPZzCD2M2/fdnA1MFe9YQBwaynhKhWyxiBA0hL/TlwD
u11j2xadRIfUj6rV3Nkk6dNY6Kw0T41UFULfYByXHyIxFmlC1uvgFc93DTsUks8A6GpteB0r1bq/
RWTMQeHdkirYwkm4IQGefcqy44CMJu9BgeHSld8KbTSs3qPejCVLkl5gvqneq5nFrK/68LFA8f0g
vi9NiPg9CwyVWOIdxHTz7rWAeA2KY+W1dkjP8S9roJ6+M4yNlmwHD4ZgPEXH/UYsLAw0EOshuZQl
JB9vNlPIvc2yMmnKb4Q34vlFWuYR6FGbNN0KGjM1EAxJFEZz/WFzSdiOWjnWqX4tHn+1+b8N2Mo+
Zhi2i7RWgvsR+NKHENJD9wOW48nI2/0v4I3MkSSM3Eo7EYBjvFmcM6jjRSCppWODF/XDaOHz5xqa
K3Xe2gttNIMGYklGXIxR+jak70/gDQCPdZrWSk08JMsvVh89r60Za7p/SLZpC69Nil7hcLoW8BKo
bXIJkWRDl1JRcr3G9NItxRtIYAFUuAyofBN0YUDJm4IZ7M0PtqT/lpw/VD8zmVLgiG0ABeO4okPE
DT+KOFkUM6bdOKSTA0pleAllH8gX5yW3NfKwDp7/sgJTBrpW8WUmE3mReT0dOEAqTeu+JJi6amiz
hRgpXRQyulPgBO0eLL15M3xv7gdDpPrVmT0u/s8Ohx41LfaFVcs0FupwipU+H0Jq1ipqM4mNlJ4P
QlPmds3/7C0D7cKJRJ61LnqEnlEVtH7BMKheq9wY8e1erAripg4/Eb0YQyZRSyblZFz8OheQMkiz
/GL9VozE87kI8OW08TMxMQmHdVvPajvyFB4f9Aql+/juqa03F/GWVXUiQmYiJ2n43aJCmI4D55S1
mFzgMzPwTARygv+4G482U4ycSjwlDI5+ea2zLjUug2udAtsMwQm4p+tMaD6PLYdySkSEHPDYWl6R
BW5IVEUFb9jCrdT/UoTKRGV1nMmwWSHD2x/67WUiCuJ0y/jNfzRXaLBKhinjHglL94rI6swBaBxD
Zab79OjJ0cdXCNq885aYGOdTXFYIT8AbGpc7A5uS9ubkJoiMM39VQ/ZTOxOn/PSAqOT75zSwNx+J
Q1N6a8Y57Ot/wBRli4IszioA80xkVx5OUkEyHIlne1WjZkmR7im1djMPRoLn8wpC/s1fCGBZeWGG
KxWRTnnrDKitQgS02VzxOvN6obzUDI5OqfX/GY00LY1WfwUa7NKfb5s/0aTDEEAX6ZIXmir4MhjM
gUrgwEEzXE4gsEIdPT+Rk3P3NRvCSiIoxUH0iGebPYIJivT6u8yjHhTYpNVywAon03MmgijX2d18
SD5RPVH6+tFQkefVtNYTMsC8+yNSQuSa5EIg+zj2LQcpx9yzSYDz3cziB/sdYwqeIVyf9K5ZbtSQ
kCJFC167fuVB51Bmvi+4G4cL2qLGnpyoT2t4FFrW3XacH4BamczSoIIFTmcEzPb4u3UHlC/UtYc8
N6UMGgqtaJpHU2iq6MlD6my7NxgYm/pB0fkRnhDRRQ3+LRv2QQYl9oNaEadNdLW/E97BKSZVHZKi
bBZ7HR4wIc3wYbsIuz8mvaR7w8fFh7Nlx4wmodRwY5IIAPWWuUnssjtu+XG65pOqIlqelVfFR8yG
nAiiALW6J6E/EXVp6j1Ro9SEETyzkrVKS4OHEVePt8zB5+Va746BTwRL/4eO/TKjk25MBbz1YFqk
pFf/Ym+y2kR1u1rVOIUSewBJAp+aXmTOlHLFN0m55iyc9qavmkks6XpdSPrqUmzJlmpcpTymTDX2
Y81FxrSSSWQgCvL+T3CMaxxVBbnEaeaQ7MTnurm8PrHWZinqDdAIXxkPNWUifR9WU5T5A20ZLpcv
futTe8EXJ8NLA/qTvIHwCnoVmGqfFS1y3jtCAFUFYHnQFnoFeomnP4/SaP1C7AuRO65QrEJXIC+e
YN3KI9GhpPSZD+WXQF50olPawzAXUXg0WTNEhwL7NyFPPrXX5W9MI3PcGQUH1WSn04ZC8AmaagWZ
i3bK+iLuyNCAZytC+7s8Ng15OZGCsCL5ZnyS4QaInruS9zySlaVhngZ0tLFGU1H8r0WmogkZHzjR
ZG5/AmGCR7zBlflSnmkewBwgFFApeG4NhqxmOxQZV4ZFuqM4KM07KaXpVDoF/6SmQ48Q64gwRQhj
hi0yx1yrWoGTCxCGeTZ04+0UGcguXzuAeYxbNp/Lwin93XQ74colzRavlJAAdcrUur/aAAfBGOfr
K0hkOViYzYL6ytzLScEiOxkCcQytOrQULizX6Lp1wY6Aw4Pzieq2UOpK+4r2nY+Z9IcIOrj429WF
arEzYYwE7Ima/hUljxPlnDQNTQAjzIsDvaEmXUF/IkXsJNMCj65Puk3/jcyrjbXH9vw5gnE6Z2x+
rB7ZJB3ijmYYYce0PPIMLLrDfzlUiAekAKEFxXJvs+edIHkT11SCKoMy2qKZsr9CYs0XdouNawAQ
cUzvr9Psr5FiXMx5ylqqn+KZgvi6hgJ5go/MMoSm/Rg4ycJbpbYJSoLqPWZfYh820u9ZAmAsJevX
EL15HYCf3J8u8ejzI6SVYd1tCg/0uPnFjzyzjmze81FN9nIRUAu9pxZALp4St1IDh1/wGbfmSRX+
REsNxcOBFh84qgw+qd4uo+aR3LDEMkdL/s3Ld/ECDiRFm4Hmro4yqpBD9nTvPZb76oajk2hnO5P0
R9W+DrFdIBrlFc8Ju5bErXcvZmksJIZargy3PSoAm/t+iEktyxZ1c+rW/q6/48Tcnv21tL/0hMf0
Y173Bms2O6XtmfkEeGah2M4YTbY0aEIKeuTyHYMQ033AiLg9LzdtX1kZIz97bahvY63c2PRqMIws
n5sdX/UfA/rNXh+Gv1dB5t/R/9VZnn0+0GR0rYDfNSYIWk3WAYwyJKV+slJhe1Q7S0QPG+I8JQku
ye6kQF8DagiFG86QoyZM5iIo3c2rfrwiBen9F7Nv5XFdDJJJHBGkkEGyyr5HZugXM8Xy0Gwn0deG
5yZQD9h3OXVqJehV6aRLCWhn3Q1ehttjWgGHHtrB3mI4SLpisvlFz4KMfcCVRRzEH1H6uxpwsf0n
L2E8yiVocO3992BtzadELKVtnVYrs26fdcMVhBTx4Di260VlV5jTowj4vtIDYP8aaVBEFCzFPTk5
/6siXGVqUR0c7eFWL3A6KMHq01/VKrDfQ7rHWKe074Pci/AV5JPf4usi2L0gzLTA5hvjHhWZ/ys0
CjnGsQiivHdsNdXxc6ndY28FpzBHd+1wllnBAXYcNjTHnNNVP0TwjTr2W4GjjvwZHdFgxYLy9IW5
u4k+EiCCLoTpbMtBGWy+W5Dz0Nx/x4dIqRrhPSOtOr4UOl49GimOD1VoYaK+aOC2ziwohr1skgKc
yU4c6B/0tzxN8blfKXeG16eTleLVW2sHNNhi4wiNFQ4+irp/7uUFk0Sos4u9KKgT+iiR0jvBvjnd
Acs26R94071vvTt0iNVrOmXLHRJ2qVfGBHkfzYS3O7ptE+kYEA2XhEZO64/XuW/dcRgM24cmigAg
oHmvZuuwSfMfDtfRNeLUypBeeC4n5/hpmLCT5uJZ3CUf3uquBbkN0Ii568M4ZLznUuoxk3r05Tri
VbP0CY65gofyQ7nJPemQnAa7Dzv3ejaOodB8fZdbUY/JpEi7pvZbTDu3fql8rgmwP9UODVwXzcbD
eW47tupGIUqH5hDqcy8ELBY8cqlqo99EKzRsgVctfr2HEcPNsIW2O2cXfBRSnA1H2wunfKACu0yr
SMpwVKxd0DzvPqV6P1Ywhdndt84gtXNRnCv/1t+hm0nPetKh4zG7eHNBIX3NS00etw+p7KHhqUN7
m3Zx2cYEPvfKoa/IZcq7hyaEdxsNRwWQF26O9u3dNco/pWQarFnRtItHggTBnLw6gYZdBpZCZnfe
mKcQFe2KpsgEaI7OFRytENOoA0iwtZHc0SqvM/eCkZMY1qnzd5rgWvLKpdWkWWJTfa5GaSDPQ9sS
iWbN+y/sPi24YWpYAk6Kymqbq0votYqtOQnlfPWQIAJOQOZp9+Ig2tXnNDh64i/gGDaCaQ4eQAJh
huM/eobBbuJTKYjvyUo0D7fClEi14l4mQa6gaEf+UyFi2rSScQjVktLppqMATDJI2EdZE2IJpfbc
PSvoTAEcuAJPU4TeaYRXBOQLWq6nhAU3yqjdNBk6Kh/1mxLO6Rs18dAQlFqpy7IhdZTuWvTXKZgy
+VGhv7bmV/NyqIYgIopKIV+v/+oXOA3vF6unw22siKTyw6VYCYC8YKPCvQQaf/hzm91uF8v25yCQ
FRkbpUoDqpQ0nV8fecb9VF7uQORtpj+UQjP+tprhfCSpMMS0UmZIQ7yLmgWhgviflAOm+mSMGqM7
SPSey8qTHhZ9fwqZrQxHquKWD37DSkkQ9Rb/ZbD5AKwWYn175O6V5ii/G5vfFpngrDBW8fV8TE/2
4jiV9XM8gbTp1W8hlvKp00I2C/MDsbyEFBMlnNStJt3vRD/gXscvAKSkVcA51BEhvq20J5aq340y
y1fWwCbXUn/FBCsItEU4CTIz8E6Lhpn1A91IybjJKyPkmr3HMvAGOGakMvpbystd5Yl+aI2VWREk
tLIiCPKhxggTwHyiyyoUFpPbMOQV3Wzb1lezBIt/n8SUgWdObAiQYjaBxtfvkfqMzqW8UqirTUAe
S4WN1omMyBZR5VsPQWpJV+HXueML+dMokBcbh4ROFveQTlJgbKlPXZygLsEipkAxTHbrTaaunva0
bTLveFV6iJj+iSNQuCaWuXs8TOacQ7Ugy3j5zaWbP3Y3hYiKMIBHElCRzGk3OJfaU8gNJ6d9Jnou
4EWSynn5qZmT/wHLh50r08x70cLLUwxSrog11sT3Cy3l6ER9p1WGkBKcGo0/lI6DrFZrzTLzhqNb
eGU3VGlgoMcnV/XggLjlTjP6VPSPuuHfo9yx7XaTejqj3yvYhZE0nVKmLYwBu3v+N1dS9Ja1xmm6
4oGEbIfYZnBr+MwSPHGllMnbvoopQXqPfvU+SjvL6KhyGP6Bqcb8djxxLQMAQTunLQKs6daDk/yO
Li5CduxO411KKP/gdbRZlZCi+R2uj2G2souzNVh+7Gn/7qzLV3hMEGhIRjLvF2ug5rGLS3fuNHRO
BheuXoooQbnUtrWhD5XhYKDoAt1vNqsGPf3urf8Fq6CSdZKQ9YmvSxjYKlapqHt8MPzygtxKeKLH
kuzSn+CQke4OrfxTqXXQMYZf6/TOznYFRVYS0jXXgjqBKmQ5mXsFqRHoFaTmyRtJVV5MMNkWyDC7
t96ZKfJYXjLaeK/DGfhaQCDS5vwxcoplRGnVc3Vs/8BOHL704Kvk0uFYSCUw9XdQaD+XMFrIJfsC
cilNF0CSvX1BqZBQUnRgb7qS6CcsVyVpEY246wl3WyBL71wDfE62NoycemJEiTV3Kor6cztugjzm
Fry/lhai/ilZmGzCCquouMf+CqMpHFtLKYxDaP6q4itK/1Gs0IDuodmdS3u1fkoCT6aKm8W2Ffbm
WnfCSlYWOEwxT0340+yo1LX4xJw0k8DsAkCteIP41b9Cwuc+4XEbhwZ7F8LBgTDKIfFuKHsJCkC3
AA8hul3WVRRm2jP6DUdVBh74TtKG8FcxD7fyQykRd5ynzMZUhfN9YpbdRVaCbYR566AkcHrS9hdA
Cn8qmpfG6QXa3cCtui34f6c37wAOsLM/c4/p494zqmsWaMs4N19Pijd6S4BTZcBvznmtn9+tJ1VT
ITpEn9IqgVx/+5QFw5X8HVuTtGpUJTzIsr82i4ea08GqHxrj5JIYpgQuUuqGOgyUs7HbjFsh1Ex/
GgY7A1kRMh2PKyU1qHFURu619vvPMGvezwO2EZ9uPUS4Xkw08NUO9acSeMOR9qdGnpcked1cITRR
lxqcUGIMKYRnb+87Rw5MCTW3vSWkaS1JtgpPX2P+idO+hGyfM6j17yv8fvGWtfgDzTyIBl/omyke
GxQvGhAEHx449Js4rDLG1farsOEFDw3C2pFn00CTOsazJbKvBa+N7geyhKFa4Ntt77LSUpgPT0DO
hNjBxjKBImpl63ClvS/a5KD1l5a8Mh7cvD2zg3uFsrVsGFdrAwcAg2BE1CkkYCu51KYcYIG8za6X
ukkoPhmPz1DW/onGfAiPFd13M6MFWoj/AvPAw0LTyfp0wfwsJPNUD5kBH8SA9QbBLXldP8zkI0sG
wItRBlpb6uE33aW9dvtyGBIykp9hIHVH18JRJ+Zn7U1gnhfH7qBtHXCSFSmtPq4REKMWuFL8rGfG
guMqGkQt+LeA6GO3FBONv7MAJTY4P5/U15F06l+jWhRt/wGcAXgQODzcsIhmygB9yzSOwpc7DOWU
nkgV0aBV36dEbaGxx2AKIdXvCmbjVEiJO/RsMQj4QTihkEtAEgzAy7CzQbfr2Z22f2pgF3l1XEvZ
/5F1zDqR5xplvEFqKzAXdtaeS72fD9TPrX48+iebnZtf2zp5ZirPGjv3bkcQ3dI0aO6OvtiwC7AE
+c0+2u8s4GpaYo/OQguSaGi0Aqf2nSP2xuUoJjcAirlXCn0mUNXck4I0BgkxYo4aQyqrsZ6XF+Dk
ej+rvzn/N/Ogz7bZnIthmAXxTGhhFp7v4Z2BTqdJ/+kyvviH9L1IvP77PAtY4+486iOP7GbjCV/2
UgGM4PacGi62++WA2fy46Gjnh0ZdW4hHJeIUXvVs07BKBC/poOXlaTbT6aKTsuVTP2KZLNeBllDJ
UX+AeP3/mYFaoAD2BGPDTYMwniL1BzKWBpoAigIxo6+ntRwR1cB4UuwvBf6Ou+agTCYVmeQb09el
c+dgLFz3AE87BnH25pe0LPp4KscuY5MKQRSIQIdxcxQgiEDMqk1Ik7uVAafh0vT/5LGfHE+Qv+I5
1rdNqeV945Ri53MfTGmt1Pd7toKsufi/GfGxsNuOKeTlpNirrvSj/QqE3o1LcEnzZRVNct/q99gm
WlVEQpRQ4C4cexPqqt4LZFTpFeDYiXsxj6N2XAEPupVv5nowxnD5W1s1XZqw56QY7w2QDwRKoUFp
nvLvkBzNW2KlO/mIxT08Edf+yVCJJ3SLytHt0LX7FzYtmSCwcdR/Wzo4+ZRyyEBSooADxx1VKuFB
ebOweiQ7mwgjIQU8knXf8xd5EwruX9TmqQwH4Lyfn5wJa0R67w73OocVYU0G6jk0aNv3yLT1oiRI
d7lxNXqiBBOulsGigTiq98oexpzdiW4wIhtwYlVYWpzI/SreKFz1lhq3Cp4ELHwH2EyOxTnbXu+2
OlYGBtYSFl8xYpox3exKwGMNUyjS6DKQaU2i4R1p93dtKaL2Dc++sVdwabKrg/GK4g1tANEj/D+b
e8lbgEgAnHRxfcjsSuRooMujLxMR5mDp+yikXBKFAy0Q+if8v5a18kp/OeKX2HEck4b202xVElXP
pItVbN5uEUCwyGsk6LMT/qHH7YowI2iDaWYSnUzA7PKcNYKIbs/T3Ru+I3aka5qu2fShDm+7deYL
3C9qAU7dKV6JU6xB5wxaHSNHORNQuMXsXnCG8KCh/Z1YNgDkM+nWyAhyKIvTDX/LH3JfTM8ifBKG
gp0DcxuBEf90+A3GltEXQllaVfW6e4R2r2PUg2Lc3yfmlwGD8VKQ1UENMQZRNqa5Bkmchb9p/M1h
P4c//gRCHBYlXOdyT2XJU5eiGpAnzKcYUqLPLdXKvmweQfErKvfwLjYrFUfj5eFZVYNOT2gBxHh5
0wEdoehwfs3Y83Gjl1vJaB1Jxa+yIFx0f+Ham17DrXCSCSMC1XTmhZEQ0elTKi6Se7/Msww2qSa7
XyoyUpxB/Kem9HwYhGKGMcLPwp0cTD6lkdjGroFLWwV2wmXsySKFbg5siKETlCMqazGfnCpNqDsw
YNy+EMSIO54lrEnt+mznFIdhbrE1UqBjmkzNKCVxcSAUGFNEBSe0qtaDoAbphaJoLbS2Aq7NxA/x
RJgShkCifoG+D/Qd9u/5IrLGTaGXMD4lLBNtfYvDO1xMQT5WEN7FOe8gE7JqrtmvmLqy7YA/kiSE
mgLJUGSlW648cxnfjqH0+7zpkzPUxpO+SU3JdsP1YaqRCFO6YDibqtZHcSBN1nRKvN491wQ0aTNg
Jz0bacMM12zbj41yX6ermVtwlyrBvAYqmD5Cfe6qtZf05lnJP571M+Teq8lOa7zM+GouSZSwFpGC
nVRZ7MQBdfAcKhrA6ruRrzLkXCaQzugi1es9gbHtCKFkO0ZaWndU8OO6Jz7AE0AaEZuj7wD1ilXK
iRxXYpSgzygTmY1fpBgsRdHm0HJTRS8M516wC1s6mM8UFrAKS29+XYij01RUs4K4RmRvNa83biML
Yj+DCn76ElG9P3+5vZk8vEWlu6jQdaYN+Bl52/oE/NGsNleZ1L35nKEvNhygsTwCbKPZVGCG5VEv
xKhf4mlHl2b+mO1xR2xXDYrcN8gdgh/t2P/S+QwJWZI+6R4Ll6J7LCYEUDW06u0Mvmv1DphjI8uy
tIyu0o050kpIdYdT1a/cuoF6ACx6paHr//TzboRmrrRfSQ0a0dSuAws7BoLCQzKswj9PcTgiQtKY
KCGxKozKHCqRoSBdM2V5zKVvQWdSFgZCs0Wo9riWIuJnPqUzbzuudX+rEPGifnoCRs0X2DwFlzLD
HlxEJXwq8Y2yeONP964R05f+ffzfOhQ1d2rgwAZj6xMnqd2M7dRKUcJss399DYD/wkke9tFKV8Br
1y9PB+0oD3EzHCGgi0zFCYK9B3xrIbp3DbaedjfqxaQ+dZtepiGb3B5XygPW8a2iLQzAFZ32AbGg
bWHOnZjBC2e3ijYJimnExuQbeAjln7/q+AFckcq03kAsiiyt/g4FiyIsaPwLS3OLpnQVhxcEfu1v
m1k6o9P/QA0fX0K5XvHoYVew0KKghJXL9rqC8Dq3v0u2JLX1Kn4KMf/YvxYgOjTfwl9hFDDX//yP
QWetzQJTFCBgiyiuB0rEc4DzL/sZi/PGMka0dFAWkBjkUToz4Al2X4HVW2uqXYHrEr/Zq9+8InPg
qeOJ0XtFNFxAzgAwRglUnKoeEb0wKQhrOnhOha2HdV7k4pLky5XDPFy0wwDdurRBCc0IPZqdGngb
dtEVcYf/nwXMSiWZDx2MQDbsbdDc+7wDdPfKVCcs9Wwh14ZcKWCpZU9Oh75cLa4GdiHOWnAlPQig
Vu5e6s+b5vNSSQ5dleqebqcmaaiNhkSyQ9Hqg00qxfY2R0hoGum/MZSIojLZ0e+q69oCb8HSZ2/N
Q/H6Lg5MNGsJ2dDxv8Yw3fzpT9nFwUFdTpbPMZF5zgt4OCdEGOEwL0wgudN26+6UpwkZlVREaRLw
bZKyKv0J6TMEdDRzAjBBV/bvGfOUad1QC95xVdDciQNoZBO0D/2xRCAkflTJfusAdIKYA3ELkvcE
o2eRjOA+K7UsVSezUs2FxKil6YNn0qeIyX8Fefla4Fte+yGsUv2f2DPcKsN+q3mLWmLeQE8B97k1
bHZMa6sqpXigaS4zpaj8EicvohPmNUTDfQTpeWAF6B/cWxnTpEPLAXx/XCspOe5Cg6wQjTU08DZi
a4BJnKeb7NuU3M5/StuOh2797Ovjnz2KgWfwT/aUPozu4g5hV+ZzTm3DRdNyZh0q/2AJYlXf6U8q
VERxaE9oLBiysxPfysE0i3LcJguBDj6b26D4U150kxXQebc7pJ7zBfpxpWmAcjGldmoy4Q/tx07S
fcYs7YEIWGqgMQbSQGI2JFFDWxuzGXi2FqfQQPuWBqjU3bZP5w9SVT1kG1tjfVOQ91KVC55skPKv
oZ3z2VHoEGUU+z+dsGUZyda3cnqyWB+IL+yba57H9vPsd5V6+Q991wTr7FPRwIS8NBjT0breZzMq
Ogu7ECOLON5X5XyuUckDtVOGFeBmCtin3rBmQJX+ri80guKPuDJpWdJa4b6shXeBrmRtYRwMhhSN
c21K6pmU0t1tB1zLd+cfnSItHVtD6WE1iKufuw7CYjxaGluQvT5wRYtgBUf07J+rqrAwtv47C1R0
5F7RyJNJ+/3X2EzTflb05lM14jhlQoFzNTbvdyfy80nCCcvh36PmM6jgSNNJl4CRJYLiB0Vm9gd7
lG7qpNt68pf3khh+zS2r/Jm14DWG0FSWX2+6YyBRgP0129rh7S9WmMd/CY5n7U0siLfG6ptru8O7
S2b+ic38QfMZqp0Pjf+Xoqc9SkZX2FjtdP8lriV63oCkV//MKu48mi/9PvKqCqb+MlZB5EnA4caA
tSrYzEXxPkp4Fjc5dNRjVohB1s3xdfQSWYRDW8E1wgU01x+BxneaQOg7aJPe8oasdI5If7v14/ZZ
HPvI5lT2lDdcTVfdOuQ1uHtcPsLAgXk5hSdhSF9gW2ndD3anqF1H8vt0RF5UvpU8ucuQBDeaR69q
mS8XVil2u86y34Tdf6S72zKwPnVa7ziOPCutZLpkzA9sqmFV7wMetp1LXVz+cgVSKx2P+VuK1Azg
jypWk1sHQjxGbsaQMTvCGEqNa7ntSL2zXVyBPYOD6mU9n53j8KUs9u37L1PnSD+fo25KUiGm3l19
pB40XgaVvYiFCA67GHq+sFQdaArlbWGwEenEsGtqIj0Ns9R4aAxkNxqoJYtMTCztterXZiWra7tK
3BxwsMi3/d8xX8LmBwaownv2i5JmmNfPqSDgSuSgE3RQbJO7rP9oMfnra/B31unk2+Sjc8I9bC2d
1cFvjJqmIjZRUr2Y53k9KT1cD5YrSbF3S5p5biLJbNY4HBpSJLIQSjwWZY+8W7LJE4zjhMwXKWGv
1AHe278j7+qWuiFl+HpFlkyOsyoGvtEB9TbJLbPtZnrwgz/jyHyYPggkD4/0pn2nWqz+XjMvCwhg
BlvVOC3h9Dez8BaNn8YG+cfaICK8wQ6sdTj16rnlGrcbP9OCRzKq+vTn/7pKPg87hEB/6XZXUhZT
+D7aU2vPMAYxFgi+OvBCByi+jFHLLd5NX9Z0xV+m244y3/zim6PD6yTz6i5PKr75yTvcPpprtT2e
+LSO8r0Y/L9V062ACjXt/zwoBR0Rk4RRxRMBFsQWeJzarqU9V1Wohwhwh8GYoFqCM9t8KPoXYbrU
kSAaLiade/bZLnC30zxcFDC+cBmnxZOETe9N2I/7lDohpJ8yWSZEaVK/3p4JET9SP7ohIodab7Pd
YyjWaGP0WpVLZeSauYgJPBxi2V3ok9SW+g51JAKLlJuNqYDOP1gK60tuiz2WtU/oeMPb86SsYnT/
QZDcVSUDyDQOB6Z6ctATOAaMc1+bk07wLvDSY9jnMni5xYyPpuisj2vmU9hfnJeJUldYnBQkCQmb
2zrJi3hp9BDNAfwrXN+gkpsmqYhKesc571OJZBMNptF+nlO2+2pG2OjXuvhgvUDpUa9OLRu+PefP
MbKR4I6KM06MzWHiS29NfP7FSF9W1BvQbxtiMl3AkoRCkiJd1xIT/edCMe3yUGhwaUZInYSc081y
5LTu/5m7wG6hamFGtnhTbRDRVp+LVYroHysJuFcsCF/oyiduoxjszdrd2yY1tPBxwZtcHvAkOmPV
MfQewqSxH0xQ/0Oc8seuCKOVBy7OMl2MddtgSJYiYOvTKcQWSAemcsDQDK0zx5PaGDVZbgDaoPEe
b727CgUoid2rbJlPcQI5bGrf4k836Qz2iep2haEWG8qPE4cNAZkAM/5Pqk9XmX4SRfurpqDdP2qD
yZKgJ+ukko6Nd7vAXkCrcIWceZs/3ueRCVchx2vE+a3xaQe7l+VsQn3AJRBLSP+tGVDk5A+hIdSK
VxFOUYEbffcTUqIJSaEGyN5BxqCiujAO7G50NvT6KmCSaFjdCMbSUy491nuW37FNis+fXYN7ENQE
W1u9iGCRJHKcrQy3OHy76ghycDOlH5rMy+F2ug8lrKuMmLuVgiJYoA083bQ7BsI5UHa5ig558uKY
17vWIK2BPSXE1fZ/elZMzit2PoHFGPhxQgHvqdry64BPCuqkl+2cY7FIdAMy3VkkrkheYkUT8paL
UN2twBksMcJDbn7j/sLREXJL2XItDdwy7yPRiIfAIdtZ1yGcqJsnIk6s7+M1o1blLTLWxZJFKQlv
BN/DP+2j9hoUFL5m/ILs8+l255EKlLNsT4R/CdcvFU1m3EKXxmDK08nr8yzMOc+hxjasa9L/uURP
OrQAltO61QTpgjCE/I2Oh7IiDff/lwzOm8xJGdY+w64+4ohDgUYO5Vd8o+h0VBLClxEoCjHyBPqk
Fo8GUjmvSvQHzg9C9vLz4/9EsjVjJje8MRgbXkMlI+Z/ObHUsO7cCcjkbNM8dKnJS6ccg1UxKtyt
9HX5PjexxG2EcJX8v3Yq6R1zushI9xWI81sjRwCqjMHTRf5en+5CXUYcJSGK8iObWbAuqsUCL0pI
ed4LDDoOX8flsUdMznOQg7xytUlknTmEnbD0hh1+7Zx0evIXyx3zn8+8zjhBgAnpmhajHAxHy9jh
GyCwDv3MbpWTqGDsy9X0WPFoFtgSARcFFjhDZBS+TVu7wrCKuHN4DbTZlFdqTDCY27VpGGlldYOf
ChbTgay/ogM2nt85eHhXXs0dSJO3xm2HTjuyNWVGdScxnI4fdbpinNzbcF695+u/3dihy7YXYIOo
UCyrujRHVIe5M2I7dL86j8XGsZR4s+0UrBLhV0yR0iuq7GYISZRSoIdFbi1UA+ing/y0JPsMXJNO
NCCe4wwkGlxYPEnDYFxcMoBSWLVVOfOwVYwm/t8M9sRPHuyjh/OEUYKr7ZJYxD5OORY2oogsJd2k
IluZUbfKBlqP8PvnsB83EFxukqoPDcxrGzEj2JTI1RIpJEsR+R7jMhVqJfZJC2bkisdAqCRWUqY9
cLpJC17TPBYY9xmGIXwa+SM9kEWwX86xJCwDYjXtoQhbc9swmCfqQm84vc+jJLAREeflhNmG+iJY
WDxyZLhVSD1X+rJEDbbCuLaxwhFWw8q757Dq2S4JzcpGxtjkHp1t1MN/b0iUZkAXb2yNQszTVkOl
DyfY8nRSEv/1YppaXI3aq5HIZSC0Rh6bFnwBI0aDdRoYR3Wo9NImCQHBVcdjs9W+l9RDvLOjRyyM
Ygng18IpzXsoZYqNQRMuBrykMrULiJAaaljlN7aQXt4ujY8Toa7vEb9sHMyJeVtLMPi911fDKdMX
vlkkT2w+id7rC0YAlzH1zKM8scfWPr8RMdJcAoWbPO1e3YQp5MNkjWKq4Ppn/DldZ9pmvqCer+KX
GrYdWu2pUqvFNFfTmu8J/0Q4wnCR2KAIXG/A9AVDl+7dvrVfJ5NKYTU0dPtvDV3hCX4fDGutD5nd
zup8N6b2KlPUZPdPbqew7NTqueHy/8VnZJSS39M7Pje3BpCkuHPVT+S/4ABSvewZAbGQUMUfSPbU
pEI4O6aNKHWnkCdQHWnMivNAbJylpVNF7bwCc35NkDeg+e/yiikYWaJsZjaTcxCuetwPAINXVnWr
5UXsdt31fHBNaFLD8lAiK2/2PEq4NB9vWL9/cca+xhEPjq2sDiPU6DsgSfNFMKfe0TTG3bjCIQ83
qw3AQ85AhbokMxMgIuZHweP1o0924105/+W+yl7ha1U15ccA16tCYOAHjT62Cz71QGSGpRQ+zbbH
U3Tc74jEDa/vLkuO+ddU+UzgVUcKfLLKNaeV+9eYoDuuM62BcJ5hToiDifgxy9AxW8qMZ/CJGJwc
Y1zZ80OmKAbAJtG8bRhchc9arQyMJT+1zEYGHattVDKpY0XutIE0t9gekQNJAIS6FGMb1qDqKuQR
Yc+TOIejZr18zTTBjM7fIWCZxugG97XHqCVYUR4bQd38hHbZUaMDdlQCz86EsBMCgT8Ki3YatGXj
TcDHkaTu8EOvHhgUTSlllfBeoBN9AgttwaVxse+4/558JofGSFSXyJMD9g9j3MQl5q+R+4Nwpqfd
BmtRgPc1NTGZHMHT82zr1S4UrYKzCH7pOYcAlW+tzWAtxzhgRTyrONn+sa/rvAaMQsbciZduZG0U
dVquglz309qIJNMN5D8a4G5IDkDlD9Ye4RDVIWh1KLOMdjKFjRY8ci2EeKMi7wAzow2vX4JSV9LE
kE4OChbxGz0sItV/RoNVD/AYamsZ8uchVQ4lQ+OMhTNrJxjm/Xkv9v1H71Y1Gw+RS5sV7twGNSG3
OSFGBwl4cSmT1OZie9dvcKiT2NlQD9Z3omJycmzjW+0jzNKlk3jEVCy7bemOooGbjaOeD+T4XDtr
oZqMlYthNOsLC2UBgmAMQ/fp9SyG+dUXKzgoKzXyQjG0ZNJ+9/H44Grx3pUA2JlHboUmBq4VWP76
EifZ4wGMEB8LUC+t7r0FpC7o8TyY0DpPW8Pc6fNhRThMETMdS2SYAEBnmfQlPXJWHreSdSful3t5
kRqZpp0it/lePwcNETq+2rrwUVX0rwXplHV46lpFPYqXKVDmk+xriN9JgXIohYX5AcGXX5SNkCT0
Cov2irQkbl3Da7ZeeRRje0p1I0i6qdLWoP9eRyfPy1HCQanLC31MbZHzvsOQ4eXRdtsvRpPOgYUz
VwYz3jxElCltFk5DBT7KKZ10MeCTEExr6+NaqmnGYYWWzui/xZUntK17j0ElZKruz/DQYimfDbQj
G5SCiqbyXscZIWLI7FZmJY2CjoZVtXzDUzhtmtsATHvjhoBXxbdgnKPzcxPTggPPigsn/QkN97bU
5pp1dLPVcQLVBRYfUg9VIBoCjd36AKjaWfAiH2KiSoix2h5YZ5HxYs9YSQO2WzttOiD3e4Cx+0W9
DxjqRxRbTFHjKbordmLcFysJs+sc3GQrCbwD3NRBhfp5lpow3isf7JTGmNm6CeQfcQ9OHHX7+HyV
IHRnCQJV0fXNc31dNH4UxuincwVQsdm/2fDlaOyeKAwuujLJ0EVuYJnzqUM9BxdGgC+PPVHJ3mEk
5Oxzo41+1PuuGLEy2pXgW2XTXC0U9Dl40203d5UBj7Kn2G7NxpvWwGdzmI+zdcYxlCzxKAK3Wt8M
dSN/4szLHZm+hJ/cq3o47w+D21qlZYIsLBcx3k92CGVqnqW15z5R1UwNLvq9rk2gPCt03FsL6KeC
sq8xT6gB6Vqrf2L2uOjgme1MbfevfoGOM52rFnvRALH3OWG5UQHM6vs8mN+BvBEXEOISqXJ8e/cw
KZsSt5mLfVrYdAImQOgCGk3bBxHYHvNWpCLFMEry1j5vgdQsxFkoItjeai+xK46b2IvQGnWZEWuH
3PpOBOKJRpHT7DIvcQxar415g/fJC2Tmg7ltwkcNDjwNx9lnwFZQhUu3gyth24YLai+15WCSWLMr
LWqDxc/xMjzLDFQs6xdxXPAtDs1zNTSML6dVzxNI7hyZLnKiyLIhdn/qvUPEqxEzd5hRcMgDJYVg
sjoTPzzgGGyhXMgaCNIUHTNZtqne6JpBxqsXXCE4MuUg79oxPrYs75xUfq9qlHbpw+eO43plyFbD
pOLWVe1XgKqXajP/01OjuPlnopEbWyzkm3gHSH4TFFNN73hKYVcNsEdYvA4gJSw8zbN4ZxLB52i/
5A7I9s/sI3UFgGftJGd0iLehocKygEytTXyj+xkRksj+40RvDSf2IUfCEY2IdLR9YQKg6MKPbCtY
uCSa3PVdYf4lrtQ6iflMYLAcck7F3jcFK0pPhLN5DJpgTWJhgsI9D8MglkVcIfIIRl9lTk7/qLEF
6Rlm4baJruwc0zCKjyLDK7D0bMfa5DjeBvrmvh1l3jb6CVrM6I8XvWZeKtfW+UXvBt0dT6exvfxE
gp5EQyJo61TjqDmYezZau8oV0FWt1IVOs4my24wop1wEYbe8G+6cy/5+ZyqcNxePxOH0bblMW4UC
XhUSoLsECC56LrpILdeBaWINsNRBG9/2ARv5JjpLejsdTz+q25pFmqILh9y97KYQcgg2H/2kZ3n4
su1YiOOzk+2K2Kj64Miw1iO47cAVxGjum7MsfmF2IKMO5qEXQK3MZzZ2TH3pE6z4I0wae/hva55s
nxkxpGS3w2Zpb5Hfs8WBy0wRlnV1llGeDK29dUExmVIO13sYjcz0Yk8IDmPscadRPJERgqoho0T6
oes/plynz3J54uKXZYut4DFGcGzoY6hF+Zc3dilRodf+G5VloDxgjqDoMhOlQC2gCj334B3JyJGr
gLPugd7B5RkpMk1nVJ1TjxbTY5CbVEHknPgS8Rh8lidHK13hFsDHLKnhmkosPZTsQOQ8TY3X4rIv
8OHvhK8H6LxQ5eCpYCLvXWsNVszGwJEbl4kTfZMmLg29hiQXcO+PVPK0q7t6i62oPUQQZtkMTwHP
MT8Wx57eeqbZkp95NdqwfVDA2o93qVxabeuwC19hD4g27/9TzLjaBBalaWcyuysLx5VD0VJveKlw
L33QquWFQuPXeaa8muUjWzMSl96Rt/6EIrI9dmVvN+FRf922OyGkfJlwlwcwmUwR/M69RoHklr7E
mmQxIpowgkXYoP/T0gEy0bILM98j57xNzT9MojfqBjbwVsonMXOlJKaql/Ehat8jtQyugUo1SmG/
mZOayeFRfge2oR4ZYrKw9nZHA24uPcFeCHUzP4mS36ixPBVOtATfKsDVjNJkP2F7/iS9WVJ4m3Cb
URZNurDUVicjrkecAIJPTAd3mKADKXP/1LAINuieBYZrRxvpauG6ZSqom2CNlC09+3I//2WYO3ud
0UJhPdoAGRdWXy+GiWvd/U9uSF+kX0kmCGJ1rVl40xVafrKdAfq7SnYVPIdPBbhPTj9IEFb1wskw
pnDZruCJbiryJHU6AsupSOgP4yEhZdalFWZYBPxdyIJ+uxnhemZ954IZnkp/eAzZ6RCAB0kBcAcA
FTiAKmYXjrz1xR4V9cdpq5vNtUZEuUT8EnRyGcZavlLutQAh/axXhHVd9PfwM/wTosa6XZN5/sFd
JiPafP4Y5NL1hdD0cyLxd/cnlJ2YwVLQ+C8qGmgkiBDv4fOA00YdF5JF2zTwHdQFOdsvgJz7MMlw
7tnlOBb7gMM6g9jg6wzQR0dCMPnWYWiWGT3GEtYR4pRNOnwDfyLl+I6Oqr14XwwsoCsJ
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
