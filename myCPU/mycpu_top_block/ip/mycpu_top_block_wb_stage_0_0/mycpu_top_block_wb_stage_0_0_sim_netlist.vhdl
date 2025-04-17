-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Apr 17 17:57:40 2025
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
    Q : out STD_LOGIC_VECTOR ( 69 downto 0 );
    debug_wb_rf_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_to_wb_valid : in STD_LOGIC;
    resetn : in STD_LOGIC;
    mem_to_wb_bus : in STD_LOGIC_VECTOR ( 69 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mycpu_top_block_wb_stage_0_0_wb_stage : entity is "wb_stage";
end mycpu_top_block_wb_stage_0_0_wb_stage;

architecture STRUCTURE of mycpu_top_block_wb_stage_0_0_wb_stage is
  signal \^q\ : STD_LOGIC_VECTOR ( 69 downto 0 );
  signal wb_valid : STD_LOGIC;
  signal wb_valid_i_1_n_0 : STD_LOGIC;
begin
  Q(69 downto 0) <= \^q\(69 downto 0);
\debug_wb_rf_we[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(69),
      I1 => wb_valid,
      O => debug_wb_rf_we(0)
    );
\wb_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(0),
      Q => \^q\(0),
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
\wb_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(11),
      Q => \^q\(11),
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
\wb_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(13),
      Q => \^q\(13),
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
\wb_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(15),
      Q => \^q\(15),
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
      Q => \^q\(69),
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
\wb_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(7),
      Q => \^q\(7),
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
\wb_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_to_wb_valid,
      D => mem_to_wb_bus(9),
      Q => \^q\(9),
      R => '0'
    );
wb_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => mem_to_wb_valid,
      I1 => resetn,
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
    mem_to_wb_bus : in STD_LOGIC_VECTOR ( 69 downto 0 );
    wb_to_id_bus : out STD_LOGIC_VECTOR ( 64 downto 0 );
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
  signal \^debug_wb_rf_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^debug_wb_rf_we\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^debug_wb_rf_wnum\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^wb_to_id_bus\ : STD_LOGIC_VECTOR ( 37 to 37 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  debug_wb_rf_wdata(31 downto 0) <= \^debug_wb_rf_wdata\(31 downto 0);
  debug_wb_rf_we(3) <= \^debug_wb_rf_we\(3);
  debug_wb_rf_we(2) <= \^debug_wb_rf_we\(3);
  debug_wb_rf_we(1) <= \^debug_wb_rf_we\(3);
  debug_wb_rf_we(0) <= \^debug_wb_rf_we\(3);
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
      Q(69) => \^wb_to_id_bus\(37),
      Q(68 downto 64) => \^debug_wb_rf_wnum\(4 downto 0),
      Q(63 downto 32) => \^debug_wb_rf_wdata\(31 downto 0),
      Q(31 downto 0) => debug_wb_pc(31 downto 0),
      clk => clk,
      debug_wb_rf_we(0) => \^debug_wb_rf_we\(3),
      mem_to_wb_bus(69 downto 0) => mem_to_wb_bus(69 downto 0),
      mem_to_wb_valid => mem_to_wb_valid,
      resetn => resetn
    );
end STRUCTURE;
