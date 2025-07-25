// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_way1_bank1 -prefix
//               inst_way1_bank1_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_way1_bank1
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
  inst_way1_bank1_blk_mem_gen_v8_4_7 U0
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
6iWcBLAAyvNMUPfS5kHQo1RZ37qItaqo7CeL5k7TAdF6fulJna2Ba+xxdt/CucQwV1EvxkDoNAAp
IaDsRPClZ8tDn6mf3Ao+zoQjtldoORWDY3XmRQ2M1k1mNQ4URM2IHBnmfLBvos1mELvCJ/NJEHlF
AB87GAvc9gal1Gq30y4e4+EWdnGEKfI8XtWBorwfR4JEsg7YBSrQgUroZm2xWTrEix/CsmOYzz3m
7cl198LsF9wL5yubeFQoqARiwaRZ0nVGy87GNDL4bPs88nzbTB/HN9vf0twrqN3npnwiKNsTZpSq
vFcSH0OEm2JjfEjQhSLHfTntC7x8E7tE7bIch1/J6FTfyKrrWt8GaifrTD61mLbcGkf4evxVpom5
K6SPUwwoZOjAR5vAiE6Nw4QMQ/6QIyfVsTLFB3kETcTw08Vuli5rTF4opDGq5ksT8NJi1ZO/TfH4
vi7oGkFuwofktxjMPfAHIgxFjHdSoosrt6q0YprlsRvnai+UEd53z9gIW6PlYPc3Ir1KA+MfUTbh
o8bmyiquuh4m5eW6RwOgsJMVoRWBssjwi+FDkkyi3LRDL5B1wN6su2z29eJ6FdYDw6NrFLuGZfR4
LtDowSZ15JhQhfVzBugoz3a40x33OTuppKME1bFbrmMkRHXf55DzH2G7q3yhnuVlotAi6WxN9J/E
We1bbornxmyQrTB/NrlKC+zG7JxLLFAr+JZjycq4iqFmTeU5iDyaaLDcC34lGzsSkBKhkSy6iDOV
cZv8Z651ymBPdsrl4jfpoxSxcoLoD4XhFLyLz21aUrRLlCy6t71WNZZ1vVcRXMCaPJ8q4MQV7BsT
HFNmcIsfbu/QDYb43aJhq+kUbmgy5sP8rBDlB9u1iHewe/EfkuQZace8nlSVNeqstHRW/VEM/GMw
JFItOY8gyrx+pkkUI6OeS5N4UkBpfq61atPJRVZtYj1xjDjZFc210tgD1zMnwy6YGBoo60uItsGf
4X2iQPtaruB3PA6aJQliJs2lKD0zNAUFrc5OrvDnUXSrYEdJmW0dW+jbPOgxQjdNNhHTskPKUtEJ
wMBBFYAe51P5RSSZyKkM/GuqSCVT0xTgUbRK7VDJlR5iEmI1lqu9bcpm0TE2kh41icgG5cdjLH3q
G33ErmcO68CG1diBDOsIC8M4XlYf49gvCZnFfZHHCotz/ZJV0Xff0qKR3KnCWsXIs/+59TBh8tZC
erDMEutIghdNh6xQXHLywWZKRJHECfGhqaHv+Hbk2OpyDmxhtJl/kFvMsUETfS6W3l5DgtrPU6lK
mrtnAl56z1VBo6MWUfTpQ3gQ4EFSfdHAPYgignPke6rJLhxywKO9Thokj97Go+pTkxq0YCAWEl7l
6XQBbik9yN7M/bmIDHAzgWWq3QoLD/b/FYL13bm7SIQ4d8ZUHKu2cEUjGfNxM1xTbGxfEfCU3gUr
ZXEg043wv4N2sxY/dHRm03Rr1csUvnN/5/7ZOGYBGTSZkRnpr7DatHjsDobsTUMY4sWQbTNb/DWZ
y30uD8S+RZcWdNbsoRTZdCnq849jGWvqMsIpFgRMzu5CuSB30e5GDiKHWy9QSGJ5TE0f8KjjaVrR
RB+weLhh39INZ4RKP+DT0MyNx444zHTiBtQEPuoCcoXc39LpKF9hkaYEQsGnUjndyhjhIoIKyO7I
0o1fvcBQZ9Jp0zopJZtUehu2uzDeVFpb9BBcNwMpCPUKPBZZictiJ+fBmmEUFaBoTIcoDKVJXg6o
/pDJo/pVDtoXR+lVl3z1jzvlahkk+N6li7fCignXkxi1E9JXMjizecT5NxPdew6m2jtsnE/DHFgl
UlEdo6hEkXf+8rij0HdwwjKeIKR8AERRnHeQDjHHLjZOVNwodZlPGCqy3nrubEHNV2elY0uqlNXJ
jeOoOIaNM+39na6MrvvumYWyusNJ8ig510lNO8+rGpiwqIU317/5aBk+tdkLVLCzHNodc1u9MhkZ
BPEHrWPPK5iWVkidx4r9hwE6xP87cI0y5qRVupeYVfnTQFVC9JT5l08d70BCBbq25xVde8LR2/FI
Q5uvxvP69Pxf1zDVx/WrHGbluY3LpWY0c8/iG0iGQ4l78snpkmNnkAj232G1G8Wsdfi9Ke0QA/IW
AvFFO9Giu8SQDEzEO0w9nsF8PXQ65uJ5ct2QyL6bDXS9I48CZpibtsxx6bHgJgz+2MBKwkJtcG8h
ItSK8DwVvIC8Sumfjc3U+KehWfcXD6iJXJtGae08jyfrxeErGr1TICSYQj9K/P8tsAjotamXErq0
JMJ6vnYVyxgG+e/CANtFKTnre8B5sBa5M0ZNlJZKjlRrfo0ts4ZJHDUUvwejkunxGhivmYYV5ioG
RHxOd0KFU4PPlVPTUyfaIhWlTN29yjgNezmVIgh9ohWq9RCzTVkYHt+R29FrrC9lNVMBvpUCCSwe
YUVgV6cFASrJegXj4VZPj2WnRjvVaWvL+9hhWYkRBzg5ETfW9Qdck0cd4AQannEOUBnHAEO4dlMc
antK2I0hNTali+q+8rjpWke7/3+dieL8g2S5uoK64/6qad+p5kJ0eFbQ28zVbVKU46O2ADyiCKp7
f1Rb1VffDgRkJU18Qqg0C7LXVQLKzhYq/603Kte01vlJNKZktg7nKFdHHFysnUtqB3rzehX7CVBw
hJN5zKYhZmGTlGMxd84cIcO7aq6Zh+D25eyxEHXdjE/e/WJmmE5T+HwdjcOq0GfM3QN+L3DM2FSc
SYrOOFvVGeULA1SL9jBxzQRudDb6rJXgQ8NCacDeE8n3a2LOcWO+KVhS36O1ELb+gSHX6U5NQfqF
RhA1UahYJpPKCPJZeMZ/QuJ0MkY4oE7+HDYJOz6XPqMSNoX+QYBpW3rK4yfXBThXiyfrwjsziwHO
RZtYvI/fVl90SDqP3kPkQ4UheLtUV3SwaWcm/udJ+AfqPKO6H0yMZ9M1hGAx0ETUaBWQ6m5VbTT2
j91iMXrVmryj3yjgylhjf3ugw32adaHPqpHrB9ATSVStHN1aBLmAnaaZyskFf4LMvgt+1PYoUlh8
2fhqwQh0oheOJRotTcqPeAN9hHhpBu7AMc/6zCALlHglafyaVqJ8839pqrIxhFmFKMO/rgWmY9AC
NaGfN1uiR2ReXqvpQP2ybPmjZkZg0eEM2Ndk9PpkHI1by5psvsheOOLOz4OxjdSS5ix36+7DCslw
1DC5ccDm4JPbLxxuAhdggP4SqLOExighEfpDBR91u7ND5EylSj7hmOQOChkgH/q5FDwBYD6fHm2y
P+Fl53sgDsBVlSe3yvGAauC7J6YEvtttkkYAZJ44+hVvDFwAyx0YDrDipmoU9umJun8lJamb+RBC
NO+VKQ5g9hgSdL7DGx7DPpW1DsNIY0qWt5vFIkR6Pro0c4KQlHNwnfObtNI6GEjsdqhEvVZD6qIz
/4fBpX7cGojQtXS79NhYYxT9pgVjYNXen/aDoH9aKf5oQgpSnrK41oXwcPYanc5wvL+XFciw4CM5
5thHboX6D7vHn9YQAX26ac+kAYpLRGAh854lqIh/AROhAIbSgekRLlvG8ofPBnrD76p3bo9XcjQf
FX51L+PIZ4BKg128CpoTnPFYmXOVtaEGh+wkvtLhiBJI5z1E81om2v0VNly68LA6M+4dNFtWxLfg
wQKJp2pouDfIWy7bba5kuMQoZwfGSPt3Z/YuFMjQjvJPjhEvmhomQPwKixupM0oB+l1nQNzQ9Vg/
PqPWvs5EnoS8yXZWmIUZxP82v3QuebaxwuoFEgtq4bRIQfy7/FgYh5SQuaQJu76gzWUpbtOCWT/j
1Oat7TjqLeIg4weYlfRe2IKcwSVY5DdyDFA08Uk5yAW74hMfWZqkOALf/z6KA+yS2N8xkIa52zR2
4dosnSPCF+xF0ozmo0zGvJ0Ye8nKdvBH0cX1TT5+NuNoBDCQFjFqIORZp7aPjhigPG/ScDIBm82B
eELMYCUn0qEqGvpbM9IsLf/mPcwPoB25xRQ7g2BvofsyMEBXq/0F2iewJmCJ0wlLtsONKRAS2sDl
yfM/jn9azDwwbPbE+6iO4euU7odAdolB67euFFoqZGJgD3v9Fzp/BabavPhRky7wa/keFPISP8eU
Rptyg/qowO/7WCpPca7oCvART9zi/hEN0ydtSHxaIvL4ESx+Hhfy5i5c4L5u7MB0a7uw2R9GByHV
32F4Yu+JCYl7aWL6DUQnVNjExaIwE90JBiUBBbRZZhD03p/OcKx1EdkhXTtAb18itpOhvX5opKm2
OhQKOXPSD2QY4QGLNbB54/NTKxhE6+A/6kQF9mQ9bjWz7AU7/mm5gL3F9999Lh3dok5UtAoW65yf
TP1Xm7fRQJEQZa/udXbKWHfCLhWrSTXWaS/XXYIS+9WEJID+7tG0Fwk1ehgUAWeeWpo+ORrpiFfN
+umAYCDb9xSh6/A0Yvd7d3A/2mobVbUCcGBMMlRT/J1h0cRX1j7YJVJsku9qcgMj2rwfuLupRW+7
9np+A0tR9ZeQws5bMUqUhsiRVnJHE8A12BnQ4C1MsKyQfq8Ae8evOUOuuQs4TmE/rj60WLClysrL
ZZ+5C972DbhgTBaAdowP5SN/260iKGW9cnfZzJaUcEOCyd0RPMcuNLNnd0F/cV83zPAl5mFqR/2l
39hrG55cjw6dEGHqUdDOfwg9QFLQdNY1i9vP/ugHnsz7Ahiw3yn2NqR3eU3Am9104EoG3BmlwC97
2pMVsa/PDlkPB7quuyo2HXfFSlg/oO2gK3xXMGEmJuNnXJjvphmCgC5/wotTJrzXZRBv1D9ZSH2g
3yne+GHU+alKRpop5Pp3ZOaO/Zr5ekEbsHm3mJyHIWJSUXw0hTjn/1JTP5wunvJ+pdVm40Q02rkk
+mCIeV+X9p7/ldSZ4f+UEKKv6evSLvDdJocjqtDKVXtyvuw+L0tGYvNQg1YCUXM9PvGSGE4fKbrP
RZ4DqveGGLLY1atEbqUanPNNkJIAYH7P+HFHPf+bqheqN9hihfkqd8RbRDRriRu2dR7PJ5fJ0y70
I3qByjg5UMvkmswiA2qx6/LiMW8dB35KSsaqUVHBnx/WsGsAUxn7hkpcKllCuGVEIALXZH1O1jGh
Q88LFMFL/zcVO4EpuXZxlMN29HiZabe3f5zSdQgiJup4N9P9t1UrS3/jcvKYkYlMg8DgJp20MtbT
PTIMFZGj109gFrbq0QaAGyMhEvRhEpKxrinwTBupMIaldV+X4vFsTGSWO4jE4QZbB2EwOEqNHAdz
6wAk3vz9uwk0sylMC5/yqnNUdAtG8Dqy9q2ORwH9MRxZa9ggVBHHYXvebtdatM3nkcN8XAZAUJ7S
FjavKZ5vTSm6O6Jx/tcGRJXSq0+Uiwx/FE0mVQSHV6l4pzl3BkkrNRJeUpc8QPto8E0Fk0Fwqj6Q
0DNzMc96mZ8KoJiLnzloadIz79xtyHnPcJOm4uZ8XC73SkaA+6MuZCqyfxdy5m+MrB6ZYrYQC5m6
HUYNMqpMZsBWWS2cFuD/ww1Ir1rMrTMzzby6XOLvAIk45xos+AKeo9SwtoKJs8BRI/Jy50kfRgWZ
sGgLIZ/FZEyMhwSNBwQr14k+1EmSaeVvbaIdN0kihgle7nFfDEFAWM4/ikzuSFoCTpI4dvCt0vnN
XWK9TgAcoy4ZXq5Dq1m+3T+0YqLIbG16By56AVb8G2jo/t2rcMXlu5JDF9JLOd4Ues30m9SoFJZU
quxPg866wEHy3Qm/+T6o9vziOY4R6JpJYfV8HmDFK5YbaxdRc7HFiF3a09/vCukT8AVGmpnIntZf
WHm0FVgvdqdWrA1NVin5UIVwCruKgOjHg53DtTAf832r9Lmr/+CF2f9wsko7Y56yTqoO5iXDayR/
Yl1ttGBy1JWd8dMPapdHn2rprtr+yy9TKzezrt174yU53KilRSeMLlxjEikcrlR7PT330XHC0NxD
S1r8GmFD09v5Wkbl3JLtB7977HwJJOrzKFdKBd3ARmS7Btq6gT4+yePHm4XHVLxD/6R+iDccGLhz
NxozggJ1lf5hHl74v4PXjL9AVoficzGeNsPjFHcAyKHyVdsD4qPyQuv6ZUZ4kXaF3Rdbo8vbJSJQ
QBNstBsBfnpWnBLjd51H3mS53C2JsseN9V+s1Ux+6yrtj/0j+666M7rK3Wsj0+d+gTsscvFB49Ah
zOsfmm6LRgcwdZ9DuEgTBA4pLdWh0olSoOAJLp5TlxybpG6aHfA6+MwwYuf39GxdkvhgEZSS9Xb5
MbeQ7hIBmOh9pbqKoFB+y8v/ZsyEK8hGDy4vXrEKPgZvRpZ9hBs9zaySiSrvur6D3Xxvygs4wotN
P1304UMC0VwdbuEuAofsjMiAMOA43ul9OzldsWKT2ncL8Y6ZgIjn7Ac/YHv6HacBwOHap1MvkFCg
CKQO/0tD52+B++WggDWHmuqY2UIxiDYSTQPO8W6IBH8IhbbzBZNKbM1vz3mLJtqz7rLiq1tdzGgO
zIUfNLJzZfspXpTNLnCqnTqW1i8OH06SNnIxM1wOzitvkcf24F5QdT/oX1IhvO8clqkNLcAC/eYH
LdnPNNGQJXqyvGEIaikSA0kO+3VqzsziBtvGJeBhn3jbSFDRou31RI7jmzRw4/9+OmbDdCQRKUn2
OANLlJ9iNTR5RFuoXr+/ME8foOlgbXXEJcibpHmoZDeop2vt6V55/gUT1A8h19Z4oQCFPxOSH8hy
rDd8jmgbSvmcogyu7ZAaiQZSoknCJZbOWJqr2hU8aNlkMTrgNh1A2WSpftIP0lTrgVtjZTCwLf/A
hOjairUxF6CxW40iC1Udq/SMWOImFztiT/vAZ0iQluw2C4RM/36DuQ7dXxVs6Y61aGtjkIlA9UX+
0uEmdaR3L1PkOSrx3E4cJCBEvc1aBPkEOI6HC7jVJOjhmxK3Zn/eWSa2MD6SzgMjGCLVOHxIYFsk
6uneEf3348fRY+yYaVJ0iRLhRSPUUVuH+lEmcVIUggbOKSZ/nykoABClAW1xfyvhyCcFIF4oWHwQ
X2v3zTfYNF7vCitsXKAuqJerxX22bDPbDuQ6m2jj8F92JgKswVPvKuiyNdpVRAycPveq9ycoQ1vG
53Gi88prsUBR+0dR8RPtKPjK+l1HuZUzmZwCn7tnuvukoZwxasCtDU8xDsCzkwdOOWCu/FkkKul3
PB/6Lukbo4UGKyV9QwdJg2/GEeb1HXsIJEQq4agKlCOamuVhaEq2qf5MkA7Ny7C7i0167+GSulO9
o0Wqu3qgKSX3mZS/A7a/s/rZA0bBxguVlxau3tfbX9VKFdxpGwLyTk6XAqIpyssjY+8tXNvGmrL5
neaShHMgMcJoG3hMN6kl53ZcAgQ1EORRrecwKZMLwawquGH0k+HdAS3iXkRyQAVB73qxs3PNuPeU
RAM1tIDQKxv2maOhtRRxYa0NTbf+Md6PCZajN0MyEkKYeE9J5nU0kI+SjBPI0iUAfISGuXfljdcg
QmIzdgyKXUQeUP0B+dyyFWGwm3RYnuO7KaSIVBy9oL4/bxgfC09OzfDuxADThxI/F5jtIGqo5zSN
W+f2TQ9GkUFw0Co4Ptvit9VDxQeXqAA8oYEVQeqEx+7V4ZD/nHqAyjEEbl1sZ64QgoPpeHRMSpSd
YxnwMw7olu8CsN34/ukqEZWYhXiPTQ18W7NidUUwFx2mz1vHNXHqvCMyklqde1L/UQbXvpKGJc+a
1OyuRPik2GhvwyF2YhonxGvHNf3aqHYNztE6ONPcPkwLN+WC4i7cWYjDjPdxvRhVB7wJBm0T+oVi
2HbJFUdsi2z13EUuX9Hi9eFD6X/Qnj/ozAoJi4CH7ZuxOHfp3mf6PuVJMddhZE8VO/WyKwaV5TXZ
vm4jCY9KJVvYaQmktbgTeBoIHHP7TJ2Z+QwmY0pY/iaO136NEjqviiueHL/8QJbfnUqRDzi9cEPA
hOWwY3TiU60B1A7/GXQW8XpSEZN2+oWEmw+eDFqkAF2fDGd9g7UZUpLYi3w1BM0dffVl9T7973+p
Yi0bQg0eZ7Ang/922+LYuWcmFoGtjZ3gWK67M2cTXZzrh84Wci8xiizrOkdKhr/Kmd5E0LXnVNIK
Xlxyt5NLzf1It4NRqat6u277QccoKhJpSQhCqdSEtgQsebS5wQRWUiTYklWk7+lymjiqLBeOAalM
GaKlGc1zLfmtIPFsCfCiyXBQ3PgapJAWQVpNg2AQf/U6XInZuAIp54ldHx65h1CklX3+HpscvgNS
a/RVYNIdFkynj/40YFzrvASucXOswWcc9e2q/dosapuD60gBALk9NX8sWXBF013vaOE74vV57zTa
0ObDujlwKgPDM0s9C0hpicVoIIeC+JG7ljgs0ONIYjLBAZN+NAFB5LqZIHLc1w95b8L9Mq7oOQ1s
Z2jxoVwkuEQfdKxrAX5QiZj5WOKtSZq3oGvoDlZizb5Y89x/J0Bsor1ZshIVXpKjJf5JL2akDgmi
+A3hUKTQeId0ki7cApubGqfLigQCfHaUnFBCP5a0xgXsXJbyBps/mW3Fx+WKROjtf5YsXGcD01Zf
DMPNxkh6xd1ERFp++ObT40ztkIlqtAsgLd7nELbnrI0UKbXEbVfw9QUS666L618rA3DO31CwiNu1
E7YHnpKlfUrFFmxUSJlT1MG42ulhgke+zHDtYVaWuly1PFzSnrCcawI/nra6AogHyOmssHtEj9NB
YtyWTbepytZ9eOz/uMQZcEigx5piXrMdGxUJ1dg50JhSlBuPB+OzXUmrJnWP8smuDxHpG4omZqfK
WO5MCcv4MNNYj7lrOXYJSV2shZ34fNvkN+yg+/kZMyYkIvduglxSrpHHUkt9XKMUMNXjPKBWDdam
U0s97QK/w/RKNf9bkMfte5dDOl78mi93AlJnUtVK6mGcstpDvc9ayigefejUXkSYwL2lJo65DlVV
T1IPpehPZvfHdM5Z42Wx19A/QBlc7yJkFzEUhFaFxijPvCjLxTIwfXMwfPPCmwA63wDJcs3v1llh
YtJUAt/i5qy4fqFdnNVi5X3PW5cuRlFw2ylDB9+FVDK0Mir4yuMjxd+G5HNqVB7v6KLzy3pml1xk
7Y+MjZEL72axcMOpojlhKW2WO1LhFBRC5VDoT/lWW/L1zUYxnLqWSNIjCdxIdzvu+OMQMTNwbmVh
6+6V9kVjggiEebnfipJxH/MdMAkZOjWRo51qBb35e4w6f3vxRMdMo8aRea+uLJ+iPZxeOMIhWolC
8wE+6Z3h61ccgC3Rc5c9fJTqDrW7aI6SpzdiQ4lMwdd3UXoViaCHbF1j/n9Mum93857oZRR8EPcb
5gPCa80qcdr7eEVMlCVGh6WxPg/busKwCB+SgRukBQFmChwPDurFlwh97+VBomPDwY0+YnkYOL6A
nvNwF4Stf+nsFwsHrdIsKdRLsh9Wklo23Q0OYsPH6+aKuQj/l25UcxdmwjibXTtVvpzH/AM5LZb0
5mVgw6UbIuMU0GnJXq9eqSmPPhz4P7IXliFBqDlTS+yfbdxo4NGX4Yk4WBIA3Mtg9MeTIZJdGCon
3pdMzErPpCDwLW55vXVEA3rpNBqlpip++loKNrE7fT14jn6L2jobSDMdBTEL7fqXzobQblZN9fhA
iqdmjMp/NgIv+CP+y0bEoOutBebSAAG1e8Jja14uIt+csKUn5UD5/Qy0rZQmvnsqDmrna5hCMBUq
u+O9BzE0JZqLJBSujJelpzUfeyXEID8L4bk89sK238XabIasuvnWxmHE3EBR/NYWFdOuzm60I1h/
ansHTfrXoHEKOZp44IBM72jTdtuCgT+Gp3S2udZjvsHKLaRRWLnXg13bECldnFfsG9Tu4ljQdMK4
sBv/xKGbindsgAeJ7o8NHsOfTGBjUZKRNSpMnFJ0miwrM7ZMu66WxaQqHLkQNUIS13biVg2D4K2E
Pc4iJTybt6KYZLTMlET1Zr1Ly1ToZrOXFWOv6EnB9ODOYr3KrshT0ydKSC2oKByRYdWF0TITIP9f
6lP8kucvTcNexr01nHbtjcShwYkkQikRMA/xJdm+P2hCHXNAxO/49UX6xrCF8WpKJki7L6t2i1ES
vlwK/0E050dMNylsNtOCr8y3OdcsWpC7YCs1BXv1h3SeTvsYKIQvk+ZRaDWZ6/XEZR8RWAqdD4qQ
KtQfxm5k2ONJZ+KTdtVjIdlYyUkU41j+f2iXwWRfPHoq0gnDfC/WWsPTXcLIr9uA5aK/Xb6b/Wqa
EAZxebic1SCFz/8+KIzmMRT5ioG9ws/EdjXLRpOp4M6Odfa+T97IOddDu6j4KG6kwY88biSM8iNH
OH2AV0xxl/884z7mJPS5ol1J4ZPmwIs2fSDYdgDGAsV0IxG9xjKgWhQGdqaIHXwS76qkoFCBDYmh
cauqxFnVpriv9gGsSAx6Ne8Y3ENY3/vEycME6e54AZMZYS5LKG2Mm97zNW8xZOJyouOH5ZkGjAVX
be1u2MKgWyJuCijiSYlrzuiwBDnAwyZM4YkkIcVFjS/UaAjnJS/tlVyW5/sojxrm12IgGmTpOVsd
i1SeCmVLuCbnDLBkRig5vr2tzGYMaNaFaoIImn+z0F57/WoXJhcFyTnYuRikzvcj6tEo7IsTLFP6
yN3wKfpr2RV/egoIlQhc1TNFc2CK975mSgmZ2nL0x33EjbomKRt6uU70Vd4cgOoSgw1fEVT3zV8v
sd9p9CBMKWSP9JcxjxYaPZFP58MAVkuFr3RPcVobz4LDJH/9H5Aqs8KzAdfLPW9AMvi/ve/HI9nb
8/jkhdwPjX2Q/WvY+YqJS7ktIbvTiv3Z+f/ZvHlqMRtWk+3wPvWrXLF+t4Qzj1tSej957DJw6WbL
kgrzKtpqzY4xa54ehrgAJjeIP1KUgbWE+2V1IhyQU1XPkQNv5/gfQH3qez+t+vb7KpU1qDmwsXaJ
2SU2QXp1W2HkNf6x5PiayTqUiklTEZnDT2xtCRRDSVMlevNueCzj5dppTlHlX4j6sEa1N/ib4gxK
xQ0XGT4Mq35YBBqJKySC/TRdbu2hwO4xuG+xNL+Ao7rVbNWul2JN1YGYVDIgZC275pYISorYs+8R
bqua6LFv6TDFFJH30f5xZ/rwETYy8//6NXvRW2ahHiaQca26RfEAuEts4UioylDTcnPW+wSvd1VO
fWY5liqmrQxv5TZdsbSOuFnyXsgaH1PvC45njDQpHfey+0nb+Qub7tARfT6TYtmzoGwCyidtXPec
aQd9FBQ+hjtIvsoL1Ph66/hoLc53iCLR97WYZFZR4GQpi/dDVWPbmMHQgNNnxu610EifdPBjNNkq
NHt5EYIo8gmFY9YkH2E3lfmRQAguF4jTTxqn1jLHHzH/MXTnKo4+CYpp+6jv5JOAyqjeOMUP8gzJ
SIvGRUPGDtlQx+0nA1O1xHiNQ6RAIqFx3eX3kSNi9vfxy9GCAjucBgG7NzulvXGu0acyYcyFeSv9
iz+sv1B3PvGLrXuWBlpy25RAl6150YnVqupNNprINdzWiDCIoaMHCObPdfXK3YxVpT+Z6omxieMH
Rlx/HrBRbGFQk9xFeR+JNOvhdXB+3SBZ6cBrotG3H+EGVTsGJyLj6TX2pmPWAJYbjey90CXwCn1T
8/Er6w5dXMFFQDmJIPwEx+ipCppNqOVQ8WQNwFu+PLaB8u/wm0ZWhIgM/7gf5V4mnYBkLI1Zrfz1
+8i6Sd5cCuWwyl7wDR+vRp7QxWKu6TrOq3cpiCmAEVsySUYe1BRqeT6LZpT3mqf/l/muYcoKvIB+
aJ256tz9rd46qFmYMmSwCT6JIQwcb7E8+hvbaNvwTJV7ZqlazSE6UaNW8CrOfvxs5gpoysmSyj0b
wtlJjc5rFpfnwoZgWui7LrGu3alb6BZ4HeMrwq1oeJZc3mXqzk77sNbR6Eie7jUVJ6HPY6XMZPTQ
TtIFSiNZvrIgPd2UOaooBNty3+O31gQFHCNTL36XO8l6QsQtQ3YNjkHw4dL7H55Ba2GVM844sXmw
V3syb2ud7N6tzVCSucryVffexJ0fPvX3i/w61dsP+fUAmW77znSKjNlT2CIxMQr7q6yCBy+M/mVY
lpckBWndijafmutlZ3W6PoU/H5BE0DX/V4//Nvp+76ns0FRIo6LKMlEgSJ6s+puxoae1WjY76Dc6
fnf8pOCHhbJh+H3Fd0B07Xgyj/uoieO8tvWutpceXUN+QdAEeAIdzJiS7VCiosOoGYC0VD/0ognd
izmBjsjooEGktVh5+4Gb5vMeXFIxdVmAd/Hm0v5ckaTcWldccPxjcD747rI0RWHJ+WYfttaCQ0KI
Yb4mCabW+gzn5oPULF59nS7W7g3eaVgvcwTn2ExdmMRgBIdZIX7uImN7jK9k6oV+zDuuhdTxbvIK
fYtOkyj+IApb1cOy7LxTw1xMXtuhk1UvlM2DJbHzZ8I5pBp5uA+lfXmQE+LcGp88H9eqP66zgsE7
tdnlug76Hm5lLevD2KlhWDM76tlM+l9IrUBOfaBzZP6CeJ9yG3jC1EkVjrN8oOZXm91VwrhCmGT4
z6qzoXYx6snV+IPK9YBnv4hZYatEVfy8ougxtgSXi9nrCu8iiKKtZF8LzId8rHaYzcUgyvKP0+Tj
yxKUFiZAQ1/dBgQA7E48iMxavElKKbYRxRsXC7rEYT8QWLDxm57wU3NhTe6fEGjc0Ka/0kXwbMSS
DLHMvMxcFw3TSpxTGYhYKx83ExsJB4ZGUJUPBtNVOqKusfijei+YgCRC3rEx8QClTzZLeJCtyksP
QrtUAtxTahmXmXI+SdMzSUrphUn2C1KEcXhNXr3wyMro/j9IVZp4jygEdLT++ZmpErUgMM2P08Xi
CeLHYwXRYdcqDNbprwObD+vv8kKIJcWILsRsBPe0fjiFvJsxocTAVesyGJWLnvsXGeh/UstrpM08
EC5HmUhxIWwrY3cu+IfpLo4gHSn2N60QGSLa3IufyENu+PpN078S2c5b/ZkjxjED2+YPSJzV3Vju
XDyzVNJitKID6EBVzf8iVWmPhjkfQZPMtUd/p5LuUeAyHEUou/G3jLi5fPruqLthhW45g2PuZgRK
5xksOB2RPS6ayc1wwo3ZsBP6tlF2CymsYUYoBm04w9meNRCuDcpv1zzPj/WgmukZHT25DXwDO1wL
bYrciSdwIFog+jxGAy/Mw9dkNUyte0ab19EvE2gpbFBv4l84z+bU6BRL9Sph0rej14lZv9Yq0UQd
WFKvZtc1VvZtRwH5IbuhZ3wuPd2Cg5sopggytY9i7aUc1zLFQomaxLX6eWdbCe3itoJ0awCzHBla
I9eFnhfrLp72g8BCs/nqAVBRO1ptEulncFEH3TxhCrpaFkHhlA5fYaOPbFK4SryNq+HZwBRA1WHS
9wBdIVQiBezMIof6PVDrMcw7en6ZLV0+VmDvsEUYxnh3I1jn2+H9qA60m3M9LH2qERuhAuYcoYYy
D/49YUI4GT+muX6Gjxmb7HxCuL3INvRR6TUzLPlTxPx+ZfNa0+d63OHbv76PNhkEx8/FVd6c4BpC
BGYeZwmR559uTWswBP8zAN4hjGMpZEFqEEksCXtEJYPMV1I20g4Wu3qT9ssWgOQ/LfARM2slU8Mp
xPpN8b/jJtgBkpvVssP3K/0rcoEuzQv9VZ8Iwm9ofwQT82C5mdN9YC6enWDiaBV81Cmw1j5wmdAZ
Nt03N+baoWXTH3a0ASSVjGvTglrIkvnZMa1QgdCV9UbkPkEk4tLeB/90WbgvvaA5xLDAAKtVeCyi
ExyQDbqLP4w/GQe0AuyT3Fa5E0IwRt5akl76WEiRMDfEVPkc+peRNsGUeCfMc5TVjbGtbpZxHOQS
5L8O/JTkuSiuhbZNYpavKlSFO9XoPHK3eHq1x+WmdvRhpuxncQMML1lrP2l4AfTmDbLdPiY2/J2q
q85M2QVcKr4M38W1wUVRum+iKsmUY2Zvzee6CCyojVpNOi/ehC+K+r0qkCCOj0NABo2nhyfepxZ+
FQvKLDNquJ+k/w+l2wf/Q8U38/x1PP+PqzIlO2IkCmGYbGh9jwz87CqmqId1YGzgEhB9XDwsJRKd
m7/dtA8IkB/m2w5iDbEGawdVC+huM93HZC4fHVEfMYyN+hrzvYY3wf9iQvXmHEv4htpVkMo0CjVp
G4fR3qwn6mEbfaGIYtgaIrYqAXtwrSZ3WVPkKVFjpRNlreEuR47r2O54DruuAdlwQhVK9qYuPCgN
bpF53ycUzOVVyae4I01/WE39q3rufaTjzcDpOhljSyDbpJ/1hd0bESCBiQSc3gUkfR1i/r3ZlgMk
wAcuAHf+6iE25rRsm+2OtiwH+E2e6aW5eB88bh80cRsKBMdsBmvgdsF/NpcH1hFRutSwbpLckAN5
BJMlFMH+VED/Wde5JX5ArIXuO+z8ji3eNESJ+D+FFNVWgCe4U+q6Hfw/J+lg6Dyt5p4Flc2P2aBQ
eLVMck3HvHKqBqI/L36rL/yc2ipYb7XgzYCMEPk7BF9vQh3HaGesL98VEzJDdUIafImTsl1Ai5O1
pwSrjNkMo1kyn39VgcwJOBedqFO/d432VhVxTpNFtSClM88x1yxLexXT6u8QTplzXnLTMI5JzzDw
E/d4eT21ZSJod2pcT2Key6Ml583al6Og0TXqHYVP6u/X/sY8/f7v4pXTcw8IDacZzvHuh/WuAUMO
xW0rm/owk8ynL++O0gitq2PBV/nvdM7kUKBG+Yoju9GWvHvPMcVQ/uJc/8x8B8yz97yNC252KLH9
2eWoc+GFVPi07AhIypzZPh6gpcAm2IrXVYwns5VOIv5Ntn4INPlQ6nkPxdYzditqsSIH2SM+8owL
t08c6tW6yACJZ3xCD96KBLuVrS2Nvajlz7/HwkgyVFpbo/ZKK3PDVpFg2Gs3gG939RGEvzHzkf0C
7/CgDbWgPum1ud+J5mzsP+4f1REQez6tx2QtiLZKxjF72KT8n6xWL4wX/ddPevXYC+hgAEey1AAZ
eIQqnnBeMUj6UmtRRAMBn7BNZ8rgND2MP7zws6748gvvVIiyqAxkI5bZyuHPiBhOL44YxD1BaTuG
xmY6CqEBGZRgUVuOHvyLlWPIG0LJRUqA9TTtP3Rzxmg+CQv52z7ygJOjV0PGMG4pGIH0JVx/W/ea
avHQFC8qOXgvo5Rm8pM2kBVm+IX0Dms9qzVly0zssnyTltea5eCD7WTAeShDp3YTEz/G9/29py8I
uV+ka+391ZSdv2bQsD3dI05ppCK5xJHCxJP0EMTkmueZLuGwKtFeJCR4UocL1gqUbzguVEsir7sc
EDtno2mqkXUdJe5nlUH2gRbPymgetmm9Jz+ZR3KWtTNMjDWZcDbQ4z4v6cG5xuDhrcMdp7yTxRYV
HhqJVFx0TWoBU9ZfdZcK1xPiJJ9T+/pCdiyXVbnW6uRGOrKaiMY/IMHCfZ81zuW49j3+MuPSwhLq
bHdt+btrufwBRHQ2Vx4vfMr5bO9L0Z7rZULJPnpNkc2TtNkGk0Wm0+OkWxRxaGFYGCraEBbYtTDU
N5zfe3Yxcdnf1E5V1b8BCR4pvHOFpCMnsow4sWZAlvS5Yfl9Dw1TRGS8+JkZsCDzFKtYVxoKghbf
p68EBH9UUgN798X8OMKgiEERBTcAFD9V7eZ9oaRqo7bUfXGCH4PQ6mF/U5so2oxu7xT08LH+sF2a
q1AqeV+aV5U6DqEdiZ+iKXy2yuKGNuqgBeRDwYaqJ3dbo1Yzqa3RndF3KDBxXbG/twLw4ElwRDQB
u0L0lWfsDjOnNDDmeU0aTMm2oGZ4Nlg20CB5eVSno6ZWHXR+9rt3BrRd22To6ALITBa9jNQr3Dan
/qmlMwIFQF/r+DOtl1uXrK0m+Iyl1TFqTDV8nmh8tFCYMyeb86Qdx0THseRU2qt/7ivG5hfyLbIT
e4D6pR63HkUeEmZ9ayJYQJPlWhyKXif1f8OV1WRnaUKOjKHgIQYb9kCn1x9NfndD6+wtzAF/7qv8
8P+GET824st0M/rjvmCE+qsobcRwl2HQ0o5Q+U607JQ+Qf5jdkQZvUANJAVoSwJ5g1EdHvTUa6Gc
ZUD7y9bfXkOR/vDr+v+/X2cW7G1czVdeUBA9vOXuzw3SD0QyRMKwZCi4nDnY0/bKtvpzayaCaVwV
0laM6aGK8qB4TqXT9fc4o1U7sOr9rEUrZaLlCQwpkNEA9g0x7RytM6JOsdoFhXsT7Pmz873i+q5J
SeBThPa9xYF4hBX3cjD+yfGVlc2uMSaa90F8/E1rj0GqXkU8jb5nKm6q5dwJQkZu1BORwKE2p5Tv
rhVpp9CIr2hq58MUqnhXBCb6jReKX/+qAk+63oeC7uVU3TWJe1lBEELyNSo9zF39AaDrT5BWZLLs
G53JwXD4Bu4zMjzj7kjG0ic8JI9DcLMiN5GPFIMjhsLL8Uy+gy3Me+joNwX/UAlqUg0neCdUccVj
krG/ME5xbvM4G637brGwCgrXrV6XNWhM1c/MU1e8/IIv0Rx27p0WrscUslWwf5XtCBV7eeibm603
77b+Gc9yBFqBxYx+0MRPURUwwmMuttBaFAX7MUaKArNFj9Nw/Om0TKNKPZCXojMt3u6T57n/VDAB
99+7N/l6gQa3BpUt4t+ghgtoAoFCZ9CdUYB4FWVnbOK36utW5f98GZx5zcsYWzHnRa//OezEJaGC
ZEkD+AujpcPo4igHnubF8TfH3m9Ruhhv24wWmr1ft2qzKiW6kopqFl48Zrwlsq1qxjzEgXrw0sFv
4A15c1+vhc9oNXVtLWWIdpNGFV7TzBTg33hwLLvtIbbv0AZlNFjjIrO3RWJDY/hmwwbWnDaHtGKP
XB5oITwkAd1vs0p4aOiEfU9f+SSSACWycXe7zMpcykVWr8ZjyMaIpT5N0N0qFYuCu/f8dZhZaE4S
Mg+xh+TXmUIrxxAuIKIwA+UDwfkgL5tj7wLpB/9DElnOs2oy/CeamXFQo6ZYcjzgLedPa8epw5wD
iS3I2khZ6g83xj1g6lGTx8S7OZuKrNy+FykbFbhbEm4urfy0XMThZF7PqEvw+q8Fx/y0eOrh9Xbt
z8xvHL1ge8zSX7R7CX1vQdUrDz8GSR8pMQbVn84ByTBydX+OK63ID6qAZ2sxptAKtzOk+MTHPy5i
rSP3ztEDkGSmUbWiIDx5JX4+96EWky1A1FEpXSt5jrhyXDaDs2c2hyUSqt0/+yrj5oJewowfBddI
RQOnsJgVZgy1uTcUATFEo369Ifcre3RbKI90Mm0U827/dWFpWWW9xe+JkWUU8XswYEjVOH/lOid2
WXaQVLUFPxqW8pILWmU64JY+b91RLcpjMWeP2I4IIuc6sx8Q0SJFPUjl0sECWidT93I5Si6DMPpK
iXSzhbRvjFQz/GAKQ9STm+s4nGeIWb59C2IiKzfKPElrZFzoVooVeWB8VubZppvPdxOGIvBwOhVp
d5XHqoW0JznwJf7l8YazkZCI0nzE8PvAFbJcQ+FqIoYKQU/VMiDpdN+/pyhUGH6m6OJYvcuiuc6P
SgQw/GAvcLgj0NRJ4LDgY4jK3z4lxkYBXsOIV4lXZx8eWZjC3uO6b6G++zL2Nn2l+ARl3ZhUfDD4
AF0QiZg0XQqddAKN9R9mIhXSz21BgrrwFgxoY7kIm/V6XjVuoIBpB5ROXPqDtr4CIp3yZjpDWyRK
KaJEpu4OGc2YEeW9mas11cGZsKDi4UKqOA6jWpk08xzeUWBtrNa0wKn6Wd2phEuQBWcNvHKFWmND
5xCc4IW2F1YY/vL9v+OFHKlYwkTAuq4+mNVcdLd++mM0m1K2uLKb7QFqWCfLyHFOrNtrnQCKVZ+l
vmiwl95w6xnBC99qOgw9cMlxxh6itU0OSBjPWYu7rAd/6UqeRpENzAo9FHkGIysyXjwaZtGp6gPm
73eFZfn1qpvY9UYt3z7AfboN5QiLBycXUjq1pr8ylyOjxKktSk6YNKRdgeqzmCWfmpTzd50XoUBG
XHaAcjtWvbIycISctQpMr43eH6j8A4hJNBCqaS5lJRWvRLbtnBq9u4/QbRf9lFx2d4M7WWFFVzKV
q29fJaGVwYnFwr+/59xYoUEa3vsLbQcPTx0Kd3j3nwZlhwQghipOEi+jV7PWCoSiwPH1JUetYJsu
XQ6GmKe4PrhUkzHGQAzSaZOIOom5dpEoy3km2PLh1orPiHaDymFGvo67UA35NEOad6AE2tA9YCBg
JYAl7peNbXHy5xh7TP1Z19t2ubstOMiCTA/aTtsKY3K6ElLYfaCsUbJ5gmLlPdf1kJiiRfmMY5i6
ymVqveH16lRnrFSlVx2BBzwtF7VUocc62xlmzi5xyZioIYN3XWwsZ3n7Oy4fZCTysu2s81fGIWlm
YKiaaD8jO4mLOk8hgxPIsatFK9U8AZp7lUhD5Ve4uE+ZVqIEU4p34C11aUIFdyapSh2XuiOKzofk
TRgISN6XXkSAFXSXKUNonDZAxyY3s0FoljfSwR6etZ7WJGwrOJU82mgsDBvu6V8gARCRrvnfuF+q
CGyISaoasIiVVVAQORRceJlkyp/xKbw1bAIJYim1S+oy2BVbZucKdrEfoghOGJxLgvl8iO5vMIgZ
gHtqNx38XazCeyIRMj/nC8xi3EAEvcz5/ATqTq/KfFgPcw0x+XTqSo/rVrb/sqpEt9plDSkdMoYL
LN1zq70Z2jIMEdya3d905t4+ZDwgLHqfi7YIGkbfRuAAavuMTtRsPiK/IfghkD9bAA8m6Sg3fSqU
efzbMCuDKGomwsbSibgdOidc462T31DQeD0c1PvKySoqjQKuuCHfTHLZxA/OQV86tcd7huYMA1UM
fWdSW15yU/b3bV5qL1jOklYkNDWoV9sr7YJtw2Xl+qTiF03SX/ib+iQ2xAwq9E64ZI3wnK32JKWN
xtKplW3RcfqYohJ6eDaPjInYTVfmpWdk2R+yI09t4xbBcNM/HHZuKG/VQ8FMUvHSZEkJWNmM0I96
UC2hAg5LFVX1qx5Y7SNOLAgXyUZ8DHXX7HjOpLyOSBjf5IOSfsNajVnsTx2tNRv4Sz1FTV5du5L+
F++MEnOYbyVWkXRXQs6BfJnJzkBq/WBXPHRI2KBpPoUsd0aPxklDfuYZ30paUwDT/TmGoTxKi1wY
h23z5hmYo3Ob4ZkfAl6Znalvv9ssOowTBAJiguMiAeJhNdmdqTMRHduncdR6sfgQOyflPM72FmIC
Q4q1jBD6M4/7etzUYf+I+zAKzT4uZ1sS83IWjS/KnB94Yw/py3RfOqUCanKgfkDMMcGlzAdxyRWO
m4sMP+cWxrP96MQCnvA5wf0CnYhNyM0coGjMlACyowR0xWDaHr9YSV5PBXTve7XLBg4lleN7jO60
utSoe5LMWFoOPMhE4JgkY13uQpgyoAUoXJ8YB4gukv1S21BxM3rA1pYwbmakXeUD1ScR8dyoXtOY
2ZJmKnCKJdeDi1siv/4aNZC2vzqJI4wLasm1AhU6D4HL3fScLFkCQ0m19TAoPoD1m4i9NxK0dy6b
8bpHKyB4Mr50fcu5kM3LMd4DQx90vGRcp3KZj0xJm+N11SDiLgz5uzVBz1RUXCaWSgUu0XrAUHGS
u1sEdCeyULqWyW0ekniTNyoH3WmpmfkUVAMTiskCf44JGoowGr2a3B4xrZfUFYa8oD/H08OR+Ijj
sNV63TliPw9XEwnBuPNS6KCDZ7FsCpiEsF50CZ4UAnrbZMMwsg9o/JwNByBHYxUvqxvYlI9F/ZWV
GDR455X3u/z9kyyyolMhq9TjtjtuzhpkuIVxzn1pZ8Nt4+JEJb9K0b3YVuz8PVDXGTcmJi8Iet4G
bqTPoOfOZxyljjEcD6mI10pv2JcCp3MbkSGShsb4T02MIE6ydR9VegE3pKe21MY3LmacLiUugl0M
xTnIkppaYo0Qt1/95ahi8vJ9yApld9DfSLGdgk8MaUmvxFVicPHlggu6J6+xmhcF4X17zMS1ABus
LdIAToHAwp2Y5gMWahs436+i2J1VL5NA+HMBq47CJqskx/HxFk6ESBjPx2Q+jKFzYLNT2I7rtAUa
BN/mU0gqrgH+P574iMcz31cvFAVpnujuf3ut3NpbGREaVQcvHs9dcKSUwgEpXffJ2e6Ulq6tHa6Y
BNizH10jd3NO3ophwuv8xDsQ0amyy9RVyR3yLyk/E6Hv1GWUS4jKbKXX9DvVTzFNIuofGby708+U
KCEW9E9HQvW0P9FpU30uBYWsBVMbAwdkL2kyiLXohUuc2twGmG7SPJzJTFjJvCXBVUB3tbL4umLn
9SjSIyIuB66Vyxlha693p6sThlRHDOZRJFg79x5H+6bJD8salIP5k13w+xe/5j+gwQPoakpAub4C
/sXaBYX6EsxmO+x/5qaWVIgkM2CTkkE6XzBUL7XVcW/fRxVXYC1APNEYayqGhI23evNxV77XK0/r
3szTSPffrrSi4wIC4o9sxJO1ItuP147BmwWEPkdljPVI/+CxmLNJuUyzQtGQ+EXJi3W1cjWX41Om
TGsh/yrmSog1DASJkTOmZpnG6qHWAF3q9dP4fpVKvVUuoTsDEHCYaLgYL8bTJHVTEmi6vlJVAsME
BcU4GHsZKQGiglXh7S8HWoKtDAFpCRQoMddWLu2B4jhzEmxgYIPWf8dVjv8/bZ70Xt9jrnddp9KO
sNI6KkqBUbF6j0DbNOYleLXfGt7VIAvQleG7NxZhDg5wZhs9TJzbvkEwswQjLTAlaK5Eu58aESzp
6OppR2ue1mGw1Q01ty+7qClXHCiBr3+aEK8yEeBBBM7qArqzHAkwA6hUAKvmfxl7oNeGK3/QqyWW
15vzqHnhJbt1KTfY845LzrxH+TPe6apeQfvhdlnc28LNbvNH9cS6Q9GGFgpbBvhbASEYw8kuS5G4
heAKfJyvGnVyYmB3Q3Z9M9nKRYKOZs06DzTeRJOPF+HCmwJJF6Apizj5clTzVDcFxVgGHF7cm3vp
MkGCSoVSEr1LBb3c8USiyn4kG9HBPCorcZFuomQIT/TS0BfVscZPS/uFJSPoOQi1DNwrS8GNaDSo
VnD7oHRYa06HoTDuSPzF5GKTT5JS8UorI6McqYEy5IbHS2w8yQtKMmJWMLzONeYAaoFaFFjXc+1O
+cTOheWsOaH/Qi7MGXaQ/Qv8KE0mfu9Porr5Ue0/35f0jT5aRdFMydx4qjzyURrliZotEr76c7mv
jsX+/Lh+vdqn2NHyS784IbseFCt95HWDTTbloB70NHfPfqeRlIz8XEIAcQp3uquQP2aBJsaxVC1Y
8OgWiuGzazOVGS6B0aidMTuItdMTNM3n0eqPWRHowwXgfiFxULw4JklYFcLTTgZiyMJoIGH7RvP8
OX09vN9LDZBVYELPXTvSz3K/MRSkIkcjCtKEYQLnHkdTja3NA9NkhGPJGMMb/opFSH95xS0bzA3b
OXirUnLHH7Agg6JNer4tWuT7gulDAf0gESQuD4O2gAA9kONdj9QT96W1u1JS/+urSzNFHsRcwEn8
X1raVBaPykMAeQKIxgevH19a/1f0iSJv2uvWszU6YTc3+m1yzZFtC8i2mYkzLMEvTQ4tszAzRvFf
zjl5eBP4RWS0BynFviczWAax1lTodbbsbqPprornTT0rqzEMItiuQh5/9R8tNPWvibNgSMz0eqHv
MhrHJztuauaxcrsesMIdxzy/ACsWgPyli1EWzwQQ7yjgj5fYppn4eYUIyXy1GJzBSF1Exa+afFAC
uYoiLRrPZXCFZTtERGuFTBnggfafzY8NzEapRFgbX2UIm65lallEA3c2ABhE6a0SUSgfLVq43X7q
+WL5dSyTr8SfiJmrNXhv0dRpvpXToZtR20jIrD+8YWB38t3bf7jzVyS6IfVunEq4F7jO2wmHOmDQ
MuyiGJtTcmbS2YIaPAxonkeuy4QZKExTd6G8tEMjMeGu9+rq951IG/3eHu8h9L/+X0/koEoIRwow
Vtq+BF+U0LpMR5YgtmBLgPIfpQGt4ZiSA7JkoDlf641TDFPsaf0X5UmOZ1c59+1iqqe7bW+z+K7f
OZLigbtSowWmIT4PJs31ABpXTJBq6c9OGqS5z87NShtnY9E0SVxUeFzdV7UOoX7ugtBCuv1uYdbp
CHN/DiBgRHn9oqIi0j9SRiAa+wJQj1hpn2ATrV897FpirH4esjecok2eQQO5xKqAbBcRQwj6FDsf
oLnWpSIxA48NEbLQS2UVGw4w11I2o0ItQjXrjt9A+wT4Jx8QDHoMlZqv0wn0WIhQTIxEHUD34WtV
2tspRwiYkeFoTDGZgIWOMZHcgxrWrTF6mnRq60fx/IDA4YLJrJW35wfNNS0ra03affx1biPZWkca
g4SoVH/Y4tjMKIKF1nr5mcHrTR7EG0CqO37Fw394fbkFOrjSBX2xol2Zy8E/T1jTOtNk8CCwib/D
1rPgmHDk2EIhNsU9Rk8Mi6j//n/aJV6+YACCCABQZK5e2qwBBzN6y02J/3PWowVfAvtM/dv3+0B/
TEga7Cs6oSM1XM3kX1AfrQ8T4z/+AxEGeny6UH90uOfVfymzD2lhub1pioFyTsDTkefmfZc0WYLs
DA+Zy98eu4+etm9Nq/wNj1F+mlYXW1qyXuYDMJgK90DsagPba29rUDVaigcaUb19MlBtUY/f75wB
f0u4ab6LwykRyqfGmO4mIJNGTOgET5Q7bVV459rUOUzqzNQMuqmuWbwR+jxaUil0bKm5i+bYGP2w
jSeG5Uden0BeY1mRzURmof7G/RQsGodme53uh5iEnpdl1d1yEKMahPxEGhCARcr2a6nh6A+cwIle
xwzs/Spy0JcPbiQObo6DLrinhEF19S81mWeojhbKKfvvpmoKQFYPAbvUPuYQEv04f7SukTPQD9IN
KhupIOroOvC0GdKeAmxnLCIs7Z5YNSfk3iwkCw98Dw3uxhk/I34L1WQmaogkpYYNn9HMNr4mzIxU
DVtcjXxVcYoz4PhI2lcZnJ3CDMwfbjnSxbTPfCZgt7CsSkj1Fu6ToyNIbqb/3HlKFQDSirtV/10Z
eIu+QX2LmhLKIbuoeubgx+QtBK28OuGx5cfZqlsQPdJysQ8BbAkicKH2bniM/JZ1a3NQx0dyj6/W
AosVCiLtNmLZhgEWDcTG2a3IWpxe+CXId3KpcHfJhzLBZ2kW503rhkcqx2FenK0MH+D9aQNBLeWI
FacKKkOQGX7O35Ylg5xxgRIRxyDBz/EViAIdjz2EeH5Zxc64qkMf2T2mirIFKoNPh4O9Mf3uEqaY
4+xpjWPnScA4yYwwMQ+8JCOqPSRgBESS6ubVPbGaz0O2Xskfo83AgV6jBG9Ug8rMMzMcLO4D154t
H9sV3278br4tANhso0Ydoo2EfPL0R4NOQ/yaWOW5kwem19iu/LFITwi8WP5urR+M83IYrlEq047f
GApvfjW8rH18xBdf4+TnjwRd2cSvu1Oaz2fmA16b2LSQsIqR0Mj9wmmqCmjUq96Fd6oaAQMwgEVe
4KfFJ0ttT034BNYjDmoLtmN6FdNcU5Ehll4layoqYdjJrXQMssxV/204qo91oFdAMyWGjDo5KX+L
gASQae7HjCH9kb1bztKYTkD+5MS9XH4XwNuDDg9tVNGfPIa8mdZyyDyvpaEoMp0R+PRmY3ZxJIlk
2e2nsntOT30akCM20jV1K0OM9DqHlf0SfqvtO7TAT+H91Enxe2jHUQ5nUYcEcy5T7n9CF7gVRPMU
M6ZCAybA3fhiod/KutY/KVJD0F8SQgLXGZkngcPd0k+Z+6CFlLm+/26enFCwLniZY74UbN2oZXlL
UPMOVBDmHyzZTJXozIJ0+15UhHjiIsn6dTKDGadHNVSjZTOC80wnFl9mlLHpT967OdA6EI5uBi8c
iTfiV7muQRfztqoNglp5CLp+C1/Be5WkXw5M8EUWId2v+nFCawzxmZrGZEfYpa3OTeSXlfVsGrxE
vjDksTSuQcja/iEaW5jXA4wAMDdZbmFWWJjBpzNf5s2myYcBV5ns/ziCiYsJfVnpe2gc95eOgDsS
imECoQJTLH5ca5vXaC3nR5Rx6jRUZvP1uAI01qcymM2KYIwATo6RrkUZmWZ/ETfpvtiBGNYWpDVP
GHFBWFC7ABdya3Ld8/hVH8hFhBJ3sacusB0M4yfJaaIJXyRHF54x/ZE1RppcL2oUczALsJL+/RTr
Q/0vL/fD6YSpf7UjO9tiFpfn8IA5W6xf3HdPlcmZhxxNOX6UrgQSx489Qfn9oArjiEkZI+JuAp5w
nuC86GpvCqakmlVrz67jTzKhx4XWrG1b8Cu1Jf7Ml4hTvbdPj9r3brgF6UduzqSj+vHdtU7oGF28
qd5j1wCh2x8h9NOGmBuUsE8GidB1mR9ulfXZmttoGZOKqmMXNRj1q+zPHQHjmOxBexJGbaoFUusx
NqjylOOzUuF9EKC3aWOt+ZeuRTpmjQZgCKRN1iMlPhTkhz1Bfw27E++0l7Yxu6/Rt47UtTifl0Uq
n7gn6bho2531D9dPgIiPu+Sl1AOV9vLDzFLGZDL97BP4GIP691jpprvur+T8i4gfpGl9YmTb03LY
+Ku65vJ73va06UwmSvWwkUVnRPhc+Cc9HPawlc4sqymDyfbgkLUkZbQlJ9beP2Su9lBg7Zgr6Mx4
KCAc3xFINASWbzHgSnFxB1IkScv4OzlZXfKcLJZxOAayForIVEvHV21/Sgb1DT1hSX8unVc58Pd4
mkTk98onCC4ZVgTWEl3JnexBe6JMfVlX798++aE9ntdVlE5+utRcd6031KVcxKtRLuOeHTneBbrw
S9gQYnF6NjEpDD8UPks2Pj8S5EnGjygyUj3eVNGybK8/jhpUdp4BARsKDHDsu2KsJmU5EGwkW843
2hgeh/6X/bwXU0kNwcRnfD5tLmo6a0NvcDPzZfwdu7JdBwWUDFIHIMCMWb5mIAvziP8PV3Zki16G
Lv0oRIguiiEhGYvALgpuaPFVajuCgigk+KIB9BGaUhlkR68hWGeNUDtOUu4JT+eGnVVYcm5G7zxx
9Uv02PYjNCztrjn0XZvcIdQV+X3Cv540eVczz+gQXbS3AmATSqwK4Qacilx7NXs0yFLecWwvqP0r
WfCKEcjA6i3/fpvEgbcnxguHJawSB2Ax1DVT4U2P78r6DS/a9wpOkQsUab+evbbLT0VtGQarCTLV
5IPLy92HF9apoe1VZm48sMyXJ/beij15no2KOggrI2j4SevdZYFNNoJc5XMaKJIaDvzUoBdjsboj
pMEiVuGrlHPCk/Y/CWkHbGvemjofecE7WwP76Mc7Y7mScb9rEpRxGNqxFGR6LiFsgN6nvCZDCmCt
hXWSex2DZmIQ1ZC7CaFUXzL0Xvn7zVbGatc9jhC8eGOji4IBuRMYMY3ubZ/QWafZ6s/kpL8EwJE0
xFZeJeV3k0wv43y6sS3u8dPsWBohiq9LJK+3Q3tvdBkmWuc/1e1o1c/46Ucmz1O2gvsBhCXswktI
tKEKin/YtaC6YoeI8N2B3+hLIIjiYCfwxl9fAGmvuWBhbO3APeYSaCm0zFG/bLnLuwBkHu/GTbgj
qo2LIf3/w2NWz+U+BlxbsyPkWZkq9f1F3OErPJAt2DY0zQHHHKDUq2OszHNii0ZmKkKS1oxdmPfU
jcXcIrU0v7CPoErbT4xQJxOUvS7JMxkdYInzQNzF1FcJa7KV3dYePlPnXISjj/ci8CHgAo71jY8t
sEiKx8YjJGNCf5J4v9GRzegKEfCPpks5Uz1v0VURjlBJCBcpCxVQz/Oya/+0nB+USnonDa3nIXjt
PPE2sP3pswhwiGEe2ne4VO86UeZGHJugdF8PGkl3/j/oi/ytQRDztCeO+OCr6iWbuD+xXdSFC3+H
0gPLYBm4y3mYOrQIR03Scg4qjtWO5rjBhywuxKmzgjXrQcu2j5v6x4uDQfpEdTE0WqYDQRB99tcY
NOXZlIImBLU2D1LqivMU+0XVsrc/jtbvF4W9uISXrMcvkWT1232xAdOzUxjGIRwRZG+nlu67VDhy
5afX4W9SuSajGYoPxPfqD0ElINTuYVxe5ddPy38BGvZU848dHygDpYFm9owYDzg2i6zP9KycIiG7
cqr6+zwpjUCnx8QcbykCEmRzE6+BAP8n/5L7lTqEERm8WfLtg8ZLSKj/oukoWt5sqibl
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
