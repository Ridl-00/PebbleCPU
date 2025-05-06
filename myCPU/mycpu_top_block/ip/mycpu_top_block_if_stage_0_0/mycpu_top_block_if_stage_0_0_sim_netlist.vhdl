-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  6 10:04:57 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_if_stage_0_0/mycpu_top_block_if_stage_0_0_sim_netlist.vhdl
-- Design      : mycpu_top_block_if_stage_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mycpu_top_block_if_stage_0_0_if_stage is
  port (
    if_to_id_bus : out STD_LOGIC_VECTOR ( 32 downto 0 );
    inst_sram_en : out STD_LOGIC;
    inst_sram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    if_to_id_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    id_to_if_bus : in STD_LOGIC_VECTOR ( 32 downto 0 );
    id_allowin : in STD_LOGIC;
    ertn_flush : in STD_LOGIC;
    refetch_flush : in STD_LOGIC;
    excp_flush : in STD_LOGIC;
    csr_era : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csr_eentry : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_pc : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mycpu_top_block_if_stage_0_0_if_stage : entity is "if_stage";
end mycpu_top_block_if_stage_0_0_if_stage;

architecture STRUCTURE of mycpu_top_block_if_stage_0_0_if_stage is
  signal if_excp_i_3_n_0 : STD_LOGIC;
  signal \^if_to_id_bus\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \^if_to_id_valid\ : STD_LOGIC;
  signal if_valid_i_1_n_0 : STD_LOGIC;
  signal if_valid_i_2_n_0 : STD_LOGIC;
  signal inst_flush_pc1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \inst_flush_pc1_carry__0_n_0\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__0_n_1\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__0_n_2\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__0_n_3\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__1_n_0\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__1_n_1\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__1_n_2\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__1_n_3\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__2_n_0\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__2_n_1\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__2_n_2\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__2_n_3\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__3_n_0\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__3_n_1\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__3_n_2\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__3_n_3\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__4_n_0\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__4_n_1\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__4_n_2\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__4_n_3\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__5_n_0\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__5_n_1\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__5_n_2\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__5_n_3\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__6_n_2\ : STD_LOGIC;
  signal \inst_flush_pc1_carry__6_n_3\ : STD_LOGIC;
  signal inst_flush_pc1_carry_i_1_n_0 : STD_LOGIC;
  signal inst_flush_pc1_carry_n_0 : STD_LOGIC;
  signal inst_flush_pc1_carry_n_1 : STD_LOGIC;
  signal inst_flush_pc1_carry_n_2 : STD_LOGIC;
  signal inst_flush_pc1_carry_n_3 : STD_LOGIC;
  signal \^inst_sram_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \inst_sram_addr[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_sram_addr[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^inst_sram_en\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal seq_pc : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \seq_pc_carry__0_n_0\ : STD_LOGIC;
  signal \seq_pc_carry__0_n_1\ : STD_LOGIC;
  signal \seq_pc_carry__0_n_2\ : STD_LOGIC;
  signal \seq_pc_carry__0_n_3\ : STD_LOGIC;
  signal \seq_pc_carry__1_n_0\ : STD_LOGIC;
  signal \seq_pc_carry__1_n_1\ : STD_LOGIC;
  signal \seq_pc_carry__1_n_2\ : STD_LOGIC;
  signal \seq_pc_carry__1_n_3\ : STD_LOGIC;
  signal \seq_pc_carry__2_n_0\ : STD_LOGIC;
  signal \seq_pc_carry__2_n_1\ : STD_LOGIC;
  signal \seq_pc_carry__2_n_2\ : STD_LOGIC;
  signal \seq_pc_carry__2_n_3\ : STD_LOGIC;
  signal \seq_pc_carry__3_n_0\ : STD_LOGIC;
  signal \seq_pc_carry__3_n_1\ : STD_LOGIC;
  signal \seq_pc_carry__3_n_2\ : STD_LOGIC;
  signal \seq_pc_carry__3_n_3\ : STD_LOGIC;
  signal \seq_pc_carry__4_n_0\ : STD_LOGIC;
  signal \seq_pc_carry__4_n_1\ : STD_LOGIC;
  signal \seq_pc_carry__4_n_2\ : STD_LOGIC;
  signal \seq_pc_carry__4_n_3\ : STD_LOGIC;
  signal \seq_pc_carry__5_n_0\ : STD_LOGIC;
  signal \seq_pc_carry__5_n_1\ : STD_LOGIC;
  signal \seq_pc_carry__5_n_2\ : STD_LOGIC;
  signal \seq_pc_carry__5_n_3\ : STD_LOGIC;
  signal \seq_pc_carry__6_n_2\ : STD_LOGIC;
  signal \seq_pc_carry__6_n_3\ : STD_LOGIC;
  signal seq_pc_carry_i_1_n_0 : STD_LOGIC;
  signal seq_pc_carry_n_0 : STD_LOGIC;
  signal seq_pc_carry_n_1 : STD_LOGIC;
  signal seq_pc_carry_n_2 : STD_LOGIC;
  signal seq_pc_carry_n_3 : STD_LOGIC;
  signal \NLW_inst_flush_pc1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_inst_flush_pc1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_seq_pc_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_seq_pc_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of inst_flush_pc1_carry : label is 35;
  attribute ADDER_THRESHOLD of \inst_flush_pc1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \inst_flush_pc1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \inst_flush_pc1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \inst_flush_pc1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \inst_flush_pc1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \inst_flush_pc1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \inst_flush_pc1_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of seq_pc_carry : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__6\ : label is 35;
begin
  if_to_id_bus(32 downto 0) <= \^if_to_id_bus\(32 downto 0);
  if_to_id_valid <= \^if_to_id_valid\;
  inst_sram_addr(31 downto 0) <= \^inst_sram_addr\(31 downto 0);
  inst_sram_en <= \^inst_sram_en\;
if_excp_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => p_0_in
    );
if_excp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEAA"
    )
        port map (
      I0 => if_excp_i_3_n_0,
      I1 => id_to_if_bus(1),
      I2 => id_to_if_bus(0),
      I3 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I4 => \inst_sram_addr[1]_INST_0_i_1_n_0\,
      I5 => \inst_sram_addr[0]_INST_0_i_1_n_0\,
      O => p_2_in
    );
if_excp_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => \^if_to_id_bus\(0),
      I1 => seq_pc(1),
      I2 => id_to_if_bus(32),
      I3 => ertn_flush,
      I4 => refetch_flush,
      I5 => excp_flush,
      O => if_excp_i_3_n_0
    );
if_excp_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => p_2_in,
      Q => \^if_to_id_bus\(32),
      R => p_0_in
    );
\if_pc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(0),
      Q => \^if_to_id_bus\(0),
      R => p_0_in
    );
\if_pc_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(10),
      Q => \^if_to_id_bus\(10),
      S => p_0_in
    );
\if_pc_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(11),
      Q => \^if_to_id_bus\(11),
      S => p_0_in
    );
\if_pc_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(12),
      Q => \^if_to_id_bus\(12),
      S => p_0_in
    );
\if_pc_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(13),
      Q => \^if_to_id_bus\(13),
      S => p_0_in
    );
\if_pc_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(14),
      Q => \^if_to_id_bus\(14),
      S => p_0_in
    );
\if_pc_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(15),
      Q => \^if_to_id_bus\(15),
      S => p_0_in
    );
\if_pc_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(16),
      Q => \^if_to_id_bus\(16),
      S => p_0_in
    );
\if_pc_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(17),
      Q => \^if_to_id_bus\(17),
      S => p_0_in
    );
\if_pc_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(18),
      Q => \^if_to_id_bus\(18),
      S => p_0_in
    );
\if_pc_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(19),
      Q => \^if_to_id_bus\(19),
      S => p_0_in
    );
\if_pc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(1),
      Q => \^if_to_id_bus\(1),
      R => p_0_in
    );
\if_pc_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(20),
      Q => \^if_to_id_bus\(20),
      S => p_0_in
    );
\if_pc_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(21),
      Q => \^if_to_id_bus\(21),
      S => p_0_in
    );
\if_pc_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(22),
      Q => \^if_to_id_bus\(22),
      S => p_0_in
    );
\if_pc_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(23),
      Q => \^if_to_id_bus\(23),
      S => p_0_in
    );
\if_pc_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(24),
      Q => \^if_to_id_bus\(24),
      S => p_0_in
    );
\if_pc_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(25),
      Q => \^if_to_id_bus\(25),
      S => p_0_in
    );
\if_pc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(26),
      Q => \^if_to_id_bus\(26),
      R => p_0_in
    );
\if_pc_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(27),
      Q => \^if_to_id_bus\(27),
      S => p_0_in
    );
\if_pc_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(28),
      Q => \^if_to_id_bus\(28),
      S => p_0_in
    );
\if_pc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(29),
      Q => \^if_to_id_bus\(29),
      R => p_0_in
    );
\if_pc_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(2),
      Q => \^if_to_id_bus\(2),
      S => p_0_in
    );
\if_pc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(30),
      Q => \^if_to_id_bus\(30),
      R => p_0_in
    );
\if_pc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(31),
      Q => \^if_to_id_bus\(31),
      R => p_0_in
    );
\if_pc_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(3),
      Q => \^if_to_id_bus\(3),
      S => p_0_in
    );
\if_pc_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(4),
      Q => \^if_to_id_bus\(4),
      S => p_0_in
    );
\if_pc_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(5),
      Q => \^if_to_id_bus\(5),
      S => p_0_in
    );
\if_pc_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(6),
      Q => \^if_to_id_bus\(6),
      S => p_0_in
    );
\if_pc_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(7),
      Q => \^if_to_id_bus\(7),
      S => p_0_in
    );
\if_pc_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(8),
      Q => \^if_to_id_bus\(8),
      S => p_0_in
    );
\if_pc_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(9),
      Q => \^if_to_id_bus\(9),
      S => p_0_in
    );
if_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E000F0E0E0E0E0"
    )
        port map (
      I0 => if_valid_i_2_n_0,
      I1 => \^inst_sram_en\,
      I2 => resetn,
      I3 => id_to_if_bus(32),
      I4 => id_allowin,
      I5 => \^if_to_id_valid\,
      O => if_valid_i_1_n_0
    );
if_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => id_to_if_bus(0),
      I1 => id_to_if_bus(1),
      I2 => seq_pc(1),
      I3 => \^if_to_id_bus\(0),
      I4 => resetn,
      I5 => id_to_if_bus(32),
      O => if_valid_i_2_n_0
    );
if_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => if_valid_i_1_n_0,
      Q => \^if_to_id_valid\,
      R => '0'
    );
inst_flush_pc1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => inst_flush_pc1_carry_n_0,
      CO(2) => inst_flush_pc1_carry_n_1,
      CO(1) => inst_flush_pc1_carry_n_2,
      CO(0) => inst_flush_pc1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => wb_pc(2),
      DI(0) => '0',
      O(3 downto 0) => inst_flush_pc1(4 downto 1),
      S(3 downto 2) => wb_pc(4 downto 3),
      S(1) => inst_flush_pc1_carry_i_1_n_0,
      S(0) => wb_pc(1)
    );
\inst_flush_pc1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => inst_flush_pc1_carry_n_0,
      CO(3) => \inst_flush_pc1_carry__0_n_0\,
      CO(2) => \inst_flush_pc1_carry__0_n_1\,
      CO(1) => \inst_flush_pc1_carry__0_n_2\,
      CO(0) => \inst_flush_pc1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inst_flush_pc1(8 downto 5),
      S(3 downto 0) => wb_pc(8 downto 5)
    );
\inst_flush_pc1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \inst_flush_pc1_carry__0_n_0\,
      CO(3) => \inst_flush_pc1_carry__1_n_0\,
      CO(2) => \inst_flush_pc1_carry__1_n_1\,
      CO(1) => \inst_flush_pc1_carry__1_n_2\,
      CO(0) => \inst_flush_pc1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inst_flush_pc1(12 downto 9),
      S(3 downto 0) => wb_pc(12 downto 9)
    );
\inst_flush_pc1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \inst_flush_pc1_carry__1_n_0\,
      CO(3) => \inst_flush_pc1_carry__2_n_0\,
      CO(2) => \inst_flush_pc1_carry__2_n_1\,
      CO(1) => \inst_flush_pc1_carry__2_n_2\,
      CO(0) => \inst_flush_pc1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inst_flush_pc1(16 downto 13),
      S(3 downto 0) => wb_pc(16 downto 13)
    );
\inst_flush_pc1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \inst_flush_pc1_carry__2_n_0\,
      CO(3) => \inst_flush_pc1_carry__3_n_0\,
      CO(2) => \inst_flush_pc1_carry__3_n_1\,
      CO(1) => \inst_flush_pc1_carry__3_n_2\,
      CO(0) => \inst_flush_pc1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inst_flush_pc1(20 downto 17),
      S(3 downto 0) => wb_pc(20 downto 17)
    );
\inst_flush_pc1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \inst_flush_pc1_carry__3_n_0\,
      CO(3) => \inst_flush_pc1_carry__4_n_0\,
      CO(2) => \inst_flush_pc1_carry__4_n_1\,
      CO(1) => \inst_flush_pc1_carry__4_n_2\,
      CO(0) => \inst_flush_pc1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inst_flush_pc1(24 downto 21),
      S(3 downto 0) => wb_pc(24 downto 21)
    );
\inst_flush_pc1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \inst_flush_pc1_carry__4_n_0\,
      CO(3) => \inst_flush_pc1_carry__5_n_0\,
      CO(2) => \inst_flush_pc1_carry__5_n_1\,
      CO(1) => \inst_flush_pc1_carry__5_n_2\,
      CO(0) => \inst_flush_pc1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inst_flush_pc1(28 downto 25),
      S(3 downto 0) => wb_pc(28 downto 25)
    );
\inst_flush_pc1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \inst_flush_pc1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_inst_flush_pc1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \inst_flush_pc1_carry__6_n_2\,
      CO(0) => \inst_flush_pc1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_inst_flush_pc1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => inst_flush_pc1(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => wb_pc(31 downto 29)
    );
inst_flush_pc1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wb_pc(2),
      O => inst_flush_pc1_carry_i_1_n_0
    );
\inst_sram_addr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \inst_sram_addr[0]_INST_0_i_1_n_0\,
      I1 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I2 => \^if_to_id_bus\(0),
      I3 => id_to_if_bus(0),
      I4 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      O => \^inst_sram_addr\(0)
    );
\inst_sram_addr[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF088F088F088"
    )
        port map (
      I0 => csr_era(0),
      I1 => ertn_flush,
      I2 => csr_eentry(0),
      I3 => excp_flush,
      I4 => refetch_flush,
      I5 => wb_pc(0),
      O => \inst_sram_addr[0]_INST_0_i_1_n_0\
    );
\inst_sram_addr[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[10]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(10),
      I3 => excp_flush,
      I4 => csr_eentry(10),
      O => \^inst_sram_addr\(10)
    );
\inst_sram_addr[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(10),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(10),
      I4 => csr_era(10),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[10]_INST_0_i_1_n_0\
    );
\inst_sram_addr[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[11]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(11),
      I3 => excp_flush,
      I4 => csr_eentry(11),
      O => \^inst_sram_addr\(11)
    );
\inst_sram_addr[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(11),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(11),
      I4 => csr_era(11),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[11]_INST_0_i_1_n_0\
    );
\inst_sram_addr[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[12]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(12),
      I3 => excp_flush,
      I4 => csr_eentry(12),
      O => \^inst_sram_addr\(12)
    );
\inst_sram_addr[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(12),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(12),
      I4 => csr_era(12),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[12]_INST_0_i_1_n_0\
    );
\inst_sram_addr[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[13]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(13),
      I3 => excp_flush,
      I4 => csr_eentry(13),
      O => \^inst_sram_addr\(13)
    );
\inst_sram_addr[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(13),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(13),
      I4 => csr_era(13),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[13]_INST_0_i_1_n_0\
    );
\inst_sram_addr[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[14]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(14),
      I3 => excp_flush,
      I4 => csr_eentry(14),
      O => \^inst_sram_addr\(14)
    );
\inst_sram_addr[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(14),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(14),
      I4 => csr_era(14),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[14]_INST_0_i_1_n_0\
    );
\inst_sram_addr[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[15]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(15),
      I3 => excp_flush,
      I4 => csr_eentry(15),
      O => \^inst_sram_addr\(15)
    );
\inst_sram_addr[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(15),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(15),
      I4 => csr_era(15),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[15]_INST_0_i_1_n_0\
    );
\inst_sram_addr[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[16]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(16),
      I3 => excp_flush,
      I4 => csr_eentry(16),
      O => \^inst_sram_addr\(16)
    );
\inst_sram_addr[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(16),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(16),
      I4 => csr_era(16),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[16]_INST_0_i_1_n_0\
    );
\inst_sram_addr[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[17]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(17),
      I3 => excp_flush,
      I4 => csr_eentry(17),
      O => \^inst_sram_addr\(17)
    );
\inst_sram_addr[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(17),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(17),
      I4 => csr_era(17),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[17]_INST_0_i_1_n_0\
    );
\inst_sram_addr[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[18]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(18),
      I3 => excp_flush,
      I4 => csr_eentry(18),
      O => \^inst_sram_addr\(18)
    );
\inst_sram_addr[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(18),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(18),
      I4 => csr_era(18),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[18]_INST_0_i_1_n_0\
    );
\inst_sram_addr[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[19]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(19),
      I3 => excp_flush,
      I4 => csr_eentry(19),
      O => \^inst_sram_addr\(19)
    );
\inst_sram_addr[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(19),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(19),
      I4 => csr_era(19),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[19]_INST_0_i_1_n_0\
    );
\inst_sram_addr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_1_n_0\,
      I1 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I2 => seq_pc(1),
      I3 => id_to_if_bus(1),
      I4 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      O => \^inst_sram_addr\(1)
    );
\inst_sram_addr[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF088F088F088"
    )
        port map (
      I0 => csr_era(1),
      I1 => ertn_flush,
      I2 => csr_eentry(1),
      I3 => excp_flush,
      I4 => refetch_flush,
      I5 => inst_flush_pc1(1),
      O => \inst_sram_addr[1]_INST_0_i_1_n_0\
    );
\inst_sram_addr[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => excp_flush,
      I1 => refetch_flush,
      I2 => ertn_flush,
      I3 => id_to_if_bus(32),
      O => \inst_sram_addr[1]_INST_0_i_2_n_0\
    );
\inst_sram_addr[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => id_to_if_bus(32),
      I1 => excp_flush,
      I2 => refetch_flush,
      I3 => ertn_flush,
      O => \inst_sram_addr[1]_INST_0_i_3_n_0\
    );
\inst_sram_addr[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[20]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(20),
      I3 => excp_flush,
      I4 => csr_eentry(20),
      O => \^inst_sram_addr\(20)
    );
\inst_sram_addr[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(20),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(20),
      I4 => csr_era(20),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[20]_INST_0_i_1_n_0\
    );
\inst_sram_addr[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[21]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(21),
      I3 => excp_flush,
      I4 => csr_eentry(21),
      O => \^inst_sram_addr\(21)
    );
\inst_sram_addr[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(21),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(21),
      I4 => csr_era(21),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[21]_INST_0_i_1_n_0\
    );
\inst_sram_addr[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[22]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(22),
      I3 => excp_flush,
      I4 => csr_eentry(22),
      O => \^inst_sram_addr\(22)
    );
\inst_sram_addr[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(22),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(22),
      I4 => csr_era(22),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[22]_INST_0_i_1_n_0\
    );
\inst_sram_addr[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[23]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(23),
      I3 => excp_flush,
      I4 => csr_eentry(23),
      O => \^inst_sram_addr\(23)
    );
\inst_sram_addr[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(23),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(23),
      I4 => csr_era(23),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[23]_INST_0_i_1_n_0\
    );
\inst_sram_addr[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[24]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(24),
      I3 => excp_flush,
      I4 => csr_eentry(24),
      O => \^inst_sram_addr\(24)
    );
\inst_sram_addr[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(24),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(24),
      I4 => csr_era(24),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[24]_INST_0_i_1_n_0\
    );
\inst_sram_addr[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[25]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(25),
      I3 => excp_flush,
      I4 => csr_eentry(25),
      O => \^inst_sram_addr\(25)
    );
\inst_sram_addr[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(25),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(25),
      I4 => csr_era(25),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[25]_INST_0_i_1_n_0\
    );
\inst_sram_addr[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[26]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(26),
      I3 => excp_flush,
      I4 => csr_eentry(26),
      O => \^inst_sram_addr\(26)
    );
\inst_sram_addr[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(26),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(26),
      I4 => csr_era(26),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[26]_INST_0_i_1_n_0\
    );
\inst_sram_addr[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[27]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(27),
      I3 => excp_flush,
      I4 => csr_eentry(27),
      O => \^inst_sram_addr\(27)
    );
\inst_sram_addr[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(27),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(27),
      I4 => csr_era(27),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[27]_INST_0_i_1_n_0\
    );
\inst_sram_addr[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[28]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(28),
      I3 => excp_flush,
      I4 => csr_eentry(28),
      O => \^inst_sram_addr\(28)
    );
\inst_sram_addr[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(28),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(28),
      I4 => csr_era(28),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[28]_INST_0_i_1_n_0\
    );
\inst_sram_addr[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[29]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(29),
      I3 => excp_flush,
      I4 => csr_eentry(29),
      O => \^inst_sram_addr\(29)
    );
\inst_sram_addr[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(29),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(29),
      I4 => csr_era(29),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[29]_INST_0_i_1_n_0\
    );
\inst_sram_addr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[2]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(2),
      I3 => excp_flush,
      I4 => csr_eentry(2),
      O => \^inst_sram_addr\(2)
    );
\inst_sram_addr[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(2),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(2),
      I4 => csr_era(2),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[2]_INST_0_i_1_n_0\
    );
\inst_sram_addr[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[30]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(30),
      I3 => excp_flush,
      I4 => csr_eentry(30),
      O => \^inst_sram_addr\(30)
    );
\inst_sram_addr[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(30),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(30),
      I4 => csr_era(30),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[30]_INST_0_i_1_n_0\
    );
\inst_sram_addr[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[31]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(31),
      I3 => excp_flush,
      I4 => csr_eentry(31),
      O => \^inst_sram_addr\(31)
    );
\inst_sram_addr[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(31),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(31),
      I4 => csr_era(31),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[31]_INST_0_i_1_n_0\
    );
\inst_sram_addr[31]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ertn_flush,
      I1 => excp_flush,
      O => \inst_sram_addr[31]_INST_0_i_2_n_0\
    );
\inst_sram_addr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[3]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(3),
      I3 => excp_flush,
      I4 => csr_eentry(3),
      O => \^inst_sram_addr\(3)
    );
\inst_sram_addr[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(3),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(3),
      I4 => csr_era(3),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[3]_INST_0_i_1_n_0\
    );
\inst_sram_addr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[4]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(4),
      I3 => excp_flush,
      I4 => csr_eentry(4),
      O => \^inst_sram_addr\(4)
    );
\inst_sram_addr[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(4),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(4),
      I4 => csr_era(4),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[4]_INST_0_i_1_n_0\
    );
\inst_sram_addr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[5]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(5),
      I3 => excp_flush,
      I4 => csr_eentry(5),
      O => \^inst_sram_addr\(5)
    );
\inst_sram_addr[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(5),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(5),
      I4 => csr_era(5),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[5]_INST_0_i_1_n_0\
    );
\inst_sram_addr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[6]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(6),
      I3 => excp_flush,
      I4 => csr_eentry(6),
      O => \^inst_sram_addr\(6)
    );
\inst_sram_addr[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(6),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(6),
      I4 => csr_era(6),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[6]_INST_0_i_1_n_0\
    );
\inst_sram_addr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[7]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(7),
      I3 => excp_flush,
      I4 => csr_eentry(7),
      O => \^inst_sram_addr\(7)
    );
\inst_sram_addr[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(7),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(7),
      I4 => csr_era(7),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[7]_INST_0_i_1_n_0\
    );
\inst_sram_addr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[8]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(8),
      I3 => excp_flush,
      I4 => csr_eentry(8),
      O => \^inst_sram_addr\(8)
    );
\inst_sram_addr[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(8),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(8),
      I4 => csr_era(8),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[8]_INST_0_i_1_n_0\
    );
\inst_sram_addr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => \inst_sram_addr[9]_INST_0_i_1_n_0\,
      I1 => refetch_flush,
      I2 => inst_flush_pc1(9),
      I3 => excp_flush,
      I4 => csr_eentry(9),
      O => \^inst_sram_addr\(9)
    );
\inst_sram_addr[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \inst_sram_addr[1]_INST_0_i_2_n_0\,
      I1 => seq_pc(9),
      I2 => \inst_sram_addr[1]_INST_0_i_3_n_0\,
      I3 => id_to_if_bus(9),
      I4 => csr_era(9),
      I5 => \inst_sram_addr[31]_INST_0_i_2_n_0\,
      O => \inst_sram_addr[9]_INST_0_i_1_n_0\
    );
inst_sram_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00000000"
    )
        port map (
      I0 => ertn_flush,
      I1 => refetch_flush,
      I2 => excp_flush,
      I3 => id_allowin,
      I4 => \^if_to_id_valid\,
      I5 => resetn,
      O => \^inst_sram_en\
    );
seq_pc_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => seq_pc_carry_n_0,
      CO(2) => seq_pc_carry_n_1,
      CO(1) => seq_pc_carry_n_2,
      CO(0) => seq_pc_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^if_to_id_bus\(2),
      DI(0) => '0',
      O(3 downto 0) => seq_pc(4 downto 1),
      S(3 downto 2) => \^if_to_id_bus\(4 downto 3),
      S(1) => seq_pc_carry_i_1_n_0,
      S(0) => \^if_to_id_bus\(1)
    );
\seq_pc_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => seq_pc_carry_n_0,
      CO(3) => \seq_pc_carry__0_n_0\,
      CO(2) => \seq_pc_carry__0_n_1\,
      CO(1) => \seq_pc_carry__0_n_2\,
      CO(0) => \seq_pc_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => seq_pc(8 downto 5),
      S(3 downto 0) => \^if_to_id_bus\(8 downto 5)
    );
\seq_pc_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_pc_carry__0_n_0\,
      CO(3) => \seq_pc_carry__1_n_0\,
      CO(2) => \seq_pc_carry__1_n_1\,
      CO(1) => \seq_pc_carry__1_n_2\,
      CO(0) => \seq_pc_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => seq_pc(12 downto 9),
      S(3 downto 0) => \^if_to_id_bus\(12 downto 9)
    );
\seq_pc_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_pc_carry__1_n_0\,
      CO(3) => \seq_pc_carry__2_n_0\,
      CO(2) => \seq_pc_carry__2_n_1\,
      CO(1) => \seq_pc_carry__2_n_2\,
      CO(0) => \seq_pc_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => seq_pc(16 downto 13),
      S(3 downto 0) => \^if_to_id_bus\(16 downto 13)
    );
\seq_pc_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_pc_carry__2_n_0\,
      CO(3) => \seq_pc_carry__3_n_0\,
      CO(2) => \seq_pc_carry__3_n_1\,
      CO(1) => \seq_pc_carry__3_n_2\,
      CO(0) => \seq_pc_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => seq_pc(20 downto 17),
      S(3 downto 0) => \^if_to_id_bus\(20 downto 17)
    );
\seq_pc_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_pc_carry__3_n_0\,
      CO(3) => \seq_pc_carry__4_n_0\,
      CO(2) => \seq_pc_carry__4_n_1\,
      CO(1) => \seq_pc_carry__4_n_2\,
      CO(0) => \seq_pc_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => seq_pc(24 downto 21),
      S(3 downto 0) => \^if_to_id_bus\(24 downto 21)
    );
\seq_pc_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_pc_carry__4_n_0\,
      CO(3) => \seq_pc_carry__5_n_0\,
      CO(2) => \seq_pc_carry__5_n_1\,
      CO(1) => \seq_pc_carry__5_n_2\,
      CO(0) => \seq_pc_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => seq_pc(28 downto 25),
      S(3 downto 0) => \^if_to_id_bus\(28 downto 25)
    );
\seq_pc_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_pc_carry__5_n_0\,
      CO(3 downto 2) => \NLW_seq_pc_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \seq_pc_carry__6_n_2\,
      CO(0) => \seq_pc_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_seq_pc_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => seq_pc(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^if_to_id_bus\(31 downto 29)
    );
seq_pc_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^if_to_id_bus\(2),
      O => seq_pc_carry_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mycpu_top_block_if_stage_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mycpu_top_block_if_stage_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mycpu_top_block_if_stage_0_0 : entity is "mycpu_top_block_if_stage_0_0,if_stage,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mycpu_top_block_if_stage_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mycpu_top_block_if_stage_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mycpu_top_block_if_stage_0_0 : entity is "if_stage,Vivado 2023.2";
end mycpu_top_block_if_stage_0_0;

architecture STRUCTURE of mycpu_top_block_if_stage_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^if_to_id_bus\ : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal \^inst_sram_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^inst_sram_rdata\(31 downto 0) <= inst_sram_rdata(31 downto 0);
  if_to_id_bus(68) <= \^if_to_id_bus\(64);
  if_to_id_bus(67) <= \<const0>\;
  if_to_id_bus(66) <= \<const0>\;
  if_to_id_bus(65) <= \<const0>\;
  if_to_id_bus(64) <= \^if_to_id_bus\(64);
  if_to_id_bus(63 downto 32) <= \^inst_sram_rdata\(31 downto 0);
  if_to_id_bus(31 downto 0) <= \^if_to_id_bus\(31 downto 0);
  inst_sram_wdata(31) <= \<const0>\;
  inst_sram_wdata(30) <= \<const0>\;
  inst_sram_wdata(29) <= \<const0>\;
  inst_sram_wdata(28) <= \<const0>\;
  inst_sram_wdata(27) <= \<const0>\;
  inst_sram_wdata(26) <= \<const0>\;
  inst_sram_wdata(25) <= \<const0>\;
  inst_sram_wdata(24) <= \<const0>\;
  inst_sram_wdata(23) <= \<const0>\;
  inst_sram_wdata(22) <= \<const0>\;
  inst_sram_wdata(21) <= \<const0>\;
  inst_sram_wdata(20) <= \<const0>\;
  inst_sram_wdata(19) <= \<const0>\;
  inst_sram_wdata(18) <= \<const0>\;
  inst_sram_wdata(17) <= \<const0>\;
  inst_sram_wdata(16) <= \<const0>\;
  inst_sram_wdata(15) <= \<const0>\;
  inst_sram_wdata(14) <= \<const0>\;
  inst_sram_wdata(13) <= \<const0>\;
  inst_sram_wdata(12) <= \<const0>\;
  inst_sram_wdata(11) <= \<const0>\;
  inst_sram_wdata(10) <= \<const0>\;
  inst_sram_wdata(9) <= \<const0>\;
  inst_sram_wdata(8) <= \<const0>\;
  inst_sram_wdata(7) <= \<const0>\;
  inst_sram_wdata(6) <= \<const0>\;
  inst_sram_wdata(5) <= \<const0>\;
  inst_sram_wdata(4) <= \<const0>\;
  inst_sram_wdata(3) <= \<const0>\;
  inst_sram_wdata(2) <= \<const0>\;
  inst_sram_wdata(1) <= \<const0>\;
  inst_sram_wdata(0) <= \<const0>\;
  inst_sram_we(3) <= \<const0>\;
  inst_sram_we(2) <= \<const0>\;
  inst_sram_we(1) <= \<const0>\;
  inst_sram_we(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.mycpu_top_block_if_stage_0_0_if_stage
     port map (
      clk => clk,
      csr_eentry(31 downto 0) => csr_eentry(31 downto 0),
      csr_era(31 downto 0) => csr_era(31 downto 0),
      ertn_flush => ertn_flush,
      excp_flush => excp_flush,
      id_allowin => id_allowin,
      id_to_if_bus(32 downto 0) => id_to_if_bus(32 downto 0),
      if_to_id_bus(32) => \^if_to_id_bus\(64),
      if_to_id_bus(31 downto 0) => \^if_to_id_bus\(31 downto 0),
      if_to_id_valid => if_to_id_valid,
      inst_sram_addr(31 downto 0) => inst_sram_addr(31 downto 0),
      inst_sram_en => inst_sram_en,
      refetch_flush => refetch_flush,
      resetn => resetn,
      wb_pc(31 downto 0) => wb_pc(31 downto 0)
    );
end STRUCTURE;
