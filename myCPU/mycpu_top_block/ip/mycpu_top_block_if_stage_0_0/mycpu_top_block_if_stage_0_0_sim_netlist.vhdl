-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 14:30:13 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mycpu_top_block_if_stage_0_0 -prefix
--               mycpu_top_block_if_stage_0_0_ mycpu_top_block_if_stage_0_0_sim_netlist.vhdl
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
    if_to_id_bus : out STD_LOGIC_VECTOR ( 30 downto 0 );
    inst_sram_en : out STD_LOGIC;
    inst_sram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \if_pc_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    if_to_id_valid : out STD_LOGIC;
    id_to_if_bus : in STD_LOGIC_VECTOR ( 32 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    id_allowin : in STD_LOGIC
  );
end mycpu_top_block_if_stage_0_0_if_stage;

architecture STRUCTURE of mycpu_top_block_if_stage_0_0_if_stage is
  signal clear : STD_LOGIC;
  signal \if_pc[12]_i_2_n_0\ : STD_LOGIC;
  signal \if_pc[12]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[12]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[12]_i_5_n_0\ : STD_LOGIC;
  signal \if_pc[16]_i_2_n_0\ : STD_LOGIC;
  signal \if_pc[16]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[16]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[16]_i_5_n_0\ : STD_LOGIC;
  signal \if_pc[20]_i_2_n_0\ : STD_LOGIC;
  signal \if_pc[20]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[20]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[20]_i_5_n_0\ : STD_LOGIC;
  signal \if_pc[24]_i_2_n_0\ : STD_LOGIC;
  signal \if_pc[24]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[24]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[24]_i_5_n_0\ : STD_LOGIC;
  signal \if_pc[28]_i_2_n_0\ : STD_LOGIC;
  signal \if_pc[28]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[28]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[28]_i_5_n_0\ : STD_LOGIC;
  signal \if_pc[31]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[31]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[31]_i_5_n_0\ : STD_LOGIC;
  signal \if_pc[4]_i_2_n_0\ : STD_LOGIC;
  signal \if_pc[4]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[4]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[4]_i_5_n_0\ : STD_LOGIC;
  signal \if_pc[4]_i_6_n_0\ : STD_LOGIC;
  signal \if_pc[8]_i_2_n_0\ : STD_LOGIC;
  signal \if_pc[8]_i_3_n_0\ : STD_LOGIC;
  signal \if_pc[8]_i_4_n_0\ : STD_LOGIC;
  signal \if_pc[8]_i_5_n_0\ : STD_LOGIC;
  signal \^if_pc_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \if_pc_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \if_pc_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \if_pc_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \if_pc_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \if_pc_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \if_pc_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \if_pc_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \if_pc_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \if_pc_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \if_pc_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \if_pc_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \if_pc_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \if_pc_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \if_pc_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \if_pc_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \if_pc_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \if_pc_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \if_pc_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \if_pc_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^if_to_id_bus\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^if_to_id_valid\ : STD_LOGIC;
  signal if_valid_i_1_n_0 : STD_LOGIC;
  signal \^inst_sram_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^inst_sram_en\ : STD_LOGIC;
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
  signal \NLW_if_pc_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_if_pc_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_seq_pc_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_seq_pc_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \if_pc_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \if_pc_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \if_pc_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \if_pc_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \if_pc_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \if_pc_reg[31]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \if_pc_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \if_pc_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \inst_sram_addr[0]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \inst_sram_addr[10]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \inst_sram_addr[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \inst_sram_addr[12]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \inst_sram_addr[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inst_sram_addr[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inst_sram_addr[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \inst_sram_addr[16]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \inst_sram_addr[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \inst_sram_addr[18]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \inst_sram_addr[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \inst_sram_addr[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inst_sram_addr[20]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \inst_sram_addr[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \inst_sram_addr[22]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \inst_sram_addr[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \inst_sram_addr[24]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \inst_sram_addr[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \inst_sram_addr[26]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \inst_sram_addr[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \inst_sram_addr[28]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \inst_sram_addr[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \inst_sram_addr[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inst_sram_addr[30]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \inst_sram_addr[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \inst_sram_addr[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \inst_sram_addr[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \inst_sram_addr[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inst_sram_addr[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inst_sram_addr[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inst_sram_addr[8]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inst_sram_addr[9]_INST_0\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of seq_pc_carry : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \seq_pc_carry__6\ : label is 35;
begin
  \if_pc_reg[0]_0\(0) <= \^if_pc_reg[0]_0\(0);
  if_to_id_bus(30 downto 0) <= \^if_to_id_bus\(30 downto 0);
  if_to_id_valid <= \^if_to_id_valid\;
  inst_sram_addr(31 downto 0) <= \^inst_sram_addr\(31 downto 0);
  inst_sram_en <= \^inst_sram_en\;
\if_pc[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(12),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(11),
      O => \if_pc[12]_i_2_n_0\
    );
\if_pc[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(11),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(10),
      O => \if_pc[12]_i_3_n_0\
    );
\if_pc[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(10),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(9),
      O => \if_pc[12]_i_4_n_0\
    );
\if_pc[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(9),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(8),
      O => \if_pc[12]_i_5_n_0\
    );
\if_pc[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(16),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(15),
      O => \if_pc[16]_i_2_n_0\
    );
\if_pc[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(15),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(14),
      O => \if_pc[16]_i_3_n_0\
    );
\if_pc[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(14),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(13),
      O => \if_pc[16]_i_4_n_0\
    );
\if_pc[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(13),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(12),
      O => \if_pc[16]_i_5_n_0\
    );
\if_pc[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(20),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(19),
      O => \if_pc[20]_i_2_n_0\
    );
\if_pc[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(19),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(18),
      O => \if_pc[20]_i_3_n_0\
    );
\if_pc[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(18),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(17),
      O => \if_pc[20]_i_4_n_0\
    );
\if_pc[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(17),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(16),
      O => \if_pc[20]_i_5_n_0\
    );
\if_pc[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(24),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(23),
      O => \if_pc[24]_i_2_n_0\
    );
\if_pc[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(23),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(22),
      O => \if_pc[24]_i_3_n_0\
    );
\if_pc[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(22),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(21),
      O => \if_pc[24]_i_4_n_0\
    );
\if_pc[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(21),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(20),
      O => \if_pc[24]_i_5_n_0\
    );
\if_pc[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(28),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(27),
      O => \if_pc[28]_i_2_n_0\
    );
\if_pc[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(27),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(26),
      O => \if_pc[28]_i_3_n_0\
    );
\if_pc[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(26),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(25),
      O => \if_pc[28]_i_4_n_0\
    );
\if_pc[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(25),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(24),
      O => \if_pc[28]_i_5_n_0\
    );
\if_pc[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => clear
    );
\if_pc[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(31),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(30),
      O => \if_pc[31]_i_3_n_0\
    );
\if_pc[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(30),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(29),
      O => \if_pc[31]_i_4_n_0\
    );
\if_pc[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(29),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(28),
      O => \if_pc[31]_i_5_n_0\
    );
\if_pc[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(2),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(1),
      O => \if_pc[4]_i_2_n_0\
    );
\if_pc[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(4),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(3),
      O => \if_pc[4]_i_3_n_0\
    );
\if_pc[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(3),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(2),
      O => \if_pc[4]_i_4_n_0\
    );
\if_pc[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^if_to_id_bus\(1),
      I1 => id_to_if_bus(2),
      I2 => id_to_if_bus(32),
      O => \if_pc[4]_i_5_n_0\
    );
\if_pc[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(1),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(0),
      O => \if_pc[4]_i_6_n_0\
    );
\if_pc[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(8),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(7),
      O => \if_pc[8]_i_2_n_0\
    );
\if_pc[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(7),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(6),
      O => \if_pc[8]_i_3_n_0\
    );
\if_pc[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(6),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(5),
      O => \if_pc[8]_i_4_n_0\
    );
\if_pc[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(5),
      I1 => id_to_if_bus(32),
      I2 => \^if_to_id_bus\(4),
      O => \if_pc[8]_i_5_n_0\
    );
\if_pc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \^inst_sram_addr\(0),
      Q => \^if_pc_reg[0]_0\(0),
      R => clear
    );
\if_pc_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[12]_i_1_n_6\,
      Q => \^if_to_id_bus\(9),
      S => clear
    );
\if_pc_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[12]_i_1_n_5\,
      Q => \^if_to_id_bus\(10),
      S => clear
    );
\if_pc_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[12]_i_1_n_4\,
      Q => \^if_to_id_bus\(11),
      S => clear
    );
\if_pc_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \if_pc_reg[8]_i_1_n_0\,
      CO(3) => \if_pc_reg[12]_i_1_n_0\,
      CO(2) => \if_pc_reg[12]_i_1_n_1\,
      CO(1) => \if_pc_reg[12]_i_1_n_2\,
      CO(0) => \if_pc_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \if_pc_reg[12]_i_1_n_4\,
      O(2) => \if_pc_reg[12]_i_1_n_5\,
      O(1) => \if_pc_reg[12]_i_1_n_6\,
      O(0) => \if_pc_reg[12]_i_1_n_7\,
      S(3) => \if_pc[12]_i_2_n_0\,
      S(2) => \if_pc[12]_i_3_n_0\,
      S(1) => \if_pc[12]_i_4_n_0\,
      S(0) => \if_pc[12]_i_5_n_0\
    );
\if_pc_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[16]_i_1_n_7\,
      Q => \^if_to_id_bus\(12),
      S => clear
    );
\if_pc_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[16]_i_1_n_6\,
      Q => \^if_to_id_bus\(13),
      S => clear
    );
\if_pc_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[16]_i_1_n_5\,
      Q => \^if_to_id_bus\(14),
      S => clear
    );
\if_pc_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[16]_i_1_n_4\,
      Q => \^if_to_id_bus\(15),
      S => clear
    );
\if_pc_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \if_pc_reg[12]_i_1_n_0\,
      CO(3) => \if_pc_reg[16]_i_1_n_0\,
      CO(2) => \if_pc_reg[16]_i_1_n_1\,
      CO(1) => \if_pc_reg[16]_i_1_n_2\,
      CO(0) => \if_pc_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \if_pc_reg[16]_i_1_n_4\,
      O(2) => \if_pc_reg[16]_i_1_n_5\,
      O(1) => \if_pc_reg[16]_i_1_n_6\,
      O(0) => \if_pc_reg[16]_i_1_n_7\,
      S(3) => \if_pc[16]_i_2_n_0\,
      S(2) => \if_pc[16]_i_3_n_0\,
      S(1) => \if_pc[16]_i_4_n_0\,
      S(0) => \if_pc[16]_i_5_n_0\
    );
\if_pc_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[20]_i_1_n_7\,
      Q => \^if_to_id_bus\(16),
      S => clear
    );
\if_pc_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[20]_i_1_n_6\,
      Q => \^if_to_id_bus\(17),
      S => clear
    );
\if_pc_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[20]_i_1_n_5\,
      Q => \^if_to_id_bus\(18),
      S => clear
    );
\if_pc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[4]_i_1_n_7\,
      Q => \^if_to_id_bus\(0),
      R => clear
    );
\if_pc_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[20]_i_1_n_4\,
      Q => \^if_to_id_bus\(19),
      S => clear
    );
\if_pc_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \if_pc_reg[16]_i_1_n_0\,
      CO(3) => \if_pc_reg[20]_i_1_n_0\,
      CO(2) => \if_pc_reg[20]_i_1_n_1\,
      CO(1) => \if_pc_reg[20]_i_1_n_2\,
      CO(0) => \if_pc_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \if_pc_reg[20]_i_1_n_4\,
      O(2) => \if_pc_reg[20]_i_1_n_5\,
      O(1) => \if_pc_reg[20]_i_1_n_6\,
      O(0) => \if_pc_reg[20]_i_1_n_7\,
      S(3) => \if_pc[20]_i_2_n_0\,
      S(2) => \if_pc[20]_i_3_n_0\,
      S(1) => \if_pc[20]_i_4_n_0\,
      S(0) => \if_pc[20]_i_5_n_0\
    );
\if_pc_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[24]_i_1_n_7\,
      Q => \^if_to_id_bus\(20),
      S => clear
    );
\if_pc_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[24]_i_1_n_6\,
      Q => \^if_to_id_bus\(21),
      S => clear
    );
\if_pc_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[24]_i_1_n_5\,
      Q => \^if_to_id_bus\(22),
      S => clear
    );
\if_pc_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[24]_i_1_n_4\,
      Q => \^if_to_id_bus\(23),
      S => clear
    );
\if_pc_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \if_pc_reg[20]_i_1_n_0\,
      CO(3) => \if_pc_reg[24]_i_1_n_0\,
      CO(2) => \if_pc_reg[24]_i_1_n_1\,
      CO(1) => \if_pc_reg[24]_i_1_n_2\,
      CO(0) => \if_pc_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \if_pc_reg[24]_i_1_n_4\,
      O(2) => \if_pc_reg[24]_i_1_n_5\,
      O(1) => \if_pc_reg[24]_i_1_n_6\,
      O(0) => \if_pc_reg[24]_i_1_n_7\,
      S(3) => \if_pc[24]_i_2_n_0\,
      S(2) => \if_pc[24]_i_3_n_0\,
      S(1) => \if_pc[24]_i_4_n_0\,
      S(0) => \if_pc[24]_i_5_n_0\
    );
\if_pc_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[28]_i_1_n_7\,
      Q => \^if_to_id_bus\(24),
      S => clear
    );
\if_pc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[28]_i_1_n_6\,
      Q => \^if_to_id_bus\(25),
      R => clear
    );
\if_pc_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[28]_i_1_n_5\,
      Q => \^if_to_id_bus\(26),
      S => clear
    );
\if_pc_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[28]_i_1_n_4\,
      Q => \^if_to_id_bus\(27),
      S => clear
    );
\if_pc_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \if_pc_reg[24]_i_1_n_0\,
      CO(3) => \if_pc_reg[28]_i_1_n_0\,
      CO(2) => \if_pc_reg[28]_i_1_n_1\,
      CO(1) => \if_pc_reg[28]_i_1_n_2\,
      CO(0) => \if_pc_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \if_pc_reg[28]_i_1_n_4\,
      O(2) => \if_pc_reg[28]_i_1_n_5\,
      O(1) => \if_pc_reg[28]_i_1_n_6\,
      O(0) => \if_pc_reg[28]_i_1_n_7\,
      S(3) => \if_pc[28]_i_2_n_0\,
      S(2) => \if_pc[28]_i_3_n_0\,
      S(1) => \if_pc[28]_i_4_n_0\,
      S(0) => \if_pc[28]_i_5_n_0\
    );
\if_pc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[31]_i_2_n_7\,
      Q => \^if_to_id_bus\(28),
      R => clear
    );
\if_pc_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[4]_i_1_n_6\,
      Q => \^if_to_id_bus\(1),
      S => clear
    );
\if_pc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[31]_i_2_n_6\,
      Q => \^if_to_id_bus\(29),
      R => clear
    );
\if_pc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[31]_i_2_n_5\,
      Q => \^if_to_id_bus\(30),
      R => clear
    );
\if_pc_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \if_pc_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_if_pc_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \if_pc_reg[31]_i_2_n_2\,
      CO(0) => \if_pc_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_if_pc_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2) => \if_pc_reg[31]_i_2_n_5\,
      O(1) => \if_pc_reg[31]_i_2_n_6\,
      O(0) => \if_pc_reg[31]_i_2_n_7\,
      S(3) => '0',
      S(2) => \if_pc[31]_i_3_n_0\,
      S(1) => \if_pc[31]_i_4_n_0\,
      S(0) => \if_pc[31]_i_5_n_0\
    );
\if_pc_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[4]_i_1_n_5\,
      Q => \^if_to_id_bus\(2),
      S => clear
    );
\if_pc_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[4]_i_1_n_4\,
      Q => \^if_to_id_bus\(3),
      S => clear
    );
\if_pc_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \if_pc_reg[4]_i_1_n_0\,
      CO(2) => \if_pc_reg[4]_i_1_n_1\,
      CO(1) => \if_pc_reg[4]_i_1_n_2\,
      CO(0) => \if_pc_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \if_pc[4]_i_2_n_0\,
      DI(0) => '0',
      O(3) => \if_pc_reg[4]_i_1_n_4\,
      O(2) => \if_pc_reg[4]_i_1_n_5\,
      O(1) => \if_pc_reg[4]_i_1_n_6\,
      O(0) => \if_pc_reg[4]_i_1_n_7\,
      S(3) => \if_pc[4]_i_3_n_0\,
      S(2) => \if_pc[4]_i_4_n_0\,
      S(1) => \if_pc[4]_i_5_n_0\,
      S(0) => \if_pc[4]_i_6_n_0\
    );
\if_pc_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[8]_i_1_n_7\,
      Q => \^if_to_id_bus\(4),
      S => clear
    );
\if_pc_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[8]_i_1_n_6\,
      Q => \^if_to_id_bus\(5),
      S => clear
    );
\if_pc_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[8]_i_1_n_5\,
      Q => \^if_to_id_bus\(6),
      S => clear
    );
\if_pc_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[8]_i_1_n_4\,
      Q => \^if_to_id_bus\(7),
      S => clear
    );
\if_pc_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \if_pc_reg[4]_i_1_n_0\,
      CO(3) => \if_pc_reg[8]_i_1_n_0\,
      CO(2) => \if_pc_reg[8]_i_1_n_1\,
      CO(1) => \if_pc_reg[8]_i_1_n_2\,
      CO(0) => \if_pc_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \if_pc_reg[8]_i_1_n_4\,
      O(2) => \if_pc_reg[8]_i_1_n_5\,
      O(1) => \if_pc_reg[8]_i_1_n_6\,
      O(0) => \if_pc_reg[8]_i_1_n_7\,
      S(3) => \if_pc[8]_i_2_n_0\,
      S(2) => \if_pc[8]_i_3_n_0\,
      S(1) => \if_pc[8]_i_4_n_0\,
      S(0) => \if_pc[8]_i_5_n_0\
    );
\if_pc_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^inst_sram_en\,
      D => \if_pc_reg[12]_i_1_n_7\,
      Q => \^if_to_id_bus\(8),
      S => clear
    );
if_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => id_to_if_bus(32),
      I1 => id_allowin,
      I2 => \^if_to_id_valid\,
      I3 => resetn,
      O => if_valid_i_1_n_0
    );
if_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => if_valid_i_1_n_0,
      Q => \^if_to_id_valid\,
      R => '0'
    );
\inst_sram_addr[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(0),
      I1 => id_to_if_bus(32),
      I2 => \^if_pc_reg[0]_0\(0),
      O => \^inst_sram_addr\(0)
    );
\inst_sram_addr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(10),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(10),
      O => \^inst_sram_addr\(10)
    );
\inst_sram_addr[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(11),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(11),
      O => \^inst_sram_addr\(11)
    );
\inst_sram_addr[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(12),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(12),
      O => \^inst_sram_addr\(12)
    );
\inst_sram_addr[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(13),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(13),
      O => \^inst_sram_addr\(13)
    );
\inst_sram_addr[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(14),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(14),
      O => \^inst_sram_addr\(14)
    );
\inst_sram_addr[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(15),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(15),
      O => \^inst_sram_addr\(15)
    );
\inst_sram_addr[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(16),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(16),
      O => \^inst_sram_addr\(16)
    );
\inst_sram_addr[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(17),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(17),
      O => \^inst_sram_addr\(17)
    );
\inst_sram_addr[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(18),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(18),
      O => \^inst_sram_addr\(18)
    );
\inst_sram_addr[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(19),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(19),
      O => \^inst_sram_addr\(19)
    );
\inst_sram_addr[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(1),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(1),
      O => \^inst_sram_addr\(1)
    );
\inst_sram_addr[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(20),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(20),
      O => \^inst_sram_addr\(20)
    );
\inst_sram_addr[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(21),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(21),
      O => \^inst_sram_addr\(21)
    );
\inst_sram_addr[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(22),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(22),
      O => \^inst_sram_addr\(22)
    );
\inst_sram_addr[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(23),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(23),
      O => \^inst_sram_addr\(23)
    );
\inst_sram_addr[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(24),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(24),
      O => \^inst_sram_addr\(24)
    );
\inst_sram_addr[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(25),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(25),
      O => \^inst_sram_addr\(25)
    );
\inst_sram_addr[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(26),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(26),
      O => \^inst_sram_addr\(26)
    );
\inst_sram_addr[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(27),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(27),
      O => \^inst_sram_addr\(27)
    );
\inst_sram_addr[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(28),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(28),
      O => \^inst_sram_addr\(28)
    );
\inst_sram_addr[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(29),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(29),
      O => \^inst_sram_addr\(29)
    );
\inst_sram_addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(2),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(2),
      O => \^inst_sram_addr\(2)
    );
\inst_sram_addr[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(30),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(30),
      O => \^inst_sram_addr\(30)
    );
\inst_sram_addr[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(31),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(31),
      O => \^inst_sram_addr\(31)
    );
\inst_sram_addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(3),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(3),
      O => \^inst_sram_addr\(3)
    );
\inst_sram_addr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(4),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(4),
      O => \^inst_sram_addr\(4)
    );
\inst_sram_addr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(5),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(5),
      O => \^inst_sram_addr\(5)
    );
\inst_sram_addr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(6),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(6),
      O => \^inst_sram_addr\(6)
    );
\inst_sram_addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(7),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(7),
      O => \^inst_sram_addr\(7)
    );
\inst_sram_addr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(8),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(8),
      O => \^inst_sram_addr\(8)
    );
\inst_sram_addr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => id_to_if_bus(9),
      I1 => id_to_if_bus(32),
      I2 => seq_pc(9),
      O => \^inst_sram_addr\(9)
    );
inst_sram_en_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => resetn,
      I1 => \^if_to_id_valid\,
      I2 => id_allowin,
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
      DI(1) => \^if_to_id_bus\(1),
      DI(0) => '0',
      O(3 downto 0) => seq_pc(4 downto 1),
      S(3 downto 2) => \^if_to_id_bus\(3 downto 2),
      S(1) => seq_pc_carry_i_1_n_0,
      S(0) => \^if_to_id_bus\(0)
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
      S(3 downto 0) => \^if_to_id_bus\(7 downto 4)
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
      S(3 downto 0) => \^if_to_id_bus\(11 downto 8)
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
      S(3 downto 0) => \^if_to_id_bus\(15 downto 12)
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
      S(3 downto 0) => \^if_to_id_bus\(19 downto 16)
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
      S(3 downto 0) => \^if_to_id_bus\(23 downto 20)
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
      S(3 downto 0) => \^if_to_id_bus\(27 downto 24)
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
      S(2 downto 0) => \^if_to_id_bus\(30 downto 28)
    );
seq_pc_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^if_to_id_bus\(1),
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
    if_to_id_bus : out STD_LOGIC_VECTOR ( 63 downto 0 );
    id_to_if_bus : in STD_LOGIC_VECTOR ( 33 downto 0 );
    inst_sram_en : out STD_LOGIC;
    inst_sram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_sram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_sram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_sram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
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
  signal \^if_to_id_bus\ : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \^inst_sram_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^inst_sram_rdata\(31 downto 0) <= inst_sram_rdata(31 downto 0);
  if_to_id_bus(63 downto 32) <= \^if_to_id_bus\(63 downto 32);
  if_to_id_bus(31 downto 0) <= \^inst_sram_rdata\(31 downto 0);
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
      id_allowin => id_allowin,
      id_to_if_bus(32 downto 0) => id_to_if_bus(32 downto 0),
      \if_pc_reg[0]_0\(0) => \^if_to_id_bus\(32),
      if_to_id_bus(30 downto 0) => \^if_to_id_bus\(63 downto 33),
      if_to_id_valid => if_to_id_valid,
      inst_sram_addr(31 downto 0) => inst_sram_addr(31 downto 0),
      inst_sram_en => inst_sram_en,
      resetn => resetn
    );
end STRUCTURE;
