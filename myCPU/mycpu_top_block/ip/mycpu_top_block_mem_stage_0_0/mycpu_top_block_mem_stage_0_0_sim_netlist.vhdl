-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  6 10:04:57 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_mem_stage_0_0/mycpu_top_block_mem_stage_0_0_sim_netlist.vhdl
-- Design      : mycpu_top_block_mem_stage_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mycpu_top_block_mem_stage_0_0_mem_stage is
  port (
    mem_to_wb_bus : out STD_LOGIC_VECTOR ( 161 downto 0 );
    mem_valid_reg_0 : out STD_LOGIC;
    mem_allowin : out STD_LOGIC;
    mem_to_id_bus : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_flush : out STD_LOGIC;
    data_sram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    exe_to_mem_bus : in STD_LOGIC_VECTOR ( 165 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    excp_flush : in STD_LOGIC;
    ertn_flush : in STD_LOGIC;
    refetch_flush : in STD_LOGIC;
    exe_to_mem_valid : in STD_LOGIC;
    wb_allowin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mycpu_top_block_mem_stage_0_0_mem_stage : entity is "mem_stage";
end mycpu_top_block_mem_stage_0_0_mem_stage;

architecture STRUCTURE of mycpu_top_block_mem_stage_0_0_mem_stage is
  signal mem_data0 : STD_LOGIC;
  signal \mem_data_reg_n_0_[136]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[53]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[57]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[58]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[59]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[60]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[61]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[62]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[63]\ : STD_LOGIC;
  signal \mem_data_reg_n_0_[75]\ : STD_LOGIC;
  signal mem_load_op : STD_LOGIC;
  signal mem_mem_sign_exted : STD_LOGIC;
  signal \mem_to_id_bus[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[37]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mem_to_id_bus[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^mem_to_wb_bus\ : STD_LOGIC_VECTOR ( 161 downto 0 );
  signal \mem_valid0__0\ : STD_LOGIC;
  signal mem_valid_i_1_n_0 : STD_LOGIC;
  signal \^mem_valid_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mem_allowin_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mem_flush_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem_to_id_bus[0]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem_to_id_bus[16]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mem_to_id_bus[17]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mem_to_id_bus[18]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mem_to_id_bus[19]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mem_to_id_bus[20]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem_to_id_bus[21]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem_to_id_bus[22]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mem_to_id_bus[23]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mem_to_id_bus[24]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem_to_id_bus[25]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem_to_id_bus[26]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mem_to_id_bus[27]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mem_to_id_bus[28]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mem_to_id_bus[29]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mem_to_id_bus[30]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mem_to_id_bus[31]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mem_to_id_bus[38]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem_to_id_bus[5]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mem_valid_i_1 : label is "soft_lutpair0";
begin
  mem_to_wb_bus(161 downto 0) <= \^mem_to_wb_bus\(161 downto 0);
  mem_valid_reg_0 <= \^mem_valid_reg_0\;
mem_allowin_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wb_allowin,
      I1 => \^mem_valid_reg_0\,
      O => mem_allowin
    );
\mem_data[169]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => exe_to_mem_valid,
      I1 => wb_allowin,
      I2 => \^mem_valid_reg_0\,
      O => mem_data0
    );
\mem_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(0),
      Q => \^mem_to_wb_bus\(0),
      R => '0'
    );
\mem_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(96),
      Q => \^mem_to_wb_bus\(93),
      R => '0'
    );
\mem_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(97),
      Q => \^mem_to_wb_bus\(94),
      R => '0'
    );
\mem_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(98),
      Q => \^mem_to_wb_bus\(95),
      R => '0'
    );
\mem_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(99),
      Q => \^mem_to_wb_bus\(96),
      R => '0'
    );
\mem_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(100),
      Q => \^mem_to_wb_bus\(97),
      R => '0'
    );
\mem_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(101),
      Q => \^mem_to_wb_bus\(98),
      R => '0'
    );
\mem_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(102),
      Q => \^mem_to_wb_bus\(99),
      R => '0'
    );
\mem_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(103),
      Q => \^mem_to_wb_bus\(100),
      R => '0'
    );
\mem_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(104),
      Q => \^mem_to_wb_bus\(101),
      R => '0'
    );
\mem_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(105),
      Q => \^mem_to_wb_bus\(102),
      R => '0'
    );
\mem_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(10),
      Q => \^mem_to_wb_bus\(10),
      R => '0'
    );
\mem_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(106),
      Q => \^mem_to_wb_bus\(103),
      R => '0'
    );
\mem_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(107),
      Q => \^mem_to_wb_bus\(104),
      R => '0'
    );
\mem_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(108),
      Q => \^mem_to_wb_bus\(105),
      R => '0'
    );
\mem_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(109),
      Q => \^mem_to_wb_bus\(106),
      R => '0'
    );
\mem_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(110),
      Q => \^mem_to_wb_bus\(107),
      R => '0'
    );
\mem_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(111),
      Q => \^mem_to_wb_bus\(108),
      R => '0'
    );
\mem_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(112),
      Q => \^mem_to_wb_bus\(109),
      R => '0'
    );
\mem_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(113),
      Q => \^mem_to_wb_bus\(110),
      R => '0'
    );
\mem_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(114),
      Q => \^mem_to_wb_bus\(111),
      R => '0'
    );
\mem_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(115),
      Q => \^mem_to_wb_bus\(112),
      R => '0'
    );
\mem_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(11),
      Q => \^mem_to_wb_bus\(11),
      R => '0'
    );
\mem_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(116),
      Q => \^mem_to_wb_bus\(113),
      R => '0'
    );
\mem_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(117),
      Q => \^mem_to_wb_bus\(114),
      R => '0'
    );
\mem_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(118),
      Q => \^mem_to_wb_bus\(115),
      R => '0'
    );
\mem_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(119),
      Q => \^mem_to_wb_bus\(116),
      R => '0'
    );
\mem_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(120),
      Q => \^mem_to_wb_bus\(117),
      R => '0'
    );
\mem_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(121),
      Q => \^mem_to_wb_bus\(118),
      R => '0'
    );
\mem_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(122),
      Q => \^mem_to_wb_bus\(119),
      R => '0'
    );
\mem_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(123),
      Q => \^mem_to_wb_bus\(120),
      R => '0'
    );
\mem_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(124),
      Q => \^mem_to_wb_bus\(121),
      R => '0'
    );
\mem_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(125),
      Q => \^mem_to_wb_bus\(122),
      R => '0'
    );
\mem_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(12),
      Q => \^mem_to_wb_bus\(12),
      R => '0'
    );
\mem_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(126),
      Q => \^mem_to_wb_bus\(123),
      R => '0'
    );
\mem_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(127),
      Q => \^mem_to_wb_bus\(124),
      R => '0'
    );
\mem_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(128),
      Q => \^mem_to_wb_bus\(125),
      R => '0'
    );
\mem_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(129),
      Q => \^mem_to_wb_bus\(126),
      R => '0'
    );
\mem_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(130),
      Q => \^mem_to_wb_bus\(127),
      R => '0'
    );
\mem_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(131),
      Q => \^mem_to_wb_bus\(128),
      R => '0'
    );
\mem_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(132),
      Q => \mem_data_reg_n_0_[136]\,
      R => '0'
    );
\mem_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(133),
      Q => mem_mem_sign_exted,
      R => '0'
    );
\mem_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(134),
      Q => \^mem_to_wb_bus\(129),
      R => '0'
    );
\mem_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(135),
      Q => \^mem_to_wb_bus\(130),
      R => '0'
    );
\mem_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(13),
      Q => \^mem_to_wb_bus\(13),
      R => '0'
    );
\mem_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(136),
      Q => \^mem_to_wb_bus\(131),
      R => '0'
    );
\mem_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(137),
      Q => \^mem_to_wb_bus\(132),
      R => '0'
    );
\mem_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(138),
      Q => \^mem_to_wb_bus\(133),
      R => '0'
    );
\mem_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(139),
      Q => \^mem_to_wb_bus\(134),
      R => '0'
    );
\mem_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(140),
      Q => \^mem_to_wb_bus\(135),
      R => '0'
    );
\mem_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(141),
      Q => \^mem_to_wb_bus\(136),
      R => '0'
    );
\mem_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(142),
      Q => \^mem_to_wb_bus\(137),
      R => '0'
    );
\mem_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(143),
      Q => \^mem_to_wb_bus\(138),
      R => '0'
    );
\mem_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(144),
      Q => \^mem_to_wb_bus\(139),
      R => '0'
    );
\mem_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(145),
      Q => \^mem_to_wb_bus\(140),
      R => '0'
    );
\mem_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(14),
      Q => \^mem_to_wb_bus\(14),
      R => '0'
    );
\mem_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(146),
      Q => \^mem_to_wb_bus\(141),
      R => '0'
    );
\mem_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(147),
      Q => \^mem_to_wb_bus\(142),
      R => '0'
    );
\mem_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(148),
      Q => \^mem_to_wb_bus\(143),
      R => '0'
    );
\mem_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(149),
      Q => \^mem_to_wb_bus\(144),
      R => '0'
    );
\mem_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(150),
      Q => \^mem_to_wb_bus\(145),
      R => '0'
    );
\mem_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(151),
      Q => \^mem_to_wb_bus\(146),
      R => '0'
    );
\mem_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(152),
      Q => \^mem_to_wb_bus\(147),
      R => '0'
    );
\mem_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(153),
      Q => \^mem_to_wb_bus\(148),
      R => '0'
    );
\mem_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(154),
      Q => \^mem_to_wb_bus\(149),
      R => '0'
    );
\mem_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(155),
      Q => \^mem_to_wb_bus\(150),
      R => '0'
    );
\mem_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(15),
      Q => \^mem_to_wb_bus\(15),
      R => '0'
    );
\mem_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(156),
      Q => \^mem_to_wb_bus\(151),
      R => '0'
    );
\mem_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(157),
      Q => \^mem_to_wb_bus\(152),
      R => '0'
    );
\mem_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(158),
      Q => \^mem_to_wb_bus\(153),
      R => '0'
    );
\mem_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(159),
      Q => \^mem_to_wb_bus\(154),
      R => '0'
    );
\mem_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(160),
      Q => \^mem_to_wb_bus\(155),
      R => '0'
    );
\mem_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(161),
      Q => \^mem_to_wb_bus\(156),
      R => '0'
    );
\mem_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(162),
      Q => \^mem_to_wb_bus\(157),
      R => '0'
    );
\mem_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(163),
      Q => \^mem_to_wb_bus\(158),
      R => '0'
    );
\mem_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(164),
      Q => \^mem_to_wb_bus\(159),
      R => '0'
    );
\mem_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(165),
      Q => \^mem_to_wb_bus\(160),
      R => '0'
    );
\mem_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(16),
      Q => \^mem_to_wb_bus\(16),
      R => '0'
    );
\mem_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(17),
      Q => \^mem_to_wb_bus\(17),
      R => '0'
    );
\mem_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(18),
      Q => \^mem_to_wb_bus\(18),
      R => '0'
    );
\mem_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(19),
      Q => \^mem_to_wb_bus\(19),
      R => '0'
    );
\mem_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(1),
      Q => \^mem_to_wb_bus\(1),
      R => '0'
    );
\mem_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(20),
      Q => \^mem_to_wb_bus\(20),
      R => '0'
    );
\mem_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(21),
      Q => \^mem_to_wb_bus\(21),
      R => '0'
    );
\mem_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(22),
      Q => \^mem_to_wb_bus\(22),
      R => '0'
    );
\mem_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(23),
      Q => \^mem_to_wb_bus\(23),
      R => '0'
    );
\mem_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(24),
      Q => \^mem_to_wb_bus\(24),
      R => '0'
    );
\mem_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(25),
      Q => \^mem_to_wb_bus\(25),
      R => '0'
    );
\mem_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(26),
      Q => \^mem_to_wb_bus\(26),
      R => '0'
    );
\mem_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(27),
      Q => \^mem_to_wb_bus\(27),
      R => '0'
    );
\mem_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(28),
      Q => \^mem_to_wb_bus\(28),
      R => '0'
    );
\mem_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(29),
      Q => \^mem_to_wb_bus\(29),
      R => '0'
    );
\mem_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(2),
      Q => \^mem_to_wb_bus\(2),
      R => '0'
    );
\mem_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(30),
      Q => \^mem_to_wb_bus\(30),
      R => '0'
    );
\mem_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(31),
      Q => \^mem_to_wb_bus\(31),
      R => '0'
    );
\mem_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(32),
      Q => \mem_data_reg_n_0_[32]\,
      R => '0'
    );
\mem_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(33),
      Q => \mem_data_reg_n_0_[33]\,
      R => '0'
    );
\mem_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(34),
      Q => \mem_data_reg_n_0_[34]\,
      R => '0'
    );
\mem_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(35),
      Q => \mem_data_reg_n_0_[35]\,
      R => '0'
    );
\mem_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(36),
      Q => \mem_data_reg_n_0_[36]\,
      R => '0'
    );
\mem_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(37),
      Q => \mem_data_reg_n_0_[37]\,
      R => '0'
    );
\mem_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(38),
      Q => \mem_data_reg_n_0_[38]\,
      R => '0'
    );
\mem_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(39),
      Q => \mem_data_reg_n_0_[39]\,
      R => '0'
    );
\mem_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(3),
      Q => \^mem_to_wb_bus\(3),
      R => '0'
    );
\mem_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(40),
      Q => \mem_data_reg_n_0_[40]\,
      R => '0'
    );
\mem_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(41),
      Q => \mem_data_reg_n_0_[41]\,
      R => '0'
    );
\mem_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(42),
      Q => \mem_data_reg_n_0_[42]\,
      R => '0'
    );
\mem_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(43),
      Q => \mem_data_reg_n_0_[43]\,
      R => '0'
    );
\mem_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(44),
      Q => \mem_data_reg_n_0_[44]\,
      R => '0'
    );
\mem_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(45),
      Q => \mem_data_reg_n_0_[45]\,
      R => '0'
    );
\mem_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(46),
      Q => \mem_data_reg_n_0_[46]\,
      R => '0'
    );
\mem_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(47),
      Q => \mem_data_reg_n_0_[47]\,
      R => '0'
    );
\mem_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(48),
      Q => \mem_data_reg_n_0_[48]\,
      R => '0'
    );
\mem_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(49),
      Q => \mem_data_reg_n_0_[49]\,
      R => '0'
    );
\mem_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(4),
      Q => \^mem_to_wb_bus\(4),
      R => '0'
    );
\mem_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(50),
      Q => \mem_data_reg_n_0_[50]\,
      R => '0'
    );
\mem_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(51),
      Q => \mem_data_reg_n_0_[51]\,
      R => '0'
    );
\mem_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(52),
      Q => \mem_data_reg_n_0_[52]\,
      R => '0'
    );
\mem_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(53),
      Q => \mem_data_reg_n_0_[53]\,
      R => '0'
    );
\mem_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(54),
      Q => \mem_data_reg_n_0_[54]\,
      R => '0'
    );
\mem_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(55),
      Q => \mem_data_reg_n_0_[55]\,
      R => '0'
    );
\mem_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(56),
      Q => \mem_data_reg_n_0_[56]\,
      R => '0'
    );
\mem_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(57),
      Q => \mem_data_reg_n_0_[57]\,
      R => '0'
    );
\mem_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(58),
      Q => \mem_data_reg_n_0_[58]\,
      R => '0'
    );
\mem_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(59),
      Q => \mem_data_reg_n_0_[59]\,
      R => '0'
    );
\mem_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(5),
      Q => \^mem_to_wb_bus\(5),
      R => '0'
    );
\mem_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(60),
      Q => \mem_data_reg_n_0_[60]\,
      R => '0'
    );
\mem_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(61),
      Q => \mem_data_reg_n_0_[61]\,
      R => '0'
    );
\mem_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(62),
      Q => \mem_data_reg_n_0_[62]\,
      R => '0'
    );
\mem_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(63),
      Q => \mem_data_reg_n_0_[63]\,
      R => '0'
    );
\mem_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(64),
      Q => \^mem_to_wb_bus\(64),
      R => '0'
    );
\mem_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(65),
      Q => \^mem_to_wb_bus\(65),
      R => '0'
    );
\mem_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(66),
      Q => \^mem_to_wb_bus\(66),
      R => '0'
    );
\mem_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(67),
      Q => \^mem_to_wb_bus\(67),
      R => '0'
    );
\mem_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(68),
      Q => \^mem_to_wb_bus\(68),
      R => '0'
    );
\mem_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(69),
      Q => \^mem_to_wb_bus\(69),
      R => '0'
    );
\mem_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(6),
      Q => \^mem_to_wb_bus\(6),
      R => '0'
    );
\mem_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(70),
      Q => mem_load_op,
      R => '0'
    );
\mem_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(71),
      Q => \mem_data_reg_n_0_[75]\,
      R => '0'
    );
\mem_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(72),
      Q => p_1_in,
      R => '0'
    );
\mem_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(73),
      Q => \^mem_to_wb_bus\(70),
      R => '0'
    );
\mem_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(74),
      Q => \^mem_to_wb_bus\(71),
      R => '0'
    );
\mem_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(75),
      Q => \^mem_to_wb_bus\(72),
      R => '0'
    );
\mem_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(7),
      Q => \^mem_to_wb_bus\(7),
      R => '0'
    );
\mem_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(76),
      Q => \^mem_to_wb_bus\(73),
      R => '0'
    );
\mem_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(77),
      Q => \^mem_to_wb_bus\(74),
      R => '0'
    );
\mem_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(78),
      Q => \^mem_to_wb_bus\(75),
      R => '0'
    );
\mem_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(79),
      Q => \^mem_to_wb_bus\(76),
      R => '0'
    );
\mem_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(80),
      Q => \^mem_to_wb_bus\(77),
      R => '0'
    );
\mem_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(81),
      Q => \^mem_to_wb_bus\(78),
      R => '0'
    );
\mem_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(82),
      Q => \^mem_to_wb_bus\(79),
      R => '0'
    );
\mem_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(83),
      Q => \^mem_to_wb_bus\(80),
      R => '0'
    );
\mem_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(84),
      Q => \^mem_to_wb_bus\(81),
      R => '0'
    );
\mem_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(85),
      Q => \^mem_to_wb_bus\(82),
      R => '0'
    );
\mem_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(8),
      Q => \^mem_to_wb_bus\(8),
      R => '0'
    );
\mem_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(86),
      Q => \^mem_to_wb_bus\(83),
      R => '0'
    );
\mem_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(87),
      Q => \^mem_to_wb_bus\(84),
      R => '0'
    );
\mem_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(88),
      Q => \^mem_to_wb_bus\(85),
      R => '0'
    );
\mem_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(89),
      Q => \^mem_to_wb_bus\(86),
      R => '0'
    );
\mem_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(90),
      Q => \^mem_to_wb_bus\(87),
      R => '0'
    );
\mem_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(91),
      Q => \^mem_to_wb_bus\(88),
      R => '0'
    );
\mem_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(92),
      Q => \^mem_to_wb_bus\(89),
      R => '0'
    );
\mem_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(93),
      Q => \^mem_to_wb_bus\(90),
      R => '0'
    );
\mem_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(94),
      Q => \^mem_to_wb_bus\(91),
      R => '0'
    );
\mem_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(95),
      Q => \^mem_to_wb_bus\(92),
      R => '0'
    );
\mem_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_data0,
      D => exe_to_mem_bus(9),
      Q => \^mem_to_wb_bus\(9),
      R => '0'
    );
mem_flush_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^mem_valid_reg_0\,
      I1 => \^mem_to_wb_bus\(70),
      I2 => \^mem_to_wb_bus\(71),
      I3 => \^mem_to_wb_bus\(118),
      O => mem_flush
    );
\mem_to_id_bus[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[0]_INST_0_i_1_n_0\,
      I1 => data_sram_rdata(0),
      I2 => \mem_to_id_bus[0]_INST_0_i_2_n_0\,
      I3 => \mem_to_id_bus[0]_INST_0_i_3_n_0\,
      I4 => \mem_data_reg_n_0_[32]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(32)
    );
\mem_to_id_bus[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \mem_data_reg_n_0_[32]\,
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => p_1_in,
      I3 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[0]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00000FFFFFFFF"
    )
        port map (
      I0 => p_1_in,
      I1 => \mem_data_reg_n_0_[75]\,
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => data_sram_rdata(16),
      I5 => mem_load_op,
      O => \mem_to_id_bus[0]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80A08000"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => data_sram_rdata(24),
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[33]\,
      I4 => data_sram_rdata(8),
      O => \mem_to_id_bus[0]_INST_0_i_3_n_0\
    );
\mem_to_id_bus[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[10]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[42]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(42)
    );
\mem_to_id_bus[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(26),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(10),
      O => \mem_to_id_bus[10]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[11]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[43]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(43)
    );
\mem_to_id_bus[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(27),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(11),
      O => \mem_to_id_bus[11]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[12]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[44]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(44)
    );
\mem_to_id_bus[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(28),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(12),
      O => \mem_to_id_bus[12]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[13]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[45]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(45)
    );
\mem_to_id_bus[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(29),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(13),
      O => \mem_to_id_bus[13]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[14]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[46]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(46)
    );
\mem_to_id_bus[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(30),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(14),
      O => \mem_to_id_bus[14]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[15]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[47]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(47)
    );
\mem_to_id_bus[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"232300FF20200000"
    )
        port map (
      I0 => data_sram_rdata(31),
      I1 => \mem_data_reg_n_0_[32]\,
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(15),
      O => \mem_to_id_bus[15]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[16]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[48]\,
      O => \^mem_to_wb_bus\(48)
    );
\mem_to_id_bus[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(16),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[16]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[17]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[49]\,
      O => \^mem_to_wb_bus\(49)
    );
\mem_to_id_bus[17]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(17),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[17]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[18]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[50]\,
      O => \^mem_to_wb_bus\(50)
    );
\mem_to_id_bus[18]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(18),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[18]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[19]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[51]\,
      O => \^mem_to_wb_bus\(51)
    );
\mem_to_id_bus[19]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(19),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[19]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \mem_to_id_bus[1]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[1]_INST_0_i_2_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_load_op,
      I4 => \mem_data_reg_n_0_[33]\,
      O => \^mem_to_wb_bus\(33)
    );
\mem_to_id_bus[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC44444444"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => data_sram_rdata(1),
      I2 => data_sram_rdata(17),
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => \mem_data_reg_n_0_[33]\,
      I5 => p_1_in,
      O => \mem_to_id_bus[1]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"530053F0530F53FF"
    )
        port map (
      I0 => data_sram_rdata(25),
      I1 => data_sram_rdata(9),
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => data_sram_rdata(17),
      I5 => data_sram_rdata(1),
      O => \mem_to_id_bus[1]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[20]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[52]\,
      O => \^mem_to_wb_bus\(52)
    );
\mem_to_id_bus[20]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(20),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[20]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[21]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[53]\,
      O => \^mem_to_wb_bus\(53)
    );
\mem_to_id_bus[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(21),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[21]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[22]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[54]\,
      O => \^mem_to_wb_bus\(54)
    );
\mem_to_id_bus[22]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(22),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[22]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[23]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[55]\,
      O => \^mem_to_wb_bus\(55)
    );
\mem_to_id_bus[23]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(23),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[23]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[24]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[56]\,
      O => \^mem_to_wb_bus\(56)
    );
\mem_to_id_bus[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(24),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[24]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[25]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[57]\,
      O => \^mem_to_wb_bus\(57)
    );
\mem_to_id_bus[25]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(25),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[25]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[26]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[58]\,
      O => \^mem_to_wb_bus\(58)
    );
\mem_to_id_bus[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(26),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[26]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[27]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[59]\,
      O => \^mem_to_wb_bus\(59)
    );
\mem_to_id_bus[27]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(27),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[27]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[28]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[60]\,
      O => \^mem_to_wb_bus\(60)
    );
\mem_to_id_bus[28]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(28),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[28]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[29]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[61]\,
      O => \^mem_to_wb_bus\(61)
    );
\mem_to_id_bus[29]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(29),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[29]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0E00EEEEEEEE"
    )
        port map (
      I0 => \mem_data_reg_n_0_[34]\,
      I1 => mem_load_op,
      I2 => \mem_to_id_bus[5]_INST_0_i_1_n_0\,
      I3 => data_sram_rdata(18),
      I4 => \mem_to_id_bus[2]_INST_0_i_1_n_0\,
      I5 => \mem_to_id_bus[2]_INST_0_i_2_n_0\,
      O => \^mem_to_wb_bus\(34)
    );
\mem_to_id_bus[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F0000FFFFFFFF"
    )
        port map (
      I0 => \mem_data_reg_n_0_[32]\,
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => p_1_in,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => data_sram_rdata(2),
      I5 => mem_load_op,
      O => \mem_to_id_bus[2]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FF7FF"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => \mem_data_reg_n_0_[32]\,
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => data_sram_rdata(10),
      I4 => data_sram_rdata(26),
      O => \mem_to_id_bus[2]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I2 => \mem_to_id_bus[30]_INST_0_i_1_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[62]\,
      O => \^mem_to_wb_bus\(62)
    );
\mem_to_id_bus[30]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(30),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[30]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFEFEE0000"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_2_n_0\,
      I2 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I3 => \mem_to_id_bus[31]_INST_0_i_4_n_0\,
      I4 => mem_load_op,
      I5 => \mem_data_reg_n_0_[63]\,
      O => \^mem_to_wb_bus\(63)
    );
\mem_to_id_bus[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3120000000000000"
    )
        port map (
      I0 => \mem_data_reg_n_0_[33]\,
      I1 => \mem_data_reg_n_0_[32]\,
      I2 => data_sram_rdata(31),
      I3 => data_sram_rdata(15),
      I4 => p_1_in,
      I5 => mem_mem_sign_exted,
      O => \mem_to_id_bus[31]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_sram_rdata(31),
      I1 => p_1_in,
      I2 => \mem_data_reg_n_0_[75]\,
      O => \mem_to_id_bus[31]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3300550F33FF55"
    )
        port map (
      I0 => data_sram_rdata(7),
      I1 => data_sram_rdata(23),
      I2 => data_sram_rdata(31),
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => \mem_data_reg_n_0_[33]\,
      I5 => data_sram_rdata(15),
      O => \mem_to_id_bus[31]_INST_0_i_3_n_0\
    );
\mem_to_id_bus[31]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => mem_mem_sign_exted,
      O => \mem_to_id_bus[31]_INST_0_i_4_n_0\
    );
\mem_to_id_bus[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \mem_to_id_bus[37]_INST_0_i_1_n_0\,
      I1 => \^mem_to_wb_bus\(69),
      I2 => \^mem_valid_reg_0\,
      O => mem_to_id_bus(0)
    );
\mem_to_id_bus[37]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^mem_to_wb_bus\(67),
      I1 => \^mem_to_wb_bus\(64),
      I2 => \^mem_to_wb_bus\(65),
      I3 => \^mem_to_wb_bus\(68),
      I4 => \^mem_to_wb_bus\(66),
      O => \mem_to_id_bus[37]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[38]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mem_load_op,
      I1 => \^mem_valid_reg_0\,
      O => mem_to_id_bus(1)
    );
\mem_to_id_bus[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \mem_to_id_bus[3]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[3]_INST_0_i_2_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_load_op,
      I4 => \mem_data_reg_n_0_[35]\,
      O => \^mem_to_wb_bus\(35)
    );
\mem_to_id_bus[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC44444444"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => data_sram_rdata(3),
      I2 => data_sram_rdata(19),
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => \mem_data_reg_n_0_[33]\,
      I5 => p_1_in,
      O => \mem_to_id_bus[3]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"530053F0530F53FF"
    )
        port map (
      I0 => data_sram_rdata(27),
      I1 => data_sram_rdata(11),
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => data_sram_rdata(19),
      I5 => data_sram_rdata(3),
      O => \mem_to_id_bus[3]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \mem_to_id_bus[4]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[4]_INST_0_i_2_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_load_op,
      I4 => \mem_data_reg_n_0_[36]\,
      O => \^mem_to_wb_bus\(36)
    );
\mem_to_id_bus[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC44444444"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => data_sram_rdata(4),
      I2 => data_sram_rdata(20),
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => \mem_data_reg_n_0_[33]\,
      I5 => p_1_in,
      O => \mem_to_id_bus[4]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"530053F0530F53FF"
    )
        port map (
      I0 => data_sram_rdata(28),
      I1 => data_sram_rdata(12),
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => data_sram_rdata(20),
      I5 => data_sram_rdata(4),
      O => \mem_to_id_bus[4]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF40000"
    )
        port map (
      I0 => \mem_to_id_bus[5]_INST_0_i_1_n_0\,
      I1 => data_sram_rdata(21),
      I2 => \mem_to_id_bus[5]_INST_0_i_2_n_0\,
      I3 => \mem_to_id_bus[5]_INST_0_i_3_n_0\,
      I4 => \mem_data_reg_n_0_[37]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(37)
    );
\mem_to_id_bus[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1F"
    )
        port map (
      I0 => p_1_in,
      I1 => \mem_data_reg_n_0_[75]\,
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => \mem_data_reg_n_0_[32]\,
      O => \mem_to_id_bus[5]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F0000FFFFFFFF"
    )
        port map (
      I0 => \mem_data_reg_n_0_[32]\,
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => p_1_in,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => data_sram_rdata(5),
      I5 => mem_load_op,
      O => \mem_to_id_bus[5]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80A08000"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => data_sram_rdata(29),
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[33]\,
      I4 => data_sram_rdata(13),
      O => \mem_to_id_bus[5]_INST_0_i_3_n_0\
    );
\mem_to_id_bus[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \mem_to_id_bus[6]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[6]_INST_0_i_2_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_load_op,
      I4 => \mem_data_reg_n_0_[38]\,
      O => \^mem_to_wb_bus\(38)
    );
\mem_to_id_bus[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC44444444"
    )
        port map (
      I0 => \mem_data_reg_n_0_[75]\,
      I1 => data_sram_rdata(6),
      I2 => data_sram_rdata(22),
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => \mem_data_reg_n_0_[33]\,
      I5 => p_1_in,
      O => \mem_to_id_bus[6]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"530053F0530F53FF"
    )
        port map (
      I0 => data_sram_rdata(30),
      I1 => data_sram_rdata(14),
      I2 => \mem_data_reg_n_0_[33]\,
      I3 => \mem_data_reg_n_0_[32]\,
      I4 => data_sram_rdata(22),
      I5 => data_sram_rdata(6),
      O => \mem_to_id_bus[6]_INST_0_i_2_n_0\
    );
\mem_to_id_bus[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I1 => \mem_data_reg_n_0_[75]\,
      I2 => \mem_to_id_bus[7]_INST_0_i_1_n_0\,
      I3 => mem_load_op,
      I4 => \mem_data_reg_n_0_[39]\,
      O => \^mem_to_wb_bus\(39)
    );
\mem_to_id_bus[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(23),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(7),
      O => \mem_to_id_bus[7]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[8]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[40]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(40)
    );
\mem_to_id_bus[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(24),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(8),
      O => \mem_to_id_bus[8]_INST_0_i_1_n_0\
    );
\mem_to_id_bus[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFFFF0000"
    )
        port map (
      I0 => \mem_to_id_bus[9]_INST_0_i_1_n_0\,
      I1 => \mem_to_id_bus[31]_INST_0_i_3_n_0\,
      I2 => \mem_data_reg_n_0_[75]\,
      I3 => mem_mem_sign_exted,
      I4 => \mem_data_reg_n_0_[41]\,
      I5 => mem_load_op,
      O => \^mem_to_wb_bus\(41)
    );
\mem_to_id_bus[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B00FF08080000"
    )
        port map (
      I0 => data_sram_rdata(25),
      I1 => \mem_data_reg_n_0_[33]\,
      I2 => \mem_data_reg_n_0_[32]\,
      I3 => \mem_data_reg_n_0_[75]\,
      I4 => p_1_in,
      I5 => data_sram_rdata(9),
      O => \mem_to_id_bus[9]_INST_0_i_1_n_0\
    );
\mem_to_wb_bus[167]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mem_load_op,
      I1 => \mem_data_reg_n_0_[136]\,
      O => \^mem_to_wb_bus\(161)
    );
mem_valid0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => resetn,
      I1 => excp_flush,
      I2 => ertn_flush,
      I3 => refetch_flush,
      O => \mem_valid0__0\
    );
mem_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BA"
    )
        port map (
      I0 => exe_to_mem_valid,
      I1 => wb_allowin,
      I2 => \^mem_valid_reg_0\,
      I3 => \mem_valid0__0\,
      O => mem_valid_i_1_n_0
    );
mem_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mem_valid_i_1_n_0,
      Q => \^mem_valid_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mycpu_top_block_mem_stage_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    mem_allowin : out STD_LOGIC;
    exe_to_mem_valid : in STD_LOGIC;
    exe_to_mem_bus : in STD_LOGIC_VECTOR ( 169 downto 0 );
    wb_allowin : in STD_LOGIC;
    mem_to_wb_valid : out STD_LOGIC;
    mem_to_wb_bus : out STD_LOGIC_VECTOR ( 167 downto 0 );
    mem_to_id_bus : out STD_LOGIC_VECTOR ( 38 downto 0 );
    data_sram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    excp_flush : in STD_LOGIC;
    ertn_flush : in STD_LOGIC;
    refetch_flush : in STD_LOGIC;
    mem_flush : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mycpu_top_block_mem_stage_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mycpu_top_block_mem_stage_0_0 : entity is "mycpu_top_block_mem_stage_0_0,mem_stage,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mycpu_top_block_mem_stage_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mycpu_top_block_mem_stage_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mycpu_top_block_mem_stage_0_0 : entity is "mem_stage,Vivado 2023.2";
end mycpu_top_block_mem_stage_0_0;

architecture STRUCTURE of mycpu_top_block_mem_stage_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^mem_to_id_bus\ : STD_LOGIC_VECTOR ( 38 downto 37 );
  signal \^mem_to_wb_bus\ : STD_LOGIC_VECTOR ( 167 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  mem_to_id_bus(38 downto 37) <= \^mem_to_id_bus\(38 downto 37);
  mem_to_id_bus(36 downto 0) <= \^mem_to_wb_bus\(68 downto 32);
  mem_to_wb_bus(167 downto 135) <= \^mem_to_wb_bus\(167 downto 135);
  mem_to_wb_bus(134) <= \<const0>\;
  mem_to_wb_bus(133) <= \<const0>\;
  mem_to_wb_bus(132) <= \<const0>\;
  mem_to_wb_bus(131) <= \<const0>\;
  mem_to_wb_bus(130) <= \<const0>\;
  mem_to_wb_bus(129) <= \<const0>\;
  mem_to_wb_bus(128 downto 0) <= \^mem_to_wb_bus\(128 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.mycpu_top_block_mem_stage_0_0_mem_stage
     port map (
      clk => clk,
      data_sram_rdata(31 downto 0) => data_sram_rdata(31 downto 0),
      ertn_flush => ertn_flush,
      excp_flush => excp_flush,
      exe_to_mem_bus(165 downto 71) => exe_to_mem_bus(169 downto 75),
      exe_to_mem_bus(70 downto 0) => exe_to_mem_bus(70 downto 0),
      exe_to_mem_valid => exe_to_mem_valid,
      mem_allowin => mem_allowin,
      mem_flush => mem_flush,
      mem_to_id_bus(1 downto 0) => \^mem_to_id_bus\(38 downto 37),
      mem_to_wb_bus(161 downto 129) => \^mem_to_wb_bus\(167 downto 135),
      mem_to_wb_bus(128 downto 0) => \^mem_to_wb_bus\(128 downto 0),
      mem_valid_reg_0 => mem_to_wb_valid,
      refetch_flush => refetch_flush,
      resetn => resetn,
      wb_allowin => wb_allowin
    );
end STRUCTURE;
