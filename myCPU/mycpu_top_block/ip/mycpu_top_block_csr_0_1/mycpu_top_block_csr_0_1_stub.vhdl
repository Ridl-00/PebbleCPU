-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  6 10:05:04 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_csr_0_1/mycpu_top_block_csr_0_1_stub.vhdl
-- Design      : mycpu_top_block_csr_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mycpu_top_block_csr_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    rd_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    timer_64_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tid_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    csr_wr_en : in STD_LOGIC;
    wr_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    has_int : out STD_LOGIC;
    excp_flush : in STD_LOGIC;
    ertn_flush : in STD_LOGIC;
    era_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    esubcode_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ecode_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    va_error_in : in STD_LOGIC;
    bad_va_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbsrch_en : in STD_LOGIC;
    tlbsrch_found : in STD_LOGIC;
    tlbsrch_index : in STD_LOGIC_VECTOR ( 4 downto 0 );
    excp_tlbrefill : in STD_LOGIC;
    excp_tlb : in STD_LOGIC;
    excp_tlb_vppn : in STD_LOGIC_VECTOR ( 18 downto 0 );
    llbit_in : in STD_LOGIC;
    llbit_set_in : in STD_LOGIC;
    lladdr_in : in STD_LOGIC_VECTOR ( 27 downto 0 );
    lladdr_set_in : in STD_LOGIC;
    llbit_out : out STD_LOGIC;
    vppn_out : out STD_LOGIC_VECTOR ( 18 downto 0 );
    lladdr_out : out STD_LOGIC_VECTOR ( 27 downto 0 );
    eentry_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    era_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbrentry_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    disable_cache_out : out STD_LOGIC;
    asid_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rand_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    tlbehi_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbelo0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbelo1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbidx_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pg_out : out STD_LOGIC;
    da_out : out STD_LOGIC;
    dmw0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmw1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    datf_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    datm_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ecode_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tlbrd_en : in STD_LOGIC;
    tlbehi_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbelo0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbelo1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tlbidx_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    asid_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    plv_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end mycpu_top_block_csr_0_1;

architecture stub of mycpu_top_block_csr_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,rd_addr[13:0],rd_data[31:0],timer_64_out[63:0],tid_out[31:0],csr_wr_en,wr_addr[13:0],wr_data[31:0],interrupt[7:0],has_int,excp_flush,ertn_flush,era_in[31:0],esubcode_in[8:0],ecode_in[5:0],va_error_in,bad_va_in[31:0],tlbsrch_en,tlbsrch_found,tlbsrch_index[4:0],excp_tlbrefill,excp_tlb,excp_tlb_vppn[18:0],llbit_in,llbit_set_in,lladdr_in[27:0],lladdr_set_in,llbit_out,vppn_out[18:0],lladdr_out[27:0],eentry_out[31:0],era_out[31:0],tlbrentry_out[31:0],disable_cache_out,asid_out[9:0],rand_index[4:0],tlbehi_out[31:0],tlbelo0_out[31:0],tlbelo1_out[31:0],tlbidx_out[31:0],pg_out,da_out,dmw0_out[31:0],dmw1_out[31:0],datf_out[1:0],datm_out[1:0],ecode_out[5:0],tlbrd_en,tlbehi_in[31:0],tlbelo0_in[31:0],tlbelo1_in[31:0],tlbidx_in[31:0],asid_in[9:0],plv_out[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "csr,Vivado 2023.2";
begin
end;
