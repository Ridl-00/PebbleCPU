// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top data_way1_bank2 -prefix
//               data_way1_bank2_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way1_bank2
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
  data_way1_bank2_blk_mem_gen_v8_4_7 U0
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
