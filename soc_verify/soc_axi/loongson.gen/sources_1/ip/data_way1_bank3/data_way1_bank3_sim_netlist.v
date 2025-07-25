// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 24 21:28:06 2025
// Host        : DESKTOP-HHJ88ET running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/loongteam/mycpu_env_try/soc_verify/soc_axi/loongson.gen/sources_1/ip/data_way1_bank3/data_way1_bank3_sim_netlist.v
// Design      : data_way1_bank3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_way1_bank3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_way1_bank3
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
  data_way1_bank3_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19776)
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
