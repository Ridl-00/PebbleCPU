-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Apr 17 17:57:40 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_wb_stage_0_0/mycpu_top_block_wb_stage_0_0_stub.vhdl
-- Design      : mycpu_top_block_wb_stage_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mycpu_top_block_wb_stage_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    wb_allowin : out STD_LOGIC;
    mem_to_wb_valid : in STD_LOGIC;
    mem_to_wb_bus : in STD_LOGIC_VECTOR ( 69 downto 0 );
    wb_to_id_bus : out STD_LOGIC_VECTOR ( 64 downto 0 );
    debug_wb_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_rf_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_wb_rf_wnum : out STD_LOGIC_VECTOR ( 4 downto 0 );
    debug_wb_rf_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end mycpu_top_block_wb_stage_0_0;

architecture stub of mycpu_top_block_wb_stage_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,wb_allowin,mem_to_wb_valid,mem_to_wb_bus[69:0],wb_to_id_bus[64:0],debug_wb_pc[31:0],debug_wb_rf_we[3:0],debug_wb_rf_wnum[4:0],debug_wb_rf_wdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "wb_stage,Vivado 2023.2";
begin
end;
