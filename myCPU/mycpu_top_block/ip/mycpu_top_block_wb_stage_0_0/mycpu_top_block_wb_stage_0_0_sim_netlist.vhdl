-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  6 10:04:57 2025
-- Host        : Super-EvilLoong running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/projects_2024/Loong_Team/mycpu_env_try/mycpu_env_try/myCPU/mycpu_top_block/ip/mycpu_top_block_wb_stage_0_0/mycpu_top_block_wb_stage_0_0_sim_netlist.vhdl
-- Design      : mycpu_top_block_wb_stage_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mycpu_top_block_wb_stage_0_0_wb_stage is
  port (
    Q : out STD_LOGIC_VECTOR ( 114 downto 0 );
    ertn_flush : out STD_LOGIC;
    refetch_flush : out STD_LOGIC;
    excp_flush : out STD_LOGIC;
    wb_to_id_bus : out STD_LOGIC_VECTOR ( 0 to 0 );
    csr_wr_en : out STD_LOGIC;
    csr_ecode : out STD_LOGIC_VECTOR ( 4 downto 0 );
    bad_va : out STD_LOGIC_VECTOR ( 31 downto 0 );
    va_error : out STD_LOGIC;
    mem_to_wb_valid : in STD_LOGIC;
    mem_to_wb_bus : in STD_LOGIC_VECTOR ( 165 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mycpu_top_block_wb_stage_0_0_wb_stage : entity is "wb_stage";
end mycpu_top_block_wb_stage_0_0_wb_stage;

architecture STRUCTURE of mycpu_top_block_wb_stage_0_0_wb_stage is
  signal \^q\ : STD_LOGIC_VECTOR ( 114 downto 0 );
  signal \bad_va[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bad_va[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \csr_ecode[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \csr_ecode[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \csr_ecode[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \csr_ecode[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \csr_ecode[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \csr_ecode[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \csr_ecode[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \csr_ecode[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \csr_ecode[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \csr_ecode[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal data4 : STD_LOGIC_VECTOR ( 40 downto 9 );
  signal sel0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal va_error_INST_0_i_1_n_0 : STD_LOGIC;
  signal va_error_INST_0_i_2_n_0 : STD_LOGIC;
  signal wb_csr_we : STD_LOGIC;
  signal \wb_data_reg_n_0_[119]\ : STD_LOGIC;
  signal wb_ertn : STD_LOGIC;
  signal wb_excp : STD_LOGIC;
  signal wb_gr_we : STD_LOGIC;
  signal wb_valid : STD_LOGIC;
  signal wb_valid_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \csr_ecode[2]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \csr_ecode[2]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \csr_ecode[2]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of csr_wr_en_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \debug_wb_rf_we[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ertn_flush_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of excp_flush_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of va_error_INST_0_i_1 : label is "soft_lutpair0";
begin
  Q(114 downto 0) <= \^q\(114 downto 0);
\bad_va[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(9),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(0)
    );
\bad_va[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(19),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(10)
    );
\bad_va[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(20),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(11)
    );
\bad_va[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(21),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(12)
    );
\bad_va[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(13),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(22),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(13)
    );
\bad_va[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(14),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(23),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(14)
    );
\bad_va[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(15),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(24),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(15)
    );
\bad_va[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(16),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(25),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(16)
    );
\bad_va[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(17),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(26),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(17)
    );
\bad_va[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(27),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(18)
    );
\bad_va[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(19),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(28),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(19)
    );
\bad_va[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(10),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(1)
    );
\bad_va[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(20),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(29),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(20)
    );
\bad_va[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(30),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(21)
    );
\bad_va[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(22),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(31),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(22)
    );
\bad_va[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(23),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(32),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(23)
    );
\bad_va[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(24),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(33),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(24)
    );
\bad_va[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(25),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(34),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(25)
    );
\bad_va[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(35),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(26)
    );
\bad_va[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(27),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(36),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(27)
    );
\bad_va[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(28),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(37),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(28)
    );
\bad_va[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(29),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(38),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(29)
    );
\bad_va[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(11),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(2)
    );
\bad_va[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(30),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(39),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(30)
    );
\bad_va[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(31),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(40),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(31)
    );
\bad_va[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(9),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => sel0(7),
      I3 => sel0(8),
      I4 => sel0(6),
      O => \bad_va[31]_INST_0_i_1_n_0\
    );
\bad_va[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(11),
      I2 => sel0(10),
      I3 => sel0(13),
      O => \bad_va[31]_INST_0_i_2_n_0\
    );
\bad_va[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(12),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(3)
    );
\bad_va[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(13),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(4)
    );
\bad_va[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(14),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(5)
    );
\bad_va[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(15),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(6)
    );
\bad_va[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(16),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(7)
    );
\bad_va[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(17),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(8)
    );
\bad_va[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \wb_data_reg_n_0_[119]\,
      I2 => data4(18),
      I3 => va_error_INST_0_i_2_n_0,
      I4 => \bad_va[31]_INST_0_i_1_n_0\,
      I5 => \bad_va[31]_INST_0_i_2_n_0\,
      O => bad_va(9)
    );
\csr_ecode[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50501000"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(6),
      I2 => \csr_ecode[2]_INST_0_i_1_n_0\,
      I3 => \csr_ecode[0]_INST_0_i_1_n_0\,
      I4 => sel0(7),
      I5 => \csr_ecode[1]_INST_0_i_1_n_0\,
      O => csr_ecode(0)
    );
\csr_ecode[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF5510"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => sel0(4),
      I5 => sel0(5),
      O => \csr_ecode[0]_INST_0_i_1_n_0\
    );
\csr_ecode[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAE"
    )
        port map (
      I0 => \csr_ecode[1]_INST_0_i_1_n_0\,
      I1 => \csr_ecode[1]_INST_0_i_2_n_0\,
      I2 => sel0(7),
      I3 => sel0(8),
      I4 => sel0(13),
      I5 => \wb_data_reg_n_0_[119]\,
      O => csr_ecode(1)
    );
\csr_ecode[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(10),
      I2 => sel0(11),
      I3 => sel0(12),
      I4 => sel0(13),
      I5 => \wb_data_reg_n_0_[119]\,
      O => \csr_ecode[1]_INST_0_i_1_n_0\
    );
\csr_ecode[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551110"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(4),
      I5 => sel0(6),
      O => \csr_ecode[1]_INST_0_i_2_n_0\
    );
\csr_ecode[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => sel0(12),
      I1 => \csr_ecode[2]_INST_0_i_1_n_0\,
      I2 => \csr_ecode[2]_INST_0_i_2_n_0\,
      I3 => \csr_ecode[4]_INST_0_i_1_n_0\,
      I4 => \csr_ecode[2]_INST_0_i_3_n_0\,
      I5 => \csr_ecode[2]_INST_0_i_4_n_0\,
      O => csr_ecode(2)
    );
\csr_ecode[2]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wb_data_reg_n_0_[119]\,
      I1 => sel0(13),
      O => \csr_ecode[2]_INST_0_i_1_n_0\
    );
\csr_ecode[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(13),
      I1 => sel0(11),
      I2 => sel0(9),
      I3 => \wb_data_reg_n_0_[119]\,
      O => \csr_ecode[2]_INST_0_i_2_n_0\
    );
\csr_ecode[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(5),
      O => \csr_ecode[2]_INST_0_i_3_n_0\
    );
\csr_ecode[2]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(11),
      I1 => sel0(10),
      I2 => sel0(13),
      I3 => \wb_data_reg_n_0_[119]\,
      O => \csr_ecode[2]_INST_0_i_4_n_0\
    );
\csr_ecode[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FF10"
    )
        port map (
      I0 => sel0(11),
      I1 => sel0(10),
      I2 => \csr_ecode[3]_INST_0_i_1_n_0\,
      I3 => sel0(12),
      I4 => \wb_data_reg_n_0_[119]\,
      I5 => sel0(13),
      O => csr_ecode(3)
    );
\csr_ecode[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(7),
      I4 => sel0(8),
      I5 => sel0(6),
      O => \csr_ecode[3]_INST_0_i_1_n_0\
    );
\csr_ecode[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022002F00220022"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      I2 => sel0(9),
      I3 => \wb_data_reg_n_0_[119]\,
      I4 => \csr_ecode[4]_INST_0_i_1_n_0\,
      I5 => \csr_ecode[4]_INST_0_i_2_n_0\,
      O => csr_ecode(4)
    );
\csr_ecode[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(8),
      I2 => sel0(7),
      O => \csr_ecode[4]_INST_0_i_1_n_0\
    );
\csr_ecode[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => sel0(13),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(10),
      I4 => sel0(11),
      O => \csr_ecode[4]_INST_0_i_2_n_0\
    );
csr_wr_en_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => wb_excp,
      I1 => wb_csr_we,
      I2 => wb_valid,
      O => csr_wr_en
    );
\debug_wb_rf_we[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => wb_excp,
      I1 => wb_gr_we,
      I2 => wb_valid,
      O => wb_to_id_bus(0)
    );
ertn_flush_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => wb_excp,
      I1 => wb_ertn,
      I2 => wb_valid,
      O => ertn_flush
    );
excp_flush_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wb_valid,
      I1 => wb_excp,
      O => excp_flush
    );
refetch_flush_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wb_valid,
      I1 => wb_csr_we,
      O => refetch_flush
    );
va_error_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888C88888888"
    )
        port map (
      I0 => va_error_INST_0_i_1_n_0,
      I1 => wb_valid,
      I2 => \csr_ecode[4]_INST_0_i_1_n_0\,
      I3 => \wb_data_reg_n_0_[119]\,
      I4 => sel0(9),
      I5 => va_error_INST_0_i_2_n_0,
      O => va_error
    );
va_error_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => sel0(13),
      I1 => sel0(10),
      I2 => sel0(11),
      I3 => sel0(12),
      I4 => \wb_data_reg_n_0_[119]\,
      O => va_error_INST_0_i_1_n_0
    );
va_error_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(3),
      O => va_error_INST_0_i_2_n_0
    );
\wb_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(0),
      Q => \^q\(0),
      R => '0'
    );
\wb_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(100),
      Q => \^q\(97),
      R => '0'
    );
\wb_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(101),
      Q => \^q\(98),
      R => '0'
    );
\wb_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(102),
      Q => \^q\(99),
      R => '0'
    );
\wb_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(103),
      Q => \^q\(100),
      R => '0'
    );
\wb_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(104),
      Q => \^q\(101),
      R => '0'
    );
\wb_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(105),
      Q => \^q\(102),
      R => '0'
    );
\wb_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(106),
      Q => \^q\(103),
      R => '0'
    );
\wb_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(107),
      Q => \^q\(104),
      R => '0'
    );
\wb_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(108),
      Q => \^q\(105),
      R => '0'
    );
\wb_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(109),
      Q => \^q\(106),
      R => '0'
    );
\wb_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(10),
      Q => \^q\(10),
      R => '0'
    );
\wb_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(110),
      Q => \^q\(107),
      R => '0'
    );
\wb_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(111),
      Q => \^q\(108),
      R => '0'
    );
\wb_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(112),
      Q => \^q\(109),
      R => '0'
    );
\wb_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(113),
      Q => \^q\(110),
      R => '0'
    );
\wb_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(114),
      Q => \^q\(111),
      R => '0'
    );
\wb_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(115),
      Q => \^q\(112),
      R => '0'
    );
\wb_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(116),
      Q => \^q\(113),
      R => '0'
    );
\wb_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(117),
      Q => \^q\(114),
      R => '0'
    );
\wb_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(118),
      Q => wb_csr_we,
      R => '0'
    );
\wb_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(119),
      Q => \wb_data_reg_n_0_[119]\,
      R => '0'
    );
\wb_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(11),
      Q => \^q\(11),
      R => '0'
    );
\wb_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(120),
      Q => sel0(13),
      R => '0'
    );
\wb_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(121),
      Q => sel0(12),
      R => '0'
    );
\wb_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(122),
      Q => sel0(11),
      R => '0'
    );
\wb_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(123),
      Q => sel0(10),
      R => '0'
    );
\wb_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(124),
      Q => sel0(9),
      R => '0'
    );
\wb_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(125),
      Q => sel0(8),
      R => '0'
    );
\wb_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(126),
      Q => sel0(7),
      R => '0'
    );
\wb_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(127),
      Q => sel0(6),
      R => '0'
    );
\wb_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(128),
      Q => sel0(5),
      R => '0'
    );
\wb_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(12),
      Q => \^q\(12),
      R => '0'
    );
\wb_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(129),
      Q => sel0(4),
      R => '0'
    );
\wb_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(130),
      Q => sel0(3),
      R => '0'
    );
\wb_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(131),
      Q => sel0(2),
      R => '0'
    );
\wb_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(132),
      Q => sel0(1),
      R => '0'
    );
\wb_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(133),
      Q => sel0(0),
      R => '0'
    );
\wb_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(134),
      Q => data4(9),
      R => '0'
    );
\wb_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(135),
      Q => data4(10),
      R => '0'
    );
\wb_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(136),
      Q => data4(11),
      R => '0'
    );
\wb_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(137),
      Q => data4(12),
      R => '0'
    );
\wb_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(138),
      Q => data4(13),
      R => '0'
    );
\wb_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(13),
      Q => \^q\(13),
      R => '0'
    );
\wb_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(139),
      Q => data4(14),
      R => '0'
    );
\wb_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(140),
      Q => data4(15),
      R => '0'
    );
\wb_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(141),
      Q => data4(16),
      R => '0'
    );
\wb_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(142),
      Q => data4(17),
      R => '0'
    );
\wb_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(143),
      Q => data4(18),
      R => '0'
    );
\wb_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(144),
      Q => data4(19),
      R => '0'
    );
\wb_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(145),
      Q => data4(20),
      R => '0'
    );
\wb_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(146),
      Q => data4(21),
      R => '0'
    );
\wb_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(147),
      Q => data4(22),
      R => '0'
    );
\wb_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(148),
      Q => data4(23),
      R => '0'
    );
\wb_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(14),
      Q => \^q\(14),
      R => '0'
    );
\wb_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(149),
      Q => data4(24),
      R => '0'
    );
\wb_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(150),
      Q => data4(25),
      R => '0'
    );
\wb_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(151),
      Q => data4(26),
      R => '0'
    );
\wb_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(152),
      Q => data4(27),
      R => '0'
    );
\wb_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(153),
      Q => data4(28),
      R => '0'
    );
\wb_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(154),
      Q => data4(29),
      R => '0'
    );
\wb_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(155),
      Q => data4(30),
      R => '0'
    );
\wb_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(156),
      Q => data4(31),
      R => '0'
    );
\wb_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(157),
      Q => data4(32),
      R => '0'
    );
\wb_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(158),
      Q => data4(33),
      R => '0'
    );
\wb_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(15),
      Q => \^q\(15),
      R => '0'
    );
\wb_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(159),
      Q => data4(34),
      R => '0'
    );
\wb_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(160),
      Q => data4(35),
      R => '0'
    );
\wb_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(161),
      Q => data4(36),
      R => '0'
    );
\wb_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(162),
      Q => data4(37),
      R => '0'
    );
\wb_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(163),
      Q => data4(38),
      R => '0'
    );
\wb_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(164),
      Q => data4(39),
      R => '0'
    );
\wb_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(165),
      Q => data4(40),
      R => '0'
    );
\wb_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(16),
      Q => \^q\(16),
      R => '0'
    );
\wb_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(17),
      Q => \^q\(17),
      R => '0'
    );
\wb_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(18),
      Q => \^q\(18),
      R => '0'
    );
\wb_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(19),
      Q => \^q\(19),
      R => '0'
    );
\wb_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(1),
      Q => \^q\(1),
      R => '0'
    );
\wb_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(20),
      Q => \^q\(20),
      R => '0'
    );
\wb_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(21),
      Q => \^q\(21),
      R => '0'
    );
\wb_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(22),
      Q => \^q\(22),
      R => '0'
    );
\wb_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(23),
      Q => \^q\(23),
      R => '0'
    );
\wb_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(24),
      Q => \^q\(24),
      R => '0'
    );
\wb_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(25),
      Q => \^q\(25),
      R => '0'
    );
\wb_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(26),
      Q => \^q\(26),
      R => '0'
    );
\wb_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(27),
      Q => \^q\(27),
      R => '0'
    );
\wb_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(28),
      Q => \^q\(28),
      R => '0'
    );
\wb_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(29),
      Q => \^q\(29),
      R => '0'
    );
\wb_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(2),
      Q => \^q\(2),
      R => '0'
    );
\wb_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(30),
      Q => \^q\(30),
      R => '0'
    );
\wb_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(31),
      Q => \^q\(31),
      R => '0'
    );
\wb_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(32),
      Q => \^q\(32),
      R => '0'
    );
\wb_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(33),
      Q => \^q\(33),
      R => '0'
    );
\wb_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(34),
      Q => \^q\(34),
      R => '0'
    );
\wb_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(35),
      Q => \^q\(35),
      R => '0'
    );
\wb_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(36),
      Q => \^q\(36),
      R => '0'
    );
\wb_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(37),
      Q => \^q\(37),
      R => '0'
    );
\wb_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(38),
      Q => \^q\(38),
      R => '0'
    );
\wb_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(39),
      Q => \^q\(39),
      R => '0'
    );
\wb_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(3),
      Q => \^q\(3),
      R => '0'
    );
\wb_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(40),
      Q => \^q\(40),
      R => '0'
    );
\wb_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(41),
      Q => \^q\(41),
      R => '0'
    );
\wb_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(42),
      Q => \^q\(42),
      R => '0'
    );
\wb_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(43),
      Q => \^q\(43),
      R => '0'
    );
\wb_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(44),
      Q => \^q\(44),
      R => '0'
    );
\wb_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(45),
      Q => \^q\(45),
      R => '0'
    );
\wb_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(46),
      Q => \^q\(46),
      R => '0'
    );
\wb_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(47),
      Q => \^q\(47),
      R => '0'
    );
\wb_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(48),
      Q => \^q\(48),
      R => '0'
    );
\wb_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(49),
      Q => \^q\(49),
      R => '0'
    );
\wb_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(4),
      Q => \^q\(4),
      R => '0'
    );
\wb_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(50),
      Q => \^q\(50),
      R => '0'
    );
\wb_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(51),
      Q => \^q\(51),
      R => '0'
    );
\wb_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(52),
      Q => \^q\(52),
      R => '0'
    );
\wb_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(53),
      Q => \^q\(53),
      R => '0'
    );
\wb_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(54),
      Q => \^q\(54),
      R => '0'
    );
\wb_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(55),
      Q => \^q\(55),
      R => '0'
    );
\wb_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(56),
      Q => \^q\(56),
      R => '0'
    );
\wb_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(57),
      Q => \^q\(57),
      R => '0'
    );
\wb_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(58),
      Q => \^q\(58),
      R => '0'
    );
\wb_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(59),
      Q => \^q\(59),
      R => '0'
    );
\wb_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(5),
      Q => \^q\(5),
      R => '0'
    );
\wb_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(60),
      Q => \^q\(60),
      R => '0'
    );
\wb_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(61),
      Q => \^q\(61),
      R => '0'
    );
\wb_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(62),
      Q => \^q\(62),
      R => '0'
    );
\wb_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(63),
      Q => \^q\(63),
      R => '0'
    );
\wb_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(64),
      Q => \^q\(64),
      R => '0'
    );
\wb_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(65),
      Q => \^q\(65),
      R => '0'
    );
\wb_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(66),
      Q => \^q\(66),
      R => '0'
    );
\wb_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(67),
      Q => \^q\(67),
      R => '0'
    );
\wb_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(68),
      Q => \^q\(68),
      R => '0'
    );
\wb_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(69),
      Q => wb_gr_we,
      R => '0'
    );
\wb_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(6),
      Q => \^q\(6),
      R => '0'
    );
\wb_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(70),
      Q => wb_excp,
      R => '0'
    );
\wb_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(71),
      Q => wb_ertn,
      R => '0'
    );
\wb_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(72),
      Q => \^q\(69),
      R => '0'
    );
\wb_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(73),
      Q => \^q\(70),
      R => '0'
    );
\wb_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(74),
      Q => \^q\(71),
      R => '0'
    );
\wb_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(75),
      Q => \^q\(72),
      R => '0'
    );
\wb_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(76),
      Q => \^q\(73),
      R => '0'
    );
\wb_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(77),
      Q => \^q\(74),
      R => '0'
    );
\wb_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(78),
      Q => \^q\(75),
      R => '0'
    );
\wb_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(79),
      Q => \^q\(76),
      R => '0'
    );
\wb_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(7),
      Q => \^q\(7),
      R => '0'
    );
\wb_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(80),
      Q => \^q\(77),
      R => '0'
    );
\wb_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(81),
      Q => \^q\(78),
      R => '0'
    );
\wb_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(82),
      Q => \^q\(79),
      R => '0'
    );
\wb_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(83),
      Q => \^q\(80),
      R => '0'
    );
\wb_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(84),
      Q => \^q\(81),
      R => '0'
    );
\wb_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(85),
      Q => \^q\(82),
      R => '0'
    );
\wb_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(86),
      Q => \^q\(83),
      R => '0'
    );
\wb_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(87),
      Q => \^q\(84),
      R => '0'
    );
\wb_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(88),
      Q => \^q\(85),
      R => '0'
    );
\wb_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(89),
      Q => \^q\(86),
      R => '0'
    );
\wb_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(8),
      Q => \^q\(8),
      R => '0'
    );
\wb_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(90),
      Q => \^q\(87),
      R => '0'
    );
\wb_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(91),
      Q => \^q\(88),
      R => '0'
    );
\wb_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(92),
      Q => \^q\(89),
      R => '0'
    );
\wb_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(93),
      Q => \^q\(90),
      R => '0'
    );
\wb_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(94),
      Q => \^q\(91),
      R => '0'
    );
\wb_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(95),
      Q => \^q\(92),
      R => '0'
    );
\wb_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(96),
      Q => \^q\(93),
      R => '0'
    );
\wb_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(97),
      Q => \^q\(94),
      R => '0'
    );
\wb_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(98),
      Q => \^q\(95),
      R => '0'
    );
\wb_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(99),
      Q => \^q\(96),
      R => '0'
    );
\wb_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(9),
      Q => \^q\(9),
      R => '0'
    );
wb_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808080888"
    )
        port map (
      I0 => mem_to_wb_valid,
      I1 => resetn,
      I2 => wb_valid,
      I3 => wb_csr_we,
      I4 => wb_ertn,
      I5 => wb_excp,
      O => wb_valid_i_1_n_0
    );
wb_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wb_valid_i_1_n_0,
      Q => wb_valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mycpu_top_block_wb_stage_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    wb_allowin : out STD_LOGIC;
    mem_to_wb_valid : in STD_LOGIC;
    mem_to_wb_bus : in STD_LOGIC_VECTOR ( 167 downto 0 );
    wb_to_id_bus : out STD_LOGIC_VECTOR ( 64 downto 0 );
    excp_flush : out STD_LOGIC;
    ertn_flush : out STD_LOGIC;
    refetch_flush : out STD_LOGIC;
    csr_era : out STD_LOGIC_VECTOR ( 31 downto 0 );
    csr_esubcode : out STD_LOGIC_VECTOR ( 8 downto 0 );
    csr_ecode : out STD_LOGIC_VECTOR ( 5 downto 0 );
    csr_wr_en : out STD_LOGIC;
    wr_csr_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_csr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    va_error : out STD_LOGIC;
    bad_va : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_rf_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_wb_rf_wnum : out STD_LOGIC_VECTOR ( 4 downto 0 );
    debug_wb_rf_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mycpu_top_block_wb_stage_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mycpu_top_block_wb_stage_0_0 : entity is "mycpu_top_block_wb_stage_0_0,wb_stage,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mycpu_top_block_wb_stage_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mycpu_top_block_wb_stage_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mycpu_top_block_wb_stage_0_0 : entity is "wb_stage,Vivado 2023.2";
end mycpu_top_block_wb_stage_0_0;

architecture STRUCTURE of mycpu_top_block_wb_stage_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^csr_ecode\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^csr_era\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^debug_wb_rf_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^debug_wb_rf_wnum\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^wb_to_id_bus\ : STD_LOGIC_VECTOR ( 37 to 37 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  csr_ecode(5) <= \^csr_ecode\(5);
  csr_ecode(4) <= \^csr_ecode\(5);
  csr_ecode(3 downto 0) <= \^csr_ecode\(3 downto 0);
  csr_era(31 downto 0) <= \^csr_era\(31 downto 0);
  csr_esubcode(8) <= \<const0>\;
  csr_esubcode(7) <= \<const0>\;
  csr_esubcode(6) <= \<const0>\;
  csr_esubcode(5) <= \<const0>\;
  csr_esubcode(4) <= \<const0>\;
  csr_esubcode(3) <= \<const0>\;
  csr_esubcode(2) <= \<const0>\;
  csr_esubcode(1) <= \<const0>\;
  csr_esubcode(0) <= \<const0>\;
  debug_wb_pc(31 downto 0) <= \^csr_era\(31 downto 0);
  debug_wb_rf_wdata(31 downto 0) <= \^debug_wb_rf_wdata\(31 downto 0);
  debug_wb_rf_we(3) <= \^wb_to_id_bus\(37);
  debug_wb_rf_we(2) <= \^wb_to_id_bus\(37);
  debug_wb_rf_we(1) <= \^wb_to_id_bus\(37);
  debug_wb_rf_we(0) <= \^wb_to_id_bus\(37);
  debug_wb_rf_wnum(4 downto 0) <= \^debug_wb_rf_wnum\(4 downto 0);
  wb_allowin <= \<const1>\;
  wb_to_id_bus(64) <= \<const0>\;
  wb_to_id_bus(63) <= \<const0>\;
  wb_to_id_bus(62) <= \<const0>\;
  wb_to_id_bus(61) <= \<const0>\;
  wb_to_id_bus(60) <= \<const0>\;
  wb_to_id_bus(59) <= \<const0>\;
  wb_to_id_bus(58) <= \<const0>\;
  wb_to_id_bus(57) <= \<const0>\;
  wb_to_id_bus(56) <= \<const0>\;
  wb_to_id_bus(55) <= \<const0>\;
  wb_to_id_bus(54) <= \<const0>\;
  wb_to_id_bus(53) <= \<const0>\;
  wb_to_id_bus(52) <= \<const0>\;
  wb_to_id_bus(51) <= \<const0>\;
  wb_to_id_bus(50) <= \<const0>\;
  wb_to_id_bus(49) <= \<const0>\;
  wb_to_id_bus(48) <= \<const0>\;
  wb_to_id_bus(47) <= \<const0>\;
  wb_to_id_bus(46) <= \<const0>\;
  wb_to_id_bus(45) <= \<const0>\;
  wb_to_id_bus(44) <= \<const0>\;
  wb_to_id_bus(43) <= \<const0>\;
  wb_to_id_bus(42) <= \<const0>\;
  wb_to_id_bus(41) <= \<const0>\;
  wb_to_id_bus(40) <= \<const0>\;
  wb_to_id_bus(39) <= \<const0>\;
  wb_to_id_bus(38) <= \<const0>\;
  wb_to_id_bus(37) <= \^wb_to_id_bus\(37);
  wb_to_id_bus(36 downto 32) <= \^debug_wb_rf_wnum\(4 downto 0);
  wb_to_id_bus(31 downto 0) <= \^debug_wb_rf_wdata\(31 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.mycpu_top_block_wb_stage_0_0_wb_stage
     port map (
      Q(114 downto 101) => wr_csr_addr(13 downto 0),
      Q(100 downto 69) => wr_csr_data(31 downto 0),
      Q(68 downto 64) => \^debug_wb_rf_wnum\(4 downto 0),
      Q(63 downto 32) => \^debug_wb_rf_wdata\(31 downto 0),
      Q(31 downto 0) => \^csr_era\(31 downto 0),
      bad_va(31 downto 0) => bad_va(31 downto 0),
      clk => clk,
      csr_ecode(4) => \^csr_ecode\(5),
      csr_ecode(3 downto 0) => \^csr_ecode\(3 downto 0),
      csr_wr_en => csr_wr_en,
      ertn_flush => ertn_flush,
      excp_flush => excp_flush,
      mem_to_wb_bus(165 downto 129) => mem_to_wb_bus(166 downto 130),
      mem_to_wb_bus(128 downto 0) => mem_to_wb_bus(128 downto 0),
      mem_to_wb_valid => mem_to_wb_valid,
      refetch_flush => refetch_flush,
      resetn => resetn,
      va_error => va_error,
      wb_to_id_bus(0) => \^wb_to_id_bus\(37)
    );
end STRUCTURE;
