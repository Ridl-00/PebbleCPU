// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top data_way0_bank3 -prefix
//               data_way0_bank3_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way0_bank3
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
  data_way0_bank3_blk_mem_gen_v8_4_7 U0
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
