-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  6 10:06:08 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_id_stage_0_0/mycpu_top_block_id_stage_0_0_stub.vhdl
-- Design      : mycpu_top_block_id_stage_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mycpu_top_block_id_stage_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    id_allowin : out STD_LOGIC;
    if_to_id_valid : in STD_LOGIC;
    if_to_id_bus : in STD_LOGIC_VECTOR ( 68 downto 0 );
    exe_allowin : in STD_LOGIC;
    id_to_exe_valid : out STD_LOGIC;
    id_to_exe_bus : out STD_LOGIC_VECTOR ( 220 downto 0 );
    id_to_if_bus : out STD_LOGIC_VECTOR ( 33 downto 0 );
    exe_to_id_bus : in STD_LOGIC_VECTOR ( 38 downto 0 );
    mem_to_id_bus : in STD_LOGIC_VECTOR ( 38 downto 0 );
    wb_to_rf_bus : in STD_LOGIC_VECTOR ( 64 downto 0 );
    excp_flush : in STD_LOGIC;
    ertn_flush : in STD_LOGIC;
    refetch_flush : in STD_LOGIC;
    has_int : in STD_LOGIC;
    rd_csr_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    rd_csr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csr_plv : in STD_LOGIC_VECTOR ( 1 downto 0 );
    timer_64 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    csr_tid : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end mycpu_top_block_id_stage_0_0;

architecture stub of mycpu_top_block_id_stage_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,id_allowin,if_to_id_valid,if_to_id_bus[68:0],exe_allowin,id_to_exe_valid,id_to_exe_bus[220:0],id_to_if_bus[33:0],exe_to_id_bus[38:0],mem_to_id_bus[38:0],wb_to_rf_bus[64:0],excp_flush,ertn_flush,refetch_flush,has_int,rd_csr_addr[13:0],rd_csr_data[31:0],csr_plv[1:0],timer_64[63:0],csr_tid[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "id_stage,Vivado 2023.2";
begin
end;
