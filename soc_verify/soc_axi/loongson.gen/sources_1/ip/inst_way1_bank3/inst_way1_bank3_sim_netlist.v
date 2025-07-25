// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:05 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top inst_way1_bank3 -prefix
//               inst_way1_bank3_ data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module inst_way1_bank3
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
  inst_way1_bank3_blk_mem_gen_v8_4_7 U0
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
