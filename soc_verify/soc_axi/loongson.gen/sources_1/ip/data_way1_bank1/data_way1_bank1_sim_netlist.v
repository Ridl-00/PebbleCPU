// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top data_way1_bank1 -prefix
//               data_way1_bank1_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way1_bank1
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
  data_way1_bank1_blk_mem_gen_v8_4_7 U0
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
