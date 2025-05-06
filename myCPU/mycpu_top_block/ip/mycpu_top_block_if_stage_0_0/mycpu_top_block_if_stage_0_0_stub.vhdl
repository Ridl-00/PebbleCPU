-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  6 10:04:56 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_if_stage_0_0/mycpu_top_block_if_stage_0_0_stub.vhdl
-- Design      : mycpu_top_block_if_stage_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mycpu_top_block_if_stage_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    id_allowin : in STD_LOGIC;
    if_to_id_valid : out STD_LOGIC;
    if_to_id_bus : out STD_LOGIC_VECTOR ( 68 downto 0 );
    id_to_if_bus : in STD_LOGIC_VECTOR ( 33 downto 0 );
    inst_sram_en : out STD_LOGIC;
    inst_sram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_sram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_sram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_sram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    excp_flush : in STD_LOGIC;
    ertn_flush : in STD_LOGIC;
    refetch_flush : in STD_LOGIC;
    wb_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csr_eentry : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csr_era : in STD_LOGIC_VECTOR ( 31 downto 0 );
    has_int : in STD_LOGIC;
    csr_plv : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end mycpu_top_block_if_stage_0_0;

architecture stub of mycpu_top_block_if_stage_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,id_allowin,if_to_id_valid,if_to_id_bus[68:0],id_to_if_bus[33:0],inst_sram_en,inst_sram_we[3:0],inst_sram_addr[31:0],inst_sram_wdata[31:0],inst_sram_rdata[31:0],excp_flush,ertn_flush,refetch_flush,wb_pc[31:0],csr_eentry[31:0],csr_era[31:0],has_int,csr_plv[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "if_stage,Vivado 2023.2";
begin
end;
