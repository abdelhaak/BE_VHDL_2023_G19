-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/12/2023 17:39:54"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traitement_compas IS
    PORT (
	data_valid : OUT std_logic;
	start_stop : IN std_logic;
	continu : IN std_logic;
	clk_50MHz : IN std_logic;
	RAZ_N : IN std_logic;
	in_pwm : IN std_logic;
	data_compas : OUT std_logic_vector(8 DOWNTO 0)
	);
END traitement_compas;

-- Design Ports Information
-- data_valid	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_compas[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- continu	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAZ_N	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_pwm	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traitement_compas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_valid : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_continu : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_RAZ_N : std_logic;
SIGNAL ww_in_pwm : std_logic;
SIGNAL ww_data_compas : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst6|e_signal_compteur~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_valid~output_o\ : std_logic;
SIGNAL \data_compas[8]~output_o\ : std_logic;
SIGNAL \data_compas[7]~output_o\ : std_logic;
SIGNAL \data_compas[6]~output_o\ : std_logic;
SIGNAL \data_compas[5]~output_o\ : std_logic;
SIGNAL \data_compas[4]~output_o\ : std_logic;
SIGNAL \data_compas[3]~output_o\ : std_logic;
SIGNAL \data_compas[2]~output_o\ : std_logic;
SIGNAL \data_compas[1]~output_o\ : std_logic;
SIGNAL \data_compas[0]~output_o\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \continu~input_o\ : std_logic;
SIGNAL \inst|data_valid~0_combout\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \RAZ_N~input_o\ : std_logic;
SIGNAL \inst5|count[0]~32_combout\ : std_logic;
SIGNAL \inst5|count[0]~34_combout\ : std_logic;
SIGNAL \inst5|count[0]~31_combout\ : std_logic;
SIGNAL \inst5|count[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|count[0]~33_combout\ : std_logic;
SIGNAL \inst5|count[1]~37_combout\ : std_logic;
SIGNAL \inst5|tmp~1_combout\ : std_logic;
SIGNAL \inst5|count[1]~38\ : std_logic;
SIGNAL \inst5|count[2]~39_combout\ : std_logic;
SIGNAL \inst5|count[2]~40\ : std_logic;
SIGNAL \inst5|count[3]~41_combout\ : std_logic;
SIGNAL \inst5|count[3]~42\ : std_logic;
SIGNAL \inst5|count[4]~43_combout\ : std_logic;
SIGNAL \inst5|count[4]~44\ : std_logic;
SIGNAL \inst5|count[5]~45_combout\ : std_logic;
SIGNAL \inst5|count[5]~46\ : std_logic;
SIGNAL \inst5|count[6]~47_combout\ : std_logic;
SIGNAL \inst5|count[6]~48\ : std_logic;
SIGNAL \inst5|count[7]~49_combout\ : std_logic;
SIGNAL \inst5|count[7]~50\ : std_logic;
SIGNAL \inst5|count[8]~51_combout\ : std_logic;
SIGNAL \inst5|count[8]~52\ : std_logic;
SIGNAL \inst5|count[9]~53_combout\ : std_logic;
SIGNAL \inst5|count[9]~54\ : std_logic;
SIGNAL \inst5|count[10]~55_combout\ : std_logic;
SIGNAL \inst5|count[10]~56\ : std_logic;
SIGNAL \inst5|count[11]~57_combout\ : std_logic;
SIGNAL \inst5|count[11]~58\ : std_logic;
SIGNAL \inst5|count[12]~59_combout\ : std_logic;
SIGNAL \inst5|count[12]~60\ : std_logic;
SIGNAL \inst5|count[13]~61_combout\ : std_logic;
SIGNAL \inst5|count[13]~62\ : std_logic;
SIGNAL \inst5|count[14]~63_combout\ : std_logic;
SIGNAL \inst5|count[14]~64\ : std_logic;
SIGNAL \inst5|count[15]~65_combout\ : std_logic;
SIGNAL \inst5|count[15]~66\ : std_logic;
SIGNAL \inst5|count[16]~67_combout\ : std_logic;
SIGNAL \inst5|count[16]~68\ : std_logic;
SIGNAL \inst5|count[17]~69_combout\ : std_logic;
SIGNAL \inst5|count[17]~70\ : std_logic;
SIGNAL \inst5|count[18]~71_combout\ : std_logic;
SIGNAL \inst5|count[18]~72\ : std_logic;
SIGNAL \inst5|count[19]~73_combout\ : std_logic;
SIGNAL \inst5|count[19]~74\ : std_logic;
SIGNAL \inst5|count[20]~75_combout\ : std_logic;
SIGNAL \inst5|count[20]~76\ : std_logic;
SIGNAL \inst5|count[21]~77_combout\ : std_logic;
SIGNAL \inst5|count[21]~78\ : std_logic;
SIGNAL \inst5|count[22]~79_combout\ : std_logic;
SIGNAL \inst5|count[22]~80\ : std_logic;
SIGNAL \inst5|count[23]~81_combout\ : std_logic;
SIGNAL \inst5|count[23]~82\ : std_logic;
SIGNAL \inst5|count[24]~83_combout\ : std_logic;
SIGNAL \inst5|count[24]~84\ : std_logic;
SIGNAL \inst5|count[25]~85_combout\ : std_logic;
SIGNAL \inst5|count[25]~86\ : std_logic;
SIGNAL \inst5|count[26]~87_combout\ : std_logic;
SIGNAL \inst5|count[26]~88\ : std_logic;
SIGNAL \inst5|count[27]~89_combout\ : std_logic;
SIGNAL \inst5|count[27]~90\ : std_logic;
SIGNAL \inst5|count[28]~91_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|count[28]~92\ : std_logic;
SIGNAL \inst5|count[29]~93_combout\ : std_logic;
SIGNAL \inst5|count[29]~94\ : std_logic;
SIGNAL \inst5|count[30]~95_combout\ : std_logic;
SIGNAL \inst5|count[30]~96\ : std_logic;
SIGNAL \inst5|count[31]~97_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~10_combout\ : std_logic;
SIGNAL \inst5|tmp~0_combout\ : std_logic;
SIGNAL \inst5|tmp~combout\ : std_logic;
SIGNAL \in_pwm~input_o\ : std_logic;
SIGNAL \inst6|e_signal_compteur~combout\ : std_logic;
SIGNAL \inst6|e_signal_compteur~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|angle_front[0]~24_combout\ : std_logic;
SIGNAL \inst1|compteur_out_angle[8]~0_combout\ : std_logic;
SIGNAL \inst1|angle_front[1]~8_combout\ : std_logic;
SIGNAL \inst1|angle_front[1]~9\ : std_logic;
SIGNAL \inst1|angle_front[2]~10_combout\ : std_logic;
SIGNAL \inst1|angle_front[2]~11\ : std_logic;
SIGNAL \inst1|angle_front[3]~12_combout\ : std_logic;
SIGNAL \inst1|angle_front[3]~13\ : std_logic;
SIGNAL \inst1|angle_front[4]~14_combout\ : std_logic;
SIGNAL \inst1|angle_front[4]~15\ : std_logic;
SIGNAL \inst1|angle_front[5]~16_combout\ : std_logic;
SIGNAL \inst1|angle_front[5]~17\ : std_logic;
SIGNAL \inst1|angle_front[6]~18_combout\ : std_logic;
SIGNAL \inst1|angle_front[6]~19\ : std_logic;
SIGNAL \inst1|angle_front[7]~20_combout\ : std_logic;
SIGNAL \inst1|angle_front[7]~21\ : std_logic;
SIGNAL \inst1|angle_front[8]~22_combout\ : std_logic;
SIGNAL \inst|data_compas[8]~0_combout\ : std_logic;
SIGNAL \inst|data_compas[7]~1_combout\ : std_logic;
SIGNAL \inst|data_compas[6]~2_combout\ : std_logic;
SIGNAL \inst|data_compas[5]~3_combout\ : std_logic;
SIGNAL \inst|data_compas[4]~4_combout\ : std_logic;
SIGNAL \inst|data_compas[3]~5_combout\ : std_logic;
SIGNAL \inst|data_compas[2]~6_combout\ : std_logic;
SIGNAL \inst|data_compas[1]~7_combout\ : std_logic;
SIGNAL \inst|data_compas[0]~8_combout\ : std_logic;
SIGNAL \inst1|angle_front\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|compteur_out_angle\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|ALT_INV_count[0]~31_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_tmp~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

data_valid <= ww_data_valid;
ww_start_stop <= start_stop;
ww_continu <= continu;
ww_clk_50MHz <= clk_50MHz;
ww_RAZ_N <= RAZ_N;
ww_in_pwm <= in_pwm;
data_compas <= ww_data_compas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|e_signal_compteur~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|e_signal_compteur~combout\);
\inst5|ALT_INV_count[0]~31_combout\ <= NOT \inst5|count[0]~31_combout\;
\inst5|ALT_INV_tmp~1_combout\ <= NOT \inst5|tmp~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N9
\data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_valid~0_combout\,
	devoe => ww_devoe,
	o => \data_valid~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\data_compas[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[8]~0_combout\,
	devoe => ww_devoe,
	o => \data_compas[8]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\data_compas[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[7]~1_combout\,
	devoe => ww_devoe,
	o => \data_compas[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\data_compas[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[6]~2_combout\,
	devoe => ww_devoe,
	o => \data_compas[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\data_compas[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[5]~3_combout\,
	devoe => ww_devoe,
	o => \data_compas[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\data_compas[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[4]~4_combout\,
	devoe => ww_devoe,
	o => \data_compas[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\data_compas[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[3]~5_combout\,
	devoe => ww_devoe,
	o => \data_compas[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\data_compas[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[2]~6_combout\,
	devoe => ww_devoe,
	o => \data_compas[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\data_compas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[1]~7_combout\,
	devoe => ww_devoe,
	o => \data_compas[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\data_compas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_compas[0]~8_combout\,
	devoe => ww_devoe,
	o => \data_compas[0]~output_o\);

-- Location: IOIBUF_X25_Y34_N8
\start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\continu~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_continu,
	o => \continu~input_o\);

-- Location: LCCOMB_X2_Y5_N4
\inst|data_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_valid~0_combout\ = (\continu~input_o\) # (!\start_stop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_stop~input_o\,
	datad => \continu~input_o\,
	combout => \inst|data_valid~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\RAZ_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAZ_N,
	o => \RAZ_N~input_o\);

-- Location: LCCOMB_X18_Y9_N28
\inst5|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[0]~32_combout\ = (!\inst5|Equal0~10_combout\ & ((\RAZ_N~input_o\) # (\inst5|count[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~10_combout\,
	datac => \RAZ_N~input_o\,
	datad => \inst5|count[0]~32_combout\,
	combout => \inst5|count[0]~32_combout\);

-- Location: LCCOMB_X18_Y9_N6
\inst5|count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[0]~34_combout\ = \inst5|count[0]~32_combout\ $ (!\inst5|count[0]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count[0]~32_combout\,
	datad => \inst5|count[0]~33_combout\,
	combout => \inst5|count[0]~34_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst5|count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[0]~31_combout\ = (\RAZ_N~input_o\) # (\inst5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAZ_N~input_o\,
	datad => \inst5|Equal0~10_combout\,
	combout => \inst5|count[0]~31_combout\);

-- Location: FF_X18_Y9_N7
\inst5|count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[0]~34_combout\,
	clrn => \inst5|ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count[0]~_emulated_q\);

-- Location: LCCOMB_X17_Y9_N0
\inst5|count[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[0]~33_combout\ = (!\inst5|Equal0~10_combout\ & ((\RAZ_N~input_o\) # (\inst5|count[0]~32_combout\ $ (\inst5|count[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count[0]~32_combout\,
	datab => \inst5|Equal0~10_combout\,
	datac => \RAZ_N~input_o\,
	datad => \inst5|count[0]~_emulated_q\,
	combout => \inst5|count[0]~33_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst5|count[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[1]~37_combout\ = (\inst5|count[0]~33_combout\ & (\inst5|count\(1) $ (VCC))) # (!\inst5|count[0]~33_combout\ & (\inst5|count\(1) & VCC))
-- \inst5|count[1]~38\ = CARRY((\inst5|count[0]~33_combout\ & \inst5|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count[0]~33_combout\,
	datab => \inst5|count\(1),
	datad => VCC,
	combout => \inst5|count[1]~37_combout\,
	cout => \inst5|count[1]~38\);

-- Location: LCCOMB_X18_Y9_N0
\inst5|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|tmp~1_combout\ = (\RAZ_N~input_o\) # (\inst5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAZ_N~input_o\,
	datad => \inst5|Equal0~10_combout\,
	combout => \inst5|tmp~1_combout\);

-- Location: FF_X17_Y9_N3
\inst5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[1]~37_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(1));

-- Location: LCCOMB_X17_Y9_N4
\inst5|count[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[2]~39_combout\ = (\inst5|count\(2) & (!\inst5|count[1]~38\)) # (!\inst5|count\(2) & ((\inst5|count[1]~38\) # (GND)))
-- \inst5|count[2]~40\ = CARRY((!\inst5|count[1]~38\) # (!\inst5|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(2),
	datad => VCC,
	cin => \inst5|count[1]~38\,
	combout => \inst5|count[2]~39_combout\,
	cout => \inst5|count[2]~40\);

-- Location: FF_X17_Y9_N5
\inst5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[2]~39_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(2));

-- Location: LCCOMB_X17_Y9_N6
\inst5|count[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[3]~41_combout\ = (\inst5|count\(3) & (\inst5|count[2]~40\ $ (GND))) # (!\inst5|count\(3) & (!\inst5|count[2]~40\ & VCC))
-- \inst5|count[3]~42\ = CARRY((\inst5|count\(3) & !\inst5|count[2]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(3),
	datad => VCC,
	cin => \inst5|count[2]~40\,
	combout => \inst5|count[3]~41_combout\,
	cout => \inst5|count[3]~42\);

-- Location: FF_X17_Y9_N7
\inst5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[3]~41_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(3));

-- Location: LCCOMB_X17_Y9_N8
\inst5|count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[4]~43_combout\ = (\inst5|count\(4) & (!\inst5|count[3]~42\)) # (!\inst5|count\(4) & ((\inst5|count[3]~42\) # (GND)))
-- \inst5|count[4]~44\ = CARRY((!\inst5|count[3]~42\) # (!\inst5|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(4),
	datad => VCC,
	cin => \inst5|count[3]~42\,
	combout => \inst5|count[4]~43_combout\,
	cout => \inst5|count[4]~44\);

-- Location: FF_X17_Y9_N9
\inst5|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[4]~43_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(4));

-- Location: LCCOMB_X17_Y9_N10
\inst5|count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[5]~45_combout\ = (\inst5|count\(5) & (\inst5|count[4]~44\ $ (GND))) # (!\inst5|count\(5) & (!\inst5|count[4]~44\ & VCC))
-- \inst5|count[5]~46\ = CARRY((\inst5|count\(5) & !\inst5|count[4]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(5),
	datad => VCC,
	cin => \inst5|count[4]~44\,
	combout => \inst5|count[5]~45_combout\,
	cout => \inst5|count[5]~46\);

-- Location: FF_X17_Y9_N11
\inst5|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[5]~45_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(5));

-- Location: LCCOMB_X17_Y9_N12
\inst5|count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[6]~47_combout\ = (\inst5|count\(6) & (!\inst5|count[5]~46\)) # (!\inst5|count\(6) & ((\inst5|count[5]~46\) # (GND)))
-- \inst5|count[6]~48\ = CARRY((!\inst5|count[5]~46\) # (!\inst5|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(6),
	datad => VCC,
	cin => \inst5|count[5]~46\,
	combout => \inst5|count[6]~47_combout\,
	cout => \inst5|count[6]~48\);

-- Location: FF_X17_Y9_N13
\inst5|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[6]~47_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(6));

-- Location: LCCOMB_X17_Y9_N14
\inst5|count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[7]~49_combout\ = (\inst5|count\(7) & (\inst5|count[6]~48\ $ (GND))) # (!\inst5|count\(7) & (!\inst5|count[6]~48\ & VCC))
-- \inst5|count[7]~50\ = CARRY((\inst5|count\(7) & !\inst5|count[6]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(7),
	datad => VCC,
	cin => \inst5|count[6]~48\,
	combout => \inst5|count[7]~49_combout\,
	cout => \inst5|count[7]~50\);

-- Location: FF_X17_Y9_N15
\inst5|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[7]~49_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(7));

-- Location: LCCOMB_X17_Y9_N16
\inst5|count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[8]~51_combout\ = (\inst5|count\(8) & (!\inst5|count[7]~50\)) # (!\inst5|count\(8) & ((\inst5|count[7]~50\) # (GND)))
-- \inst5|count[8]~52\ = CARRY((!\inst5|count[7]~50\) # (!\inst5|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(8),
	datad => VCC,
	cin => \inst5|count[7]~50\,
	combout => \inst5|count[8]~51_combout\,
	cout => \inst5|count[8]~52\);

-- Location: FF_X17_Y9_N17
\inst5|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[8]~51_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(8));

-- Location: LCCOMB_X17_Y9_N18
\inst5|count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[9]~53_combout\ = (\inst5|count\(9) & (\inst5|count[8]~52\ $ (GND))) # (!\inst5|count\(9) & (!\inst5|count[8]~52\ & VCC))
-- \inst5|count[9]~54\ = CARRY((\inst5|count\(9) & !\inst5|count[8]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(9),
	datad => VCC,
	cin => \inst5|count[8]~52\,
	combout => \inst5|count[9]~53_combout\,
	cout => \inst5|count[9]~54\);

-- Location: FF_X17_Y9_N19
\inst5|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[9]~53_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(9));

-- Location: LCCOMB_X17_Y9_N20
\inst5|count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[10]~55_combout\ = (\inst5|count\(10) & (!\inst5|count[9]~54\)) # (!\inst5|count\(10) & ((\inst5|count[9]~54\) # (GND)))
-- \inst5|count[10]~56\ = CARRY((!\inst5|count[9]~54\) # (!\inst5|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(10),
	datad => VCC,
	cin => \inst5|count[9]~54\,
	combout => \inst5|count[10]~55_combout\,
	cout => \inst5|count[10]~56\);

-- Location: FF_X17_Y9_N21
\inst5|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[10]~55_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(10));

-- Location: LCCOMB_X17_Y9_N22
\inst5|count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[11]~57_combout\ = (\inst5|count\(11) & (\inst5|count[10]~56\ $ (GND))) # (!\inst5|count\(11) & (!\inst5|count[10]~56\ & VCC))
-- \inst5|count[11]~58\ = CARRY((\inst5|count\(11) & !\inst5|count[10]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(11),
	datad => VCC,
	cin => \inst5|count[10]~56\,
	combout => \inst5|count[11]~57_combout\,
	cout => \inst5|count[11]~58\);

-- Location: FF_X17_Y9_N23
\inst5|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[11]~57_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(11));

-- Location: LCCOMB_X17_Y9_N24
\inst5|count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[12]~59_combout\ = (\inst5|count\(12) & (!\inst5|count[11]~58\)) # (!\inst5|count\(12) & ((\inst5|count[11]~58\) # (GND)))
-- \inst5|count[12]~60\ = CARRY((!\inst5|count[11]~58\) # (!\inst5|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(12),
	datad => VCC,
	cin => \inst5|count[11]~58\,
	combout => \inst5|count[12]~59_combout\,
	cout => \inst5|count[12]~60\);

-- Location: FF_X17_Y9_N25
\inst5|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[12]~59_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(12));

-- Location: LCCOMB_X17_Y9_N26
\inst5|count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[13]~61_combout\ = (\inst5|count\(13) & (\inst5|count[12]~60\ $ (GND))) # (!\inst5|count\(13) & (!\inst5|count[12]~60\ & VCC))
-- \inst5|count[13]~62\ = CARRY((\inst5|count\(13) & !\inst5|count[12]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(13),
	datad => VCC,
	cin => \inst5|count[12]~60\,
	combout => \inst5|count[13]~61_combout\,
	cout => \inst5|count[13]~62\);

-- Location: FF_X17_Y9_N27
\inst5|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[13]~61_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(13));

-- Location: LCCOMB_X17_Y9_N28
\inst5|count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[14]~63_combout\ = (\inst5|count\(14) & (!\inst5|count[13]~62\)) # (!\inst5|count\(14) & ((\inst5|count[13]~62\) # (GND)))
-- \inst5|count[14]~64\ = CARRY((!\inst5|count[13]~62\) # (!\inst5|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(14),
	datad => VCC,
	cin => \inst5|count[13]~62\,
	combout => \inst5|count[14]~63_combout\,
	cout => \inst5|count[14]~64\);

-- Location: FF_X17_Y9_N29
\inst5|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[14]~63_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(14));

-- Location: LCCOMB_X17_Y9_N30
\inst5|count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[15]~65_combout\ = (\inst5|count\(15) & (\inst5|count[14]~64\ $ (GND))) # (!\inst5|count\(15) & (!\inst5|count[14]~64\ & VCC))
-- \inst5|count[15]~66\ = CARRY((\inst5|count\(15) & !\inst5|count[14]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(15),
	datad => VCC,
	cin => \inst5|count[14]~64\,
	combout => \inst5|count[15]~65_combout\,
	cout => \inst5|count[15]~66\);

-- Location: FF_X17_Y9_N31
\inst5|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[15]~65_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(15));

-- Location: LCCOMB_X17_Y8_N0
\inst5|count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[16]~67_combout\ = (\inst5|count\(16) & (!\inst5|count[15]~66\)) # (!\inst5|count\(16) & ((\inst5|count[15]~66\) # (GND)))
-- \inst5|count[16]~68\ = CARRY((!\inst5|count[15]~66\) # (!\inst5|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(16),
	datad => VCC,
	cin => \inst5|count[15]~66\,
	combout => \inst5|count[16]~67_combout\,
	cout => \inst5|count[16]~68\);

-- Location: FF_X17_Y8_N1
\inst5|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[16]~67_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(16));

-- Location: LCCOMB_X17_Y8_N2
\inst5|count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[17]~69_combout\ = (\inst5|count\(17) & (\inst5|count[16]~68\ $ (GND))) # (!\inst5|count\(17) & (!\inst5|count[16]~68\ & VCC))
-- \inst5|count[17]~70\ = CARRY((\inst5|count\(17) & !\inst5|count[16]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(17),
	datad => VCC,
	cin => \inst5|count[16]~68\,
	combout => \inst5|count[17]~69_combout\,
	cout => \inst5|count[17]~70\);

-- Location: FF_X17_Y8_N3
\inst5|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[17]~69_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(17));

-- Location: LCCOMB_X17_Y8_N4
\inst5|count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[18]~71_combout\ = (\inst5|count\(18) & (!\inst5|count[17]~70\)) # (!\inst5|count\(18) & ((\inst5|count[17]~70\) # (GND)))
-- \inst5|count[18]~72\ = CARRY((!\inst5|count[17]~70\) # (!\inst5|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(18),
	datad => VCC,
	cin => \inst5|count[17]~70\,
	combout => \inst5|count[18]~71_combout\,
	cout => \inst5|count[18]~72\);

-- Location: FF_X17_Y8_N5
\inst5|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[18]~71_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(18));

-- Location: LCCOMB_X17_Y8_N6
\inst5|count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[19]~73_combout\ = (\inst5|count\(19) & (\inst5|count[18]~72\ $ (GND))) # (!\inst5|count\(19) & (!\inst5|count[18]~72\ & VCC))
-- \inst5|count[19]~74\ = CARRY((\inst5|count\(19) & !\inst5|count[18]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(19),
	datad => VCC,
	cin => \inst5|count[18]~72\,
	combout => \inst5|count[19]~73_combout\,
	cout => \inst5|count[19]~74\);

-- Location: FF_X17_Y8_N7
\inst5|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[19]~73_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(19));

-- Location: LCCOMB_X17_Y8_N8
\inst5|count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[20]~75_combout\ = (\inst5|count\(20) & (!\inst5|count[19]~74\)) # (!\inst5|count\(20) & ((\inst5|count[19]~74\) # (GND)))
-- \inst5|count[20]~76\ = CARRY((!\inst5|count[19]~74\) # (!\inst5|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(20),
	datad => VCC,
	cin => \inst5|count[19]~74\,
	combout => \inst5|count[20]~75_combout\,
	cout => \inst5|count[20]~76\);

-- Location: FF_X17_Y8_N9
\inst5|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[20]~75_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(20));

-- Location: LCCOMB_X17_Y8_N10
\inst5|count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[21]~77_combout\ = (\inst5|count\(21) & (\inst5|count[20]~76\ $ (GND))) # (!\inst5|count\(21) & (!\inst5|count[20]~76\ & VCC))
-- \inst5|count[21]~78\ = CARRY((\inst5|count\(21) & !\inst5|count[20]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(21),
	datad => VCC,
	cin => \inst5|count[20]~76\,
	combout => \inst5|count[21]~77_combout\,
	cout => \inst5|count[21]~78\);

-- Location: FF_X17_Y8_N11
\inst5|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[21]~77_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(21));

-- Location: LCCOMB_X17_Y8_N12
\inst5|count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[22]~79_combout\ = (\inst5|count\(22) & (!\inst5|count[21]~78\)) # (!\inst5|count\(22) & ((\inst5|count[21]~78\) # (GND)))
-- \inst5|count[22]~80\ = CARRY((!\inst5|count[21]~78\) # (!\inst5|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(22),
	datad => VCC,
	cin => \inst5|count[21]~78\,
	combout => \inst5|count[22]~79_combout\,
	cout => \inst5|count[22]~80\);

-- Location: FF_X17_Y8_N13
\inst5|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[22]~79_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(22));

-- Location: LCCOMB_X17_Y8_N14
\inst5|count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[23]~81_combout\ = (\inst5|count\(23) & (\inst5|count[22]~80\ $ (GND))) # (!\inst5|count\(23) & (!\inst5|count[22]~80\ & VCC))
-- \inst5|count[23]~82\ = CARRY((\inst5|count\(23) & !\inst5|count[22]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(23),
	datad => VCC,
	cin => \inst5|count[22]~80\,
	combout => \inst5|count[23]~81_combout\,
	cout => \inst5|count[23]~82\);

-- Location: FF_X17_Y8_N15
\inst5|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[23]~81_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(23));

-- Location: LCCOMB_X17_Y8_N16
\inst5|count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[24]~83_combout\ = (\inst5|count\(24) & (!\inst5|count[23]~82\)) # (!\inst5|count\(24) & ((\inst5|count[23]~82\) # (GND)))
-- \inst5|count[24]~84\ = CARRY((!\inst5|count[23]~82\) # (!\inst5|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(24),
	datad => VCC,
	cin => \inst5|count[23]~82\,
	combout => \inst5|count[24]~83_combout\,
	cout => \inst5|count[24]~84\);

-- Location: FF_X17_Y8_N17
\inst5|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[24]~83_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(24));

-- Location: LCCOMB_X17_Y8_N18
\inst5|count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[25]~85_combout\ = (\inst5|count\(25) & (\inst5|count[24]~84\ $ (GND))) # (!\inst5|count\(25) & (!\inst5|count[24]~84\ & VCC))
-- \inst5|count[25]~86\ = CARRY((\inst5|count\(25) & !\inst5|count[24]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(25),
	datad => VCC,
	cin => \inst5|count[24]~84\,
	combout => \inst5|count[25]~85_combout\,
	cout => \inst5|count[25]~86\);

-- Location: FF_X17_Y8_N19
\inst5|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[25]~85_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(25));

-- Location: LCCOMB_X17_Y8_N20
\inst5|count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[26]~87_combout\ = (\inst5|count\(26) & (!\inst5|count[25]~86\)) # (!\inst5|count\(26) & ((\inst5|count[25]~86\) # (GND)))
-- \inst5|count[26]~88\ = CARRY((!\inst5|count[25]~86\) # (!\inst5|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(26),
	datad => VCC,
	cin => \inst5|count[25]~86\,
	combout => \inst5|count[26]~87_combout\,
	cout => \inst5|count[26]~88\);

-- Location: FF_X17_Y8_N21
\inst5|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[26]~87_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(26));

-- Location: LCCOMB_X17_Y8_N22
\inst5|count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[27]~89_combout\ = (\inst5|count\(27) & (\inst5|count[26]~88\ $ (GND))) # (!\inst5|count\(27) & (!\inst5|count[26]~88\ & VCC))
-- \inst5|count[27]~90\ = CARRY((\inst5|count\(27) & !\inst5|count[26]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(27),
	datad => VCC,
	cin => \inst5|count[26]~88\,
	combout => \inst5|count[27]~89_combout\,
	cout => \inst5|count[27]~90\);

-- Location: FF_X17_Y8_N23
\inst5|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[27]~89_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(27));

-- Location: LCCOMB_X17_Y8_N24
\inst5|count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[28]~91_combout\ = (\inst5|count\(28) & (!\inst5|count[27]~90\)) # (!\inst5|count\(28) & ((\inst5|count[27]~90\) # (GND)))
-- \inst5|count[28]~92\ = CARRY((!\inst5|count[27]~90\) # (!\inst5|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(28),
	datad => VCC,
	cin => \inst5|count[27]~90\,
	combout => \inst5|count[28]~91_combout\,
	cout => \inst5|count[28]~92\);

-- Location: FF_X17_Y8_N25
\inst5|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[28]~91_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(28));

-- Location: LCCOMB_X18_Y9_N22
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (!\inst5|count\(28) & (!\inst5|count\(27) & (!\inst5|count\(25) & !\inst5|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(28),
	datab => \inst5|count\(27),
	datac => \inst5|count\(25),
	datad => \inst5|count\(26),
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst5|count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[29]~93_combout\ = (\inst5|count\(29) & (\inst5|count[28]~92\ $ (GND))) # (!\inst5|count\(29) & (!\inst5|count[28]~92\ & VCC))
-- \inst5|count[29]~94\ = CARRY((\inst5|count\(29) & !\inst5|count[28]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(29),
	datad => VCC,
	cin => \inst5|count[28]~92\,
	combout => \inst5|count[29]~93_combout\,
	cout => \inst5|count[29]~94\);

-- Location: FF_X17_Y8_N27
\inst5|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[29]~93_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(29));

-- Location: LCCOMB_X17_Y8_N28
\inst5|count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[30]~95_combout\ = (\inst5|count\(30) & (!\inst5|count[29]~94\)) # (!\inst5|count\(30) & ((\inst5|count[29]~94\) # (GND)))
-- \inst5|count[30]~96\ = CARRY((!\inst5|count[29]~94\) # (!\inst5|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(30),
	datad => VCC,
	cin => \inst5|count[29]~94\,
	combout => \inst5|count[30]~95_combout\,
	cout => \inst5|count[30]~96\);

-- Location: FF_X17_Y8_N29
\inst5|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[30]~95_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(30));

-- Location: LCCOMB_X17_Y8_N30
\inst5|count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[31]~97_combout\ = \inst5|count\(31) $ (!\inst5|count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(31),
	cin => \inst5|count[30]~96\,
	combout => \inst5|count[31]~97_combout\);

-- Location: FF_X17_Y8_N31
\inst5|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \inst5|count[31]~97_combout\,
	clrn => \inst5|ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(31));

-- Location: LCCOMB_X18_Y8_N0
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (!\inst5|count[0]~33_combout\ & (!\inst5|count\(30) & (!\inst5|count\(29) & !\inst5|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count[0]~33_combout\,
	datab => \inst5|count\(30),
	datac => \inst5|count\(29),
	datad => \inst5|count\(31),
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|count\(12) & (!\inst5|count\(9) & (!\inst5|count\(11) & !\inst5|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(12),
	datab => \inst5|count\(9),
	datac => \inst5|count\(11),
	datad => \inst5|count\(10),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y9_N20
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|count\(3) & (!\inst5|count\(2) & (!\inst5|count\(1) & !\inst5|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(3),
	datab => \inst5|count\(2),
	datac => \inst5|count\(1),
	datad => \inst5|count\(4),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y9_N4
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (\inst5|count\(7) & (!\inst5|count\(6) & (\inst5|count\(8) & \inst5|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(7),
	datab => \inst5|count\(6),
	datac => \inst5|count\(8),
	datad => \inst5|count\(5),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|count\(16) & (!\inst5|count\(15) & (\inst5|count\(13) & \inst5|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(16),
	datab => \inst5|count\(15),
	datac => \inst5|count\(13),
	datad => \inst5|count\(14),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y9_N8
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~2_combout\ & (\inst5|Equal0~0_combout\ & (\inst5|Equal0~1_combout\ & \inst5|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~2_combout\,
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|Equal0~1_combout\,
	datad => \inst5|Equal0~3_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y9_N14
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|count\(18) & (!\inst5|count\(20) & (!\inst5|count\(17) & !\inst5|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(18),
	datab => \inst5|count\(20),
	datac => \inst5|count\(17),
	datad => \inst5|count\(19),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|count\(22) & !\inst5|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|count\(22),
	datad => \inst5|count\(21),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|count\(23) & (!\inst5|count\(24) & (\inst5|Equal0~5_combout\ & \inst5|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(23),
	datab => \inst5|count\(24),
	datac => \inst5|Equal0~5_combout\,
	datad => \inst5|Equal0~6_combout\,
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y9_N12
\inst5|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~10_combout\ = (\inst5|Equal0~8_combout\ & (\inst5|Equal0~9_combout\ & (\inst5|Equal0~4_combout\ & \inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~8_combout\,
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|Equal0~10_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst5|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|tmp~0_combout\ = (\inst5|tmp~combout\) # (!\inst5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~10_combout\,
	datac => \inst5|tmp~combout\,
	combout => \inst5|tmp~0_combout\);

-- Location: LCCOMB_X18_Y9_N30
\inst5|tmp\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|tmp~combout\ = (\inst5|tmp~1_combout\ & ((!\inst5|tmp~0_combout\))) # (!\inst5|tmp~1_combout\ & (\inst5|tmp~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tmp~combout\,
	datac => \inst5|tmp~0_combout\,
	datad => \inst5|tmp~1_combout\,
	combout => \inst5|tmp~combout\);

-- Location: IOIBUF_X0_Y8_N22
\in_pwm~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_pwm,
	o => \in_pwm~input_o\);

-- Location: LCCOMB_X1_Y8_N6
\inst6|e_signal_compteur\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|e_signal_compteur~combout\ = LCELL((\inst5|tmp~combout\ & \in_pwm~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|tmp~combout\,
	datad => \in_pwm~input_o\,
	combout => \inst6|e_signal_compteur~combout\);

-- Location: CLKCTRL_G2
\inst6|e_signal_compteur~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|e_signal_compteur~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|e_signal_compteur~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y5_N30
\inst1|angle_front[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[0]~24_combout\ = !\inst1|angle_front\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|angle_front\(0),
	combout => \inst1|angle_front[0]~24_combout\);

-- Location: LCCOMB_X1_Y5_N24
\inst1|compteur_out_angle[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|compteur_out_angle[8]~0_combout\ = (\in_pwm~input_o\ & \RAZ_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_pwm~input_o\,
	datab => \RAZ_N~input_o\,
	combout => \inst1|compteur_out_angle[8]~0_combout\);

-- Location: FF_X1_Y5_N31
\inst1|angle_front[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[0]~24_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(0));

-- Location: LCCOMB_X1_Y5_N0
\inst1|angle_front[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[1]~8_combout\ = (\inst1|angle_front\(0) & (\inst1|angle_front\(1) $ (VCC))) # (!\inst1|angle_front\(0) & (\inst1|angle_front\(1) & VCC))
-- \inst1|angle_front[1]~9\ = CARRY((\inst1|angle_front\(0) & \inst1|angle_front\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|angle_front\(0),
	datab => \inst1|angle_front\(1),
	datad => VCC,
	combout => \inst1|angle_front[1]~8_combout\,
	cout => \inst1|angle_front[1]~9\);

-- Location: FF_X1_Y5_N1
\inst1|angle_front[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[1]~8_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(1));

-- Location: LCCOMB_X1_Y5_N2
\inst1|angle_front[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[2]~10_combout\ = (\inst1|angle_front\(2) & (!\inst1|angle_front[1]~9\)) # (!\inst1|angle_front\(2) & ((\inst1|angle_front[1]~9\) # (GND)))
-- \inst1|angle_front[2]~11\ = CARRY((!\inst1|angle_front[1]~9\) # (!\inst1|angle_front\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|angle_front\(2),
	datad => VCC,
	cin => \inst1|angle_front[1]~9\,
	combout => \inst1|angle_front[2]~10_combout\,
	cout => \inst1|angle_front[2]~11\);

-- Location: FF_X1_Y5_N3
\inst1|angle_front[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[2]~10_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(2));

-- Location: LCCOMB_X1_Y5_N4
\inst1|angle_front[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[3]~12_combout\ = (\inst1|angle_front\(3) & (\inst1|angle_front[2]~11\ $ (GND))) # (!\inst1|angle_front\(3) & (!\inst1|angle_front[2]~11\ & VCC))
-- \inst1|angle_front[3]~13\ = CARRY((\inst1|angle_front\(3) & !\inst1|angle_front[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|angle_front\(3),
	datad => VCC,
	cin => \inst1|angle_front[2]~11\,
	combout => \inst1|angle_front[3]~12_combout\,
	cout => \inst1|angle_front[3]~13\);

-- Location: FF_X1_Y5_N5
\inst1|angle_front[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[3]~12_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(3));

-- Location: LCCOMB_X1_Y5_N6
\inst1|angle_front[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[4]~14_combout\ = (\inst1|angle_front\(4) & (!\inst1|angle_front[3]~13\)) # (!\inst1|angle_front\(4) & ((\inst1|angle_front[3]~13\) # (GND)))
-- \inst1|angle_front[4]~15\ = CARRY((!\inst1|angle_front[3]~13\) # (!\inst1|angle_front\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|angle_front\(4),
	datad => VCC,
	cin => \inst1|angle_front[3]~13\,
	combout => \inst1|angle_front[4]~14_combout\,
	cout => \inst1|angle_front[4]~15\);

-- Location: FF_X1_Y5_N7
\inst1|angle_front[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[4]~14_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(4));

-- Location: LCCOMB_X1_Y5_N8
\inst1|angle_front[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[5]~16_combout\ = (\inst1|angle_front\(5) & (\inst1|angle_front[4]~15\ $ (GND))) # (!\inst1|angle_front\(5) & (!\inst1|angle_front[4]~15\ & VCC))
-- \inst1|angle_front[5]~17\ = CARRY((\inst1|angle_front\(5) & !\inst1|angle_front[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|angle_front\(5),
	datad => VCC,
	cin => \inst1|angle_front[4]~15\,
	combout => \inst1|angle_front[5]~16_combout\,
	cout => \inst1|angle_front[5]~17\);

-- Location: FF_X1_Y5_N9
\inst1|angle_front[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[5]~16_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(5));

-- Location: LCCOMB_X1_Y5_N10
\inst1|angle_front[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[6]~18_combout\ = (\inst1|angle_front\(6) & (!\inst1|angle_front[5]~17\)) # (!\inst1|angle_front\(6) & ((\inst1|angle_front[5]~17\) # (GND)))
-- \inst1|angle_front[6]~19\ = CARRY((!\inst1|angle_front[5]~17\) # (!\inst1|angle_front\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|angle_front\(6),
	datad => VCC,
	cin => \inst1|angle_front[5]~17\,
	combout => \inst1|angle_front[6]~18_combout\,
	cout => \inst1|angle_front[6]~19\);

-- Location: FF_X1_Y5_N11
\inst1|angle_front[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[6]~18_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(6));

-- Location: LCCOMB_X1_Y5_N12
\inst1|angle_front[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[7]~20_combout\ = (\inst1|angle_front\(7) & (\inst1|angle_front[6]~19\ $ (GND))) # (!\inst1|angle_front\(7) & (!\inst1|angle_front[6]~19\ & VCC))
-- \inst1|angle_front[7]~21\ = CARRY((\inst1|angle_front\(7) & !\inst1|angle_front[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|angle_front\(7),
	datad => VCC,
	cin => \inst1|angle_front[6]~19\,
	combout => \inst1|angle_front[7]~20_combout\,
	cout => \inst1|angle_front[7]~21\);

-- Location: FF_X1_Y5_N13
\inst1|angle_front[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[7]~20_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(7));

-- Location: LCCOMB_X1_Y5_N14
\inst1|angle_front[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|angle_front[8]~22_combout\ = \inst1|angle_front\(8) $ (\inst1|angle_front[7]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|angle_front\(8),
	cin => \inst1|angle_front[7]~21\,
	combout => \inst1|angle_front[8]~22_combout\);

-- Location: FF_X1_Y5_N15
\inst1|angle_front[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	d => \inst1|angle_front[8]~22_combout\,
	clrn => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|angle_front\(8));

-- Location: FF_X1_Y5_N21
\inst1|compteur_out_angle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(8),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(8));

-- Location: LCCOMB_X1_Y5_N20
\inst|data_compas[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[8]~0_combout\ = (\inst1|compteur_out_angle\(8) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(8),
	datad => \continu~input_o\,
	combout => \inst|data_compas[8]~0_combout\);

-- Location: FF_X2_Y5_N11
\inst1|compteur_out_angle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(7),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(7));

-- Location: LCCOMB_X2_Y5_N10
\inst|data_compas[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[7]~1_combout\ = (\inst1|compteur_out_angle\(7) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(7),
	datad => \continu~input_o\,
	combout => \inst|data_compas[7]~1_combout\);

-- Location: FF_X1_Y5_N27
\inst1|compteur_out_angle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(6),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(6));

-- Location: LCCOMB_X1_Y5_N26
\inst|data_compas[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[6]~2_combout\ = (\inst1|compteur_out_angle\(6) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(6),
	datad => \continu~input_o\,
	combout => \inst|data_compas[6]~2_combout\);

-- Location: FF_X1_Y5_N17
\inst1|compteur_out_angle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(5),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(5));

-- Location: LCCOMB_X1_Y5_N16
\inst|data_compas[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[5]~3_combout\ = (\inst1|compteur_out_angle\(5) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(5),
	datad => \continu~input_o\,
	combout => \inst|data_compas[5]~3_combout\);

-- Location: FF_X1_Y5_N29
\inst1|compteur_out_angle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(4),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(4));

-- Location: LCCOMB_X1_Y5_N28
\inst|data_compas[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[4]~4_combout\ = (\inst1|compteur_out_angle\(4) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(4),
	datad => \continu~input_o\,
	combout => \inst|data_compas[4]~4_combout\);

-- Location: FF_X1_Y5_N23
\inst1|compteur_out_angle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(3),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(3));

-- Location: LCCOMB_X1_Y5_N22
\inst|data_compas[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[3]~5_combout\ = (\inst1|compteur_out_angle\(3) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(3),
	datad => \continu~input_o\,
	combout => \inst|data_compas[3]~5_combout\);

-- Location: FF_X1_Y5_N25
\inst1|compteur_out_angle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(2),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(2));

-- Location: LCCOMB_X2_Y5_N0
\inst|data_compas[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[2]~6_combout\ = (\inst1|compteur_out_angle\(2) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|compteur_out_angle\(2),
	datac => \start_stop~input_o\,
	datad => \continu~input_o\,
	combout => \inst|data_compas[2]~6_combout\);

-- Location: FF_X1_Y5_N19
\inst1|compteur_out_angle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(1),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(1));

-- Location: LCCOMB_X1_Y5_N18
\inst|data_compas[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[1]~7_combout\ = (\inst1|compteur_out_angle\(1) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(1),
	datad => \continu~input_o\,
	combout => \inst|data_compas[1]~7_combout\);

-- Location: FF_X2_Y5_N31
\inst1|compteur_out_angle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|e_signal_compteur~clkctrl_outclk\,
	asdata => \inst1|angle_front\(0),
	sload => VCC,
	ena => \inst1|compteur_out_angle[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|compteur_out_angle\(0));

-- Location: LCCOMB_X2_Y5_N30
\inst|data_compas[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_compas[0]~8_combout\ = (\inst1|compteur_out_angle\(0) & ((\continu~input_o\) # (!\start_stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \inst1|compteur_out_angle\(0),
	datad => \continu~input_o\,
	combout => \inst|data_compas[0]~8_combout\);

ww_data_valid <= \data_valid~output_o\;

ww_data_compas(8) <= \data_compas[8]~output_o\;

ww_data_compas(7) <= \data_compas[7]~output_o\;

ww_data_compas(6) <= \data_compas[6]~output_o\;

ww_data_compas(5) <= \data_compas[5]~output_o\;

ww_data_compas(4) <= \data_compas[4]~output_o\;

ww_data_compas(3) <= \data_compas[3]~output_o\;

ww_data_compas(2) <= \data_compas[2]~output_o\;

ww_data_compas(1) <= \data_compas[1]~output_o\;

ww_data_compas(0) <= \data_compas[0]~output_o\;
END structure;


