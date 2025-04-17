-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 14:30:13 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mycpu_top_block_if_stage_0_0 -prefix
--               mycpu_top_block_if_stage_0_0_ mycpu_top_block_if_stage_0_0_stub.vhdl
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
    if_to_id_bus : out STD_LOGIC_VECTOR ( 63 downto 0 );
    id_to_if_bus : in STD_LOGIC_VECTOR ( 33 downto 0 );
    inst_sram_en : out STD_LOGIC;
    inst_sram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_sram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_sram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_sram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end mycpu_top_block_if_stage_0_0;

architecture stub of mycpu_top_block_if_stage_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,id_allowin,if_to_id_valid,if_to_id_bus[63:0],id_to_if_bus[33:0],inst_sram_en,inst_sram_we[3:0],inst_sram_addr[31:0],inst_sram_wdata[31:0],inst_sram_rdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "if_stage,Vivado 2023.2";
begin
end;
