-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "01/31/2020 09:36:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	RED : OUT std_logic;
	YELLOW : OUT std_logic;
	GREEN : OUT std_logic
	);
END main;

-- Design Ports Information
-- RED	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YELLOW	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_RED : std_logic;
SIGNAL ww_YELLOW : std_logic;
SIGNAL ww_GREEN : std_logic;
SIGNAL \fsm|Mux4~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_component|WAIT_TIME[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_component|Add0~0_combout\ : std_logic;
SIGNAL \clk_component|Add0~3_combout\ : std_logic;
SIGNAL \clk_component|Add0~6_combout\ : std_logic;
SIGNAL \clk_component|Add0~12_combout\ : std_logic;
SIGNAL \clk_component|Add0~14_combout\ : std_logic;
SIGNAL \clk_component|Add0~16_combout\ : std_logic;
SIGNAL \clk_component|Add0~24_combout\ : std_logic;
SIGNAL \clk_component|Add0~36_combout\ : std_logic;
SIGNAL \clk_component|Add0~60_combout\ : std_logic;
SIGNAL \clk_component|Add0~64_combout\ : std_logic;
SIGNAL \clk_component|Equal0~3_combout\ : std_logic;
SIGNAL \clk_component|Add0~19_combout\ : std_logic;
SIGNAL \clk_component|Add0~38_combout\ : std_logic;
SIGNAL \clk_component|Add0~73_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \RED~output_o\ : std_logic;
SIGNAL \YELLOW~output_o\ : std_logic;
SIGNAL \GREEN~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk_component|running~0_combout\ : std_logic;
SIGNAL \clk_component|Add0~2_combout\ : std_logic;
SIGNAL \clk_component|Add0~8_combout\ : std_logic;
SIGNAL \clk_component|Add0~1\ : std_logic;
SIGNAL \clk_component|Add0~4\ : std_logic;
SIGNAL \clk_component|Add0~7\ : std_logic;
SIGNAL \clk_component|Add0~9_combout\ : std_logic;
SIGNAL \clk_component|Add0~11_combout\ : std_logic;
SIGNAL \clk_component|Add0~5_combout\ : std_logic;
SIGNAL \clk_component|Equal0~0_combout\ : std_logic;
SIGNAL \clk_component|Add0~33_combout\ : std_logic;
SIGNAL \clk_component|Add0~18_combout\ : std_logic;
SIGNAL \clk_component|Add0~10\ : std_logic;
SIGNAL \clk_component|Add0~13\ : std_logic;
SIGNAL \clk_component|Add0~15\ : std_logic;
SIGNAL \clk_component|Add0~17\ : std_logic;
SIGNAL \clk_component|Add0~21_combout\ : std_logic;
SIGNAL \clk_component|Add0~23_combout\ : std_logic;
SIGNAL \clk_component|Add0~22\ : std_logic;
SIGNAL \clk_component|Add0~25\ : std_logic;
SIGNAL \clk_component|Add0~27\ : std_logic;
SIGNAL \clk_component|Add0~28_combout\ : std_logic;
SIGNAL \clk_component|Add0~35_combout\ : std_logic;
SIGNAL \clk_component|Add0~29\ : std_logic;
SIGNAL \clk_component|Add0~30_combout\ : std_logic;
SIGNAL \clk_component|Add0~32_combout\ : std_logic;
SIGNAL \clk_component|Add0~26_combout\ : std_logic;
SIGNAL \clk_component|Add0~34_combout\ : std_logic;
SIGNAL \clk_component|Equal0~2_combout\ : std_logic;
SIGNAL \clk_component|Add0~20_combout\ : std_logic;
SIGNAL \clk_component|Equal0~1_combout\ : std_logic;
SIGNAL \clk_component|Equal0~4_combout\ : std_logic;
SIGNAL \clk_component|Add0~31\ : std_logic;
SIGNAL \clk_component|Add0~37\ : std_logic;
SIGNAL \clk_component|Add0~39_combout\ : std_logic;
SIGNAL \clk_component|Add0~41_combout\ : std_logic;
SIGNAL \clk_component|Add0~40\ : std_logic;
SIGNAL \clk_component|Add0~42_combout\ : std_logic;
SIGNAL \clk_component|Add0~44_combout\ : std_logic;
SIGNAL \clk_component|Add0~43\ : std_logic;
SIGNAL \clk_component|Add0~45_combout\ : std_logic;
SIGNAL \clk_component|Add0~47_combout\ : std_logic;
SIGNAL \clk_component|Add0~46\ : std_logic;
SIGNAL \clk_component|Add0~48_combout\ : std_logic;
SIGNAL \clk_component|Add0~50_combout\ : std_logic;
SIGNAL \clk_component|Add0~49\ : std_logic;
SIGNAL \clk_component|Add0~51_combout\ : std_logic;
SIGNAL \clk_component|Add0~59_combout\ : std_logic;
SIGNAL \clk_component|Add0~52\ : std_logic;
SIGNAL \clk_component|Add0~53_combout\ : std_logic;
SIGNAL \clk_component|Add0~55_combout\ : std_logic;
SIGNAL \clk_component|Add0~54\ : std_logic;
SIGNAL \clk_component|Add0~56_combout\ : std_logic;
SIGNAL \clk_component|Add0~58_combout\ : std_logic;
SIGNAL \clk_component|Equal0~5_combout\ : std_logic;
SIGNAL \clk_component|Equal0~7_combout\ : std_logic;
SIGNAL \clk_component|WAIT_TIME[0]~2_combout\ : std_logic;
SIGNAL \clk_component|WAIT_TIME[1]~1_combout\ : std_logic;
SIGNAL \clk_component|WAIT_TIME[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \clk_component|WAIT_TIME[1]~0_combout\ : std_logic;
SIGNAL \clk_component|Equal1~0_combout\ : std_logic;
SIGNAL \clk_component|running~1_combout\ : std_logic;
SIGNAL \clk_component|running~q\ : std_logic;
SIGNAL \clk_component|Q[0]~0_combout\ : std_logic;
SIGNAL \clk_component|Add0~71_combout\ : std_logic;
SIGNAL \clk_component|Add0~57\ : std_logic;
SIGNAL \clk_component|Add0~61\ : std_logic;
SIGNAL \clk_component|Add0~62_combout\ : std_logic;
SIGNAL \clk_component|Add0~72_combout\ : std_logic;
SIGNAL \clk_component|Add0~63\ : std_logic;
SIGNAL \clk_component|Add0~65\ : std_logic;
SIGNAL \clk_component|Add0~66_combout\ : std_logic;
SIGNAL \clk_component|Add0~74_combout\ : std_logic;
SIGNAL \clk_component|Equal0~6_combout\ : std_logic;
SIGNAL \clk_component|Add0~67\ : std_logic;
SIGNAL \clk_component|Add0~68_combout\ : std_logic;
SIGNAL \clk_component|Add0~70_combout\ : std_logic;
SIGNAL \clk_component|Equal0~8_combout\ : std_logic;
SIGNAL \clk_component|Add1~1_combout\ : std_logic;
SIGNAL \clk_component|WAIT_TIME[3]~4_combout\ : std_logic;
SIGNAL \fsm|Mux2~0_combout\ : std_logic;
SIGNAL \clk_component|Add1~0_combout\ : std_logic;
SIGNAL \clk_component|WAIT_TIME[2]~3_combout\ : std_logic;
SIGNAL \clk_component|Z~0_combout\ : std_logic;
SIGNAL \clk_component|pulse~combout\ : std_logic;
SIGNAL \fsm|Mux3~6_combout\ : std_logic;
SIGNAL \fsm|Mux2~1_combout\ : std_logic;
SIGNAL \fsm|Mux3~5_combout\ : std_logic;
SIGNAL \fsm|Mux4~2_combout\ : std_logic;
SIGNAL \fsm|Mux4~2clkctrl_outclk\ : std_logic;
SIGNAL \clk_component|Z~1_combout\ : std_logic;
SIGNAL \fsm|Mux3~7_combout\ : std_logic;
SIGNAL \fsm|Mux3~4_combout\ : std_logic;
SIGNAL \fsm|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|Mux1~0_combout\ : std_logic;
SIGNAL \clk_component|WAIT_TIME\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_component|Q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \fsm|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fsm|ns\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk_component|ALT_INV_running~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_state\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
RED <= ww_RED;
YELLOW <= ww_YELLOW;
GREEN <= ww_GREEN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fsm|Mux4~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|Mux4~2_combout\);

\clk_component|WAIT_TIME[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_component|WAIT_TIME[1]~1_combout\);
\clk_component|ALT_INV_running~1_combout\ <= NOT \clk_component|running~1_combout\;
\fsm|ALT_INV_state\(1) <= NOT \fsm|state\(1);

-- Location: LCCOMB_X113_Y41_N8
\clk_component|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~0_combout\ = \clk_component|Q\(0) $ (VCC)
-- \clk_component|Add0~1\ = CARRY(\clk_component|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(0),
	datad => VCC,
	combout => \clk_component|Add0~0_combout\,
	cout => \clk_component|Add0~1\);

-- Location: LCCOMB_X113_Y41_N10
\clk_component|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~3_combout\ = (\clk_component|Q\(1) & (!\clk_component|Add0~1\)) # (!\clk_component|Q\(1) & ((\clk_component|Add0~1\) # (GND)))
-- \clk_component|Add0~4\ = CARRY((!\clk_component|Add0~1\) # (!\clk_component|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(1),
	datad => VCC,
	cin => \clk_component|Add0~1\,
	combout => \clk_component|Add0~3_combout\,
	cout => \clk_component|Add0~4\);

-- Location: LCCOMB_X113_Y41_N12
\clk_component|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~6_combout\ = (\clk_component|Q\(2) & (\clk_component|Add0~4\ $ (GND))) # (!\clk_component|Q\(2) & (!\clk_component|Add0~4\ & VCC))
-- \clk_component|Add0~7\ = CARRY((\clk_component|Q\(2) & !\clk_component|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(2),
	datad => VCC,
	cin => \clk_component|Add0~4\,
	combout => \clk_component|Add0~6_combout\,
	cout => \clk_component|Add0~7\);

-- Location: LCCOMB_X113_Y41_N16
\clk_component|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~12_combout\ = (\clk_component|Q\(4) & (\clk_component|Add0~10\ $ (GND))) # (!\clk_component|Q\(4) & (!\clk_component|Add0~10\ & VCC))
-- \clk_component|Add0~13\ = CARRY((\clk_component|Q\(4) & !\clk_component|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(4),
	datad => VCC,
	cin => \clk_component|Add0~10\,
	combout => \clk_component|Add0~12_combout\,
	cout => \clk_component|Add0~13\);

-- Location: LCCOMB_X113_Y41_N18
\clk_component|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~14_combout\ = (\clk_component|Q\(5) & (!\clk_component|Add0~13\)) # (!\clk_component|Q\(5) & ((\clk_component|Add0~13\) # (GND)))
-- \clk_component|Add0~15\ = CARRY((!\clk_component|Add0~13\) # (!\clk_component|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(5),
	datad => VCC,
	cin => \clk_component|Add0~13\,
	combout => \clk_component|Add0~14_combout\,
	cout => \clk_component|Add0~15\);

-- Location: LCCOMB_X113_Y41_N20
\clk_component|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~16_combout\ = (\clk_component|Q\(6) & (\clk_component|Add0~15\ $ (GND))) # (!\clk_component|Q\(6) & (!\clk_component|Add0~15\ & VCC))
-- \clk_component|Add0~17\ = CARRY((\clk_component|Q\(6) & !\clk_component|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(6),
	datad => VCC,
	cin => \clk_component|Add0~15\,
	combout => \clk_component|Add0~16_combout\,
	cout => \clk_component|Add0~17\);

-- Location: LCCOMB_X113_Y41_N24
\clk_component|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~24_combout\ = (\clk_component|Q\(8) & (\clk_component|Add0~22\ $ (GND))) # (!\clk_component|Q\(8) & (!\clk_component|Add0~22\ & VCC))
-- \clk_component|Add0~25\ = CARRY((\clk_component|Q\(8) & !\clk_component|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(8),
	datad => VCC,
	cin => \clk_component|Add0~22\,
	combout => \clk_component|Add0~24_combout\,
	cout => \clk_component|Add0~25\);

-- Location: LCCOMB_X113_Y40_N0
\clk_component|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~36_combout\ = (\clk_component|Q\(12) & (\clk_component|Add0~31\ $ (GND))) # (!\clk_component|Q\(12) & (!\clk_component|Add0~31\ & VCC))
-- \clk_component|Add0~37\ = CARRY((\clk_component|Q\(12) & !\clk_component|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(12),
	datad => VCC,
	cin => \clk_component|Add0~31\,
	combout => \clk_component|Add0~36_combout\,
	cout => \clk_component|Add0~37\);

-- Location: LCCOMB_X113_Y40_N16
\clk_component|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~60_combout\ = (\clk_component|Q\(20) & (\clk_component|Add0~57\ $ (GND))) # (!\clk_component|Q\(20) & (!\clk_component|Add0~57\ & VCC))
-- \clk_component|Add0~61\ = CARRY((\clk_component|Q\(20) & !\clk_component|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(20),
	datad => VCC,
	cin => \clk_component|Add0~57\,
	combout => \clk_component|Add0~60_combout\,
	cout => \clk_component|Add0~61\);

-- Location: LCCOMB_X113_Y40_N20
\clk_component|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~64_combout\ = (\clk_component|Q\(22) & (\clk_component|Add0~63\ $ (GND))) # (!\clk_component|Q\(22) & (!\clk_component|Add0~63\ & VCC))
-- \clk_component|Add0~65\ = CARRY((\clk_component|Q\(22) & !\clk_component|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(22),
	datad => VCC,
	cin => \clk_component|Add0~63\,
	combout => \clk_component|Add0~64_combout\,
	cout => \clk_component|Add0~65\);

-- Location: LCCOMB_X114_Y39_N12
\clk_component|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~3_combout\ = (\clk_component|Q\(14) & (\clk_component|Q\(13) & (!\clk_component|Q\(15) & \clk_component|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(14),
	datab => \clk_component|Q\(13),
	datac => \clk_component|Q\(15),
	datad => \clk_component|Q\(12),
	combout => \clk_component|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y41_N6
\clk_component|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~19_combout\ = (\clk_component|Add0~12_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~12_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~19_combout\);

-- Location: LCCOMB_X114_Y39_N10
\clk_component|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~38_combout\ = (\clk_component|Add0~36_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~4_combout\,
	datab => \clk_component|Add0~36_combout\,
	datac => \reset~input_o\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~38_combout\);

-- Location: LCCOMB_X114_Y40_N28
\clk_component|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~73_combout\ = (!\clk_component|Equal0~7_combout\ & (\clk_component|Add0~64_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Equal0~7_combout\,
	datac => \clk_component|Add0~64_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~73_combout\);

-- Location: LCCOMB_X114_Y39_N28
\clk_component|Q[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(12) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~38_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(12),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~38_combout\,
	combout => \clk_component|Q\(12));

-- Location: LCCOMB_X114_Y40_N26
\clk_component|Q[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(22) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~73_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(22),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~73_combout\,
	combout => \clk_component|Q\(22));

-- Location: IOIBUF_X115_Y53_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOOBUF_X83_Y73_N2
\RED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_state\(1),
	devoe => ww_devoe,
	o => \RED~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\YELLOW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \YELLOW~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\GREEN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \GREEN~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X114_Y40_N8
\clk_component|running~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|running~0_combout\ = (\clk~input_o\) # (\clk_component|running~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \clk_component|running~q\,
	combout => \clk_component|running~0_combout\);

-- Location: LCCOMB_X114_Y41_N24
\clk_component|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~2_combout\ = (\clk_component|Add0~0_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~0_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~2_combout\);

-- Location: LCCOMB_X114_Y41_N14
\clk_component|Q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(0) = (\clk_component|Q[0]~0_combout\ & (\clk_component|Add0~2_combout\)) # (!\clk_component|Q[0]~0_combout\ & ((\clk_component|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Add0~2_combout\,
	datac => \clk_component|Q\(0),
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(0));

-- Location: LCCOMB_X114_Y41_N4
\clk_component|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~8_combout\ = (\clk_component|Add0~6_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~6_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~8_combout\);

-- Location: LCCOMB_X113_Y41_N2
\clk_component|Q[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(2) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~8_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(2),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~8_combout\,
	combout => \clk_component|Q\(2));

-- Location: LCCOMB_X113_Y41_N14
\clk_component|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~9_combout\ = (\clk_component|Q\(3) & (!\clk_component|Add0~7\)) # (!\clk_component|Q\(3) & ((\clk_component|Add0~7\) # (GND)))
-- \clk_component|Add0~10\ = CARRY((!\clk_component|Add0~7\) # (!\clk_component|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(3),
	datad => VCC,
	cin => \clk_component|Add0~7\,
	combout => \clk_component|Add0~9_combout\,
	cout => \clk_component|Add0~10\);

-- Location: LCCOMB_X114_Y41_N22
\clk_component|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~11_combout\ = (\clk_component|Add0~9_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~8_combout\,
	datab => \clk_component|Add0~9_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~11_combout\);

-- Location: LCCOMB_X113_Y41_N4
\clk_component|Q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(3) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~11_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(3),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~11_combout\,
	combout => \clk_component|Q\(3));

-- Location: LCCOMB_X114_Y41_N2
\clk_component|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~5_combout\ = (\clk_component|Add0~3_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~3_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~5_combout\);

-- Location: LCCOMB_X114_Y41_N20
\clk_component|Q[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(1) = (\clk_component|Q[0]~0_combout\ & (\clk_component|Add0~5_combout\)) # (!\clk_component|Q[0]~0_combout\ & ((\clk_component|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Add0~5_combout\,
	datac => \clk_component|Q\(1),
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(1));

-- Location: LCCOMB_X114_Y41_N28
\clk_component|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~0_combout\ = (!\clk_component|Q\(2) & (!\clk_component|Q\(0) & (!\clk_component|Q\(3) & !\clk_component|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(2),
	datab => \clk_component|Q\(0),
	datac => \clk_component|Q\(3),
	datad => \clk_component|Q\(1),
	combout => \clk_component|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y41_N16
\clk_component|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~33_combout\ = (\clk_component|Add0~24_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~24_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~33_combout\);

-- Location: LCCOMB_X112_Y41_N24
\clk_component|Q[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(8) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~33_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(8),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~33_combout\,
	combout => \clk_component|Q\(8));

-- Location: LCCOMB_X114_Y41_N18
\clk_component|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~18_combout\ = (\clk_component|Add0~16_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~16_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~18_combout\);

-- Location: LCCOMB_X114_Y41_N16
\clk_component|Q[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(6) = (\clk_component|Q[0]~0_combout\ & (\clk_component|Add0~18_combout\)) # (!\clk_component|Q[0]~0_combout\ & ((\clk_component|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Add0~18_combout\,
	datac => \clk_component|Q\(6),
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(6));

-- Location: LCCOMB_X113_Y41_N22
\clk_component|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~21_combout\ = (\clk_component|Q\(7) & (!\clk_component|Add0~17\)) # (!\clk_component|Q\(7) & ((\clk_component|Add0~17\) # (GND)))
-- \clk_component|Add0~22\ = CARRY((!\clk_component|Add0~17\) # (!\clk_component|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(7),
	datad => VCC,
	cin => \clk_component|Add0~17\,
	combout => \clk_component|Add0~21_combout\,
	cout => \clk_component|Add0~22\);

-- Location: LCCOMB_X113_Y41_N0
\clk_component|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~23_combout\ = (\clk_component|Add0~21_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~8_combout\,
	datab => \clk_component|Equal0~4_combout\,
	datac => \clk_component|Add0~21_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~23_combout\);

-- Location: LCCOMB_X113_Y41_N6
\clk_component|Q[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(7) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~23_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(7),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~23_combout\,
	combout => \clk_component|Q\(7));

-- Location: LCCOMB_X113_Y41_N26
\clk_component|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~26_combout\ = (\clk_component|Q\(9) & (!\clk_component|Add0~25\)) # (!\clk_component|Q\(9) & ((\clk_component|Add0~25\) # (GND)))
-- \clk_component|Add0~27\ = CARRY((!\clk_component|Add0~25\) # (!\clk_component|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(9),
	datad => VCC,
	cin => \clk_component|Add0~25\,
	combout => \clk_component|Add0~26_combout\,
	cout => \clk_component|Add0~27\);

-- Location: LCCOMB_X113_Y41_N28
\clk_component|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~28_combout\ = (\clk_component|Q\(10) & (\clk_component|Add0~27\ $ (GND))) # (!\clk_component|Q\(10) & (!\clk_component|Add0~27\ & VCC))
-- \clk_component|Add0~29\ = CARRY((\clk_component|Q\(10) & !\clk_component|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(10),
	datad => VCC,
	cin => \clk_component|Add0~27\,
	combout => \clk_component|Add0~28_combout\,
	cout => \clk_component|Add0~29\);

-- Location: LCCOMB_X112_Y41_N20
\clk_component|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~35_combout\ = (\clk_component|Add0~28_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~8_combout\,
	datab => \clk_component|Add0~28_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~35_combout\);

-- Location: LCCOMB_X112_Y41_N30
\clk_component|Q[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(10) = (\clk_component|Q[0]~0_combout\ & (\clk_component|Add0~35_combout\)) # (!\clk_component|Q[0]~0_combout\ & ((\clk_component|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Add0~35_combout\,
	datac => \clk_component|Q\(10),
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(10));

-- Location: LCCOMB_X113_Y41_N30
\clk_component|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~30_combout\ = (\clk_component|Q\(11) & (!\clk_component|Add0~29\)) # (!\clk_component|Q\(11) & ((\clk_component|Add0~29\) # (GND)))
-- \clk_component|Add0~31\ = CARRY((!\clk_component|Add0~29\) # (!\clk_component|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(11),
	datad => VCC,
	cin => \clk_component|Add0~29\,
	combout => \clk_component|Add0~30_combout\,
	cout => \clk_component|Add0~31\);

-- Location: LCCOMB_X112_Y41_N28
\clk_component|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~32_combout\ = (\clk_component|Add0~30_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~8_combout\,
	datab => \clk_component|Add0~30_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~32_combout\);

-- Location: LCCOMB_X112_Y41_N22
\clk_component|Q[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(11) = (\clk_component|Q[0]~0_combout\ & (\clk_component|Add0~32_combout\)) # (!\clk_component|Q[0]~0_combout\ & ((\clk_component|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Add0~32_combout\,
	datac => \clk_component|Q\(11),
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(11));

-- Location: LCCOMB_X112_Y40_N14
\clk_component|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~34_combout\ = (!\reset~input_o\ & (\clk_component|Add0~26_combout\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \clk_component|Add0~26_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~34_combout\);

-- Location: LCCOMB_X112_Y40_N0
\clk_component|Q[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(9) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~34_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(9),
	datac => \clk_component|Add0~34_combout\,
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(9));

-- Location: LCCOMB_X112_Y41_N14
\clk_component|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~2_combout\ = (!\clk_component|Q\(10) & (!\clk_component|Q\(8) & (\clk_component|Q\(11) & !\clk_component|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(10),
	datab => \clk_component|Q\(8),
	datac => \clk_component|Q\(11),
	datad => \clk_component|Q\(9),
	combout => \clk_component|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y41_N26
\clk_component|Q[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(4) = (\clk_component|Q[0]~0_combout\ & (\clk_component|Add0~19_combout\)) # (!\clk_component|Q[0]~0_combout\ & ((\clk_component|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~19_combout\,
	datac => \clk_component|Q\(4),
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(4));

-- Location: LCCOMB_X114_Y41_N0
\clk_component|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~20_combout\ = (\clk_component|Add0~14_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~14_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~20_combout\);

-- Location: LCCOMB_X114_Y41_N12
\clk_component|Q[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(5) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~20_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(5),
	datab => \clk_component|Add0~20_combout\,
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(5));

-- Location: LCCOMB_X114_Y41_N10
\clk_component|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~1_combout\ = (\clk_component|Q\(6) & (!\clk_component|Q\(7) & (!\clk_component|Q\(4) & !\clk_component|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(6),
	datab => \clk_component|Q\(7),
	datac => \clk_component|Q\(4),
	datad => \clk_component|Q\(5),
	combout => \clk_component|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y41_N30
\clk_component|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~4_combout\ = (\clk_component|Equal0~3_combout\ & (\clk_component|Equal0~0_combout\ & (\clk_component|Equal0~2_combout\ & \clk_component|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~3_combout\,
	datab => \clk_component|Equal0~0_combout\,
	datac => \clk_component|Equal0~2_combout\,
	datad => \clk_component|Equal0~1_combout\,
	combout => \clk_component|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y40_N2
\clk_component|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~39_combout\ = (\clk_component|Q\(13) & (!\clk_component|Add0~37\)) # (!\clk_component|Q\(13) & ((\clk_component|Add0~37\) # (GND)))
-- \clk_component|Add0~40\ = CARRY((!\clk_component|Add0~37\) # (!\clk_component|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(13),
	datad => VCC,
	cin => \clk_component|Add0~37\,
	combout => \clk_component|Add0~39_combout\,
	cout => \clk_component|Add0~40\);

-- Location: LCCOMB_X114_Y39_N16
\clk_component|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~41_combout\ = (\clk_component|Add0~39_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~4_combout\,
	datab => \clk_component|Add0~39_combout\,
	datac => \reset~input_o\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~41_combout\);

-- Location: LCCOMB_X114_Y39_N8
\clk_component|Q[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(13) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~41_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(13),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~41_combout\,
	combout => \clk_component|Q\(13));

-- Location: LCCOMB_X113_Y40_N4
\clk_component|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~42_combout\ = (\clk_component|Q\(14) & (\clk_component|Add0~40\ $ (GND))) # (!\clk_component|Q\(14) & (!\clk_component|Add0~40\ & VCC))
-- \clk_component|Add0~43\ = CARRY((\clk_component|Q\(14) & !\clk_component|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(14),
	datad => VCC,
	cin => \clk_component|Add0~40\,
	combout => \clk_component|Add0~42_combout\,
	cout => \clk_component|Add0~43\);

-- Location: LCCOMB_X114_Y39_N24
\clk_component|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~44_combout\ = (\clk_component|Add0~42_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~4_combout\,
	datab => \clk_component|Add0~42_combout\,
	datac => \reset~input_o\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~44_combout\);

-- Location: LCCOMB_X114_Y39_N20
\clk_component|Q[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(14) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~44_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(14),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~44_combout\,
	combout => \clk_component|Q\(14));

-- Location: LCCOMB_X113_Y40_N6
\clk_component|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~45_combout\ = (\clk_component|Q\(15) & (!\clk_component|Add0~43\)) # (!\clk_component|Q\(15) & ((\clk_component|Add0~43\) # (GND)))
-- \clk_component|Add0~46\ = CARRY((!\clk_component|Add0~43\) # (!\clk_component|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(15),
	datad => VCC,
	cin => \clk_component|Add0~43\,
	combout => \clk_component|Add0~45_combout\,
	cout => \clk_component|Add0~46\);

-- Location: LCCOMB_X114_Y39_N18
\clk_component|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~47_combout\ = (\clk_component|Add0~45_combout\ & (!\reset~input_o\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~4_combout\,
	datab => \clk_component|Add0~45_combout\,
	datac => \reset~input_o\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~47_combout\);

-- Location: LCCOMB_X114_Y39_N22
\clk_component|Q[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(15) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~47_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(15),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~47_combout\,
	combout => \clk_component|Q\(15));

-- Location: LCCOMB_X113_Y40_N8
\clk_component|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~48_combout\ = (\clk_component|Q\(16) & (\clk_component|Add0~46\ $ (GND))) # (!\clk_component|Q\(16) & (!\clk_component|Add0~46\ & VCC))
-- \clk_component|Add0~49\ = CARRY((\clk_component|Q\(16) & !\clk_component|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(16),
	datad => VCC,
	cin => \clk_component|Add0~46\,
	combout => \clk_component|Add0~48_combout\,
	cout => \clk_component|Add0~49\);

-- Location: LCCOMB_X112_Y40_N26
\clk_component|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~50_combout\ = (!\reset~input_o\ & (\clk_component|Add0~48_combout\ & ((!\clk_component|Equal0~4_combout\) # (!\clk_component|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \clk_component|Add0~48_combout\,
	combout => \clk_component|Add0~50_combout\);

-- Location: LCCOMB_X112_Y40_N28
\clk_component|Q[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(16) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~50_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(16),
	datac => \clk_component|Add0~50_combout\,
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(16));

-- Location: LCCOMB_X113_Y40_N10
\clk_component|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~51_combout\ = (\clk_component|Q\(17) & (!\clk_component|Add0~49\)) # (!\clk_component|Q\(17) & ((\clk_component|Add0~49\) # (GND)))
-- \clk_component|Add0~52\ = CARRY((!\clk_component|Add0~49\) # (!\clk_component|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(17),
	datad => VCC,
	cin => \clk_component|Add0~49\,
	combout => \clk_component|Add0~51_combout\,
	cout => \clk_component|Add0~52\);

-- Location: LCCOMB_X112_Y40_N22
\clk_component|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~59_combout\ = (!\reset~input_o\ & (\clk_component|Add0~51_combout\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \clk_component|Add0~51_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~59_combout\);

-- Location: LCCOMB_X112_Y40_N12
\clk_component|Q[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(17) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~59_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(17),
	datac => \clk_component|Add0~59_combout\,
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(17));

-- Location: LCCOMB_X113_Y40_N12
\clk_component|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~53_combout\ = (\clk_component|Q\(18) & (\clk_component|Add0~52\ $ (GND))) # (!\clk_component|Q\(18) & (!\clk_component|Add0~52\ & VCC))
-- \clk_component|Add0~54\ = CARRY((\clk_component|Q\(18) & !\clk_component|Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(18),
	datad => VCC,
	cin => \clk_component|Add0~52\,
	combout => \clk_component|Add0~53_combout\,
	cout => \clk_component|Add0~54\);

-- Location: LCCOMB_X112_Y40_N4
\clk_component|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~55_combout\ = (!\reset~input_o\ & (\clk_component|Add0~53_combout\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \clk_component|Add0~53_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~55_combout\);

-- Location: LCCOMB_X112_Y40_N24
\clk_component|Q[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(18) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~55_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(18),
	datac => \clk_component|Add0~55_combout\,
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(18));

-- Location: LCCOMB_X113_Y40_N14
\clk_component|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~56_combout\ = (\clk_component|Q\(19) & (!\clk_component|Add0~54\)) # (!\clk_component|Q\(19) & ((\clk_component|Add0~54\) # (GND)))
-- \clk_component|Add0~57\ = CARRY((!\clk_component|Add0~54\) # (!\clk_component|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(19),
	datad => VCC,
	cin => \clk_component|Add0~54\,
	combout => \clk_component|Add0~56_combout\,
	cout => \clk_component|Add0~57\);

-- Location: LCCOMB_X112_Y40_N30
\clk_component|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~58_combout\ = (!\reset~input_o\ & (\clk_component|Add0~56_combout\ & ((!\clk_component|Equal0~8_combout\) # (!\clk_component|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \clk_component|Add0~56_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \clk_component|Equal0~8_combout\,
	combout => \clk_component|Add0~58_combout\);

-- Location: LCCOMB_X112_Y40_N8
\clk_component|Q[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(19) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~58_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(19),
	datac => \clk_component|Add0~58_combout\,
	datad => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(19));

-- Location: LCCOMB_X112_Y40_N18
\clk_component|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~5_combout\ = (!\clk_component|Q\(17) & (\clk_component|Q\(16) & (\clk_component|Q\(19) & \clk_component|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(17),
	datab => \clk_component|Q\(16),
	datac => \clk_component|Q\(19),
	datad => \clk_component|Q\(18),
	combout => \clk_component|Equal0~5_combout\);

-- Location: LCCOMB_X114_Y40_N24
\clk_component|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~7_combout\ = (\clk_component|Q\(24) & (\clk_component|Equal0~5_combout\ & (\clk_component|Equal0~4_combout\ & \clk_component|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(24),
	datab => \clk_component|Equal0~5_combout\,
	datac => \clk_component|Equal0~4_combout\,
	datad => \clk_component|Equal0~6_combout\,
	combout => \clk_component|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y40_N4
\clk_component|WAIT_TIME[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME[0]~2_combout\ = (((\clk_component|WAIT_TIME\(0)) # (\clk_component|Equal1~0_combout\)) # (!\clk_component|Equal0~4_combout\)) # (!\clk_component|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~8_combout\,
	datab => \clk_component|Equal0~4_combout\,
	datac => \clk_component|WAIT_TIME\(0),
	datad => \clk_component|Equal1~0_combout\,
	combout => \clk_component|WAIT_TIME[0]~2_combout\);

-- Location: LCCOMB_X114_Y40_N14
\clk_component|WAIT_TIME[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME[1]~1_combout\ = (\clk~input_o\ & ((\clk_component|Equal1~0_combout\) # ((\reset~input_o\) # (\clk_component|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal1~0_combout\,
	datab => \clk~input_o\,
	datac => \reset~input_o\,
	datad => \clk_component|Equal0~7_combout\,
	combout => \clk_component|WAIT_TIME[1]~1_combout\);

-- Location: CLKCTRL_G5
\clk_component|WAIT_TIME[1]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_component|WAIT_TIME[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_component|WAIT_TIME[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X111_Y40_N0
\clk_component|WAIT_TIME[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME\(0) = (GLOBAL(\clk_component|WAIT_TIME[1]~1clkctrl_outclk\) & ((!\clk_component|WAIT_TIME[0]~2_combout\))) # (!GLOBAL(\clk_component|WAIT_TIME[1]~1clkctrl_outclk\) & (\clk_component|WAIT_TIME\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|WAIT_TIME\(0),
	datac => \clk_component|WAIT_TIME[0]~2_combout\,
	datad => \clk_component|WAIT_TIME[1]~1clkctrl_outclk\,
	combout => \clk_component|WAIT_TIME\(0));

-- Location: LCCOMB_X111_Y40_N30
\clk_component|WAIT_TIME[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME[1]~0_combout\ = (\clk_component|Equal0~7_combout\ & (!\clk_component|Equal1~0_combout\ & (\clk_component|WAIT_TIME\(1) $ (\clk_component|WAIT_TIME\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|WAIT_TIME\(1),
	datab => \clk_component|Equal0~7_combout\,
	datac => \clk_component|WAIT_TIME\(0),
	datad => \clk_component|Equal1~0_combout\,
	combout => \clk_component|WAIT_TIME[1]~0_combout\);

-- Location: LCCOMB_X111_Y40_N8
\clk_component|WAIT_TIME[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME\(1) = (GLOBAL(\clk_component|WAIT_TIME[1]~1clkctrl_outclk\) & ((\clk_component|WAIT_TIME[1]~0_combout\))) # (!GLOBAL(\clk_component|WAIT_TIME[1]~1clkctrl_outclk\) & (\clk_component|WAIT_TIME\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|WAIT_TIME\(1),
	datac => \clk_component|WAIT_TIME[1]~0_combout\,
	datad => \clk_component|WAIT_TIME[1]~1clkctrl_outclk\,
	combout => \clk_component|WAIT_TIME\(1));

-- Location: LCCOMB_X111_Y40_N20
\clk_component|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal1~0_combout\ = (\clk_component|WAIT_TIME\(2) & (\clk_component|WAIT_TIME\(1) & (!\clk_component|WAIT_TIME\(3) & !\clk_component|WAIT_TIME\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|WAIT_TIME\(2),
	datab => \clk_component|WAIT_TIME\(1),
	datac => \clk_component|WAIT_TIME\(3),
	datad => \clk_component|WAIT_TIME\(0),
	combout => \clk_component|Equal1~0_combout\);

-- Location: LCCOMB_X114_Y40_N6
\clk_component|running~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|running~1_combout\ = (\clk~input_o\ & ((\reset~input_o\) # (\clk_component|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \clk~input_o\,
	datad => \clk_component|Equal1~0_combout\,
	combout => \clk_component|running~1_combout\);

-- Location: FF_X114_Y40_N7
\clk_component|running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	asdata => \clk_component|running~0_combout\,
	clrn => \clk_component|ALT_INV_running~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_component|running~q\);

-- Location: LCCOMB_X114_Y40_N30
\clk_component|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q[0]~0_combout\ = (\clk~input_o\ & ((\clk_component|Equal0~7_combout\) # ((\reset~input_o\) # (\clk_component|running~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~7_combout\,
	datab => \clk~input_o\,
	datac => \reset~input_o\,
	datad => \clk_component|running~q\,
	combout => \clk_component|Q[0]~0_combout\);

-- Location: LCCOMB_X113_Y40_N28
\clk_component|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~71_combout\ = (\clk_component|Add0~60_combout\ & (!\clk_component|Equal0~7_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Add0~60_combout\,
	datac => \clk_component|Equal0~7_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~71_combout\);

-- Location: LCCOMB_X113_Y40_N30
\clk_component|Q[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(20) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~71_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(20),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~71_combout\,
	combout => \clk_component|Q\(20));

-- Location: LCCOMB_X113_Y40_N18
\clk_component|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~62_combout\ = (\clk_component|Q\(21) & (!\clk_component|Add0~61\)) # (!\clk_component|Q\(21) & ((\clk_component|Add0~61\) # (GND)))
-- \clk_component|Add0~63\ = CARRY((!\clk_component|Add0~61\) # (!\clk_component|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(21),
	datad => VCC,
	cin => \clk_component|Add0~61\,
	combout => \clk_component|Add0~62_combout\,
	cout => \clk_component|Add0~63\);

-- Location: LCCOMB_X114_Y40_N2
\clk_component|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~72_combout\ = (!\clk_component|Equal0~7_combout\ & (\clk_component|Add0~62_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Equal0~7_combout\,
	datac => \clk_component|Add0~62_combout\,
	datad => \reset~input_o\,
	combout => \clk_component|Add0~72_combout\);

-- Location: LCCOMB_X114_Y40_N20
\clk_component|Q[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(21) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~72_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(21),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~72_combout\,
	combout => \clk_component|Q\(21));

-- Location: LCCOMB_X113_Y40_N22
\clk_component|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~66_combout\ = (\clk_component|Q\(23) & (!\clk_component|Add0~65\)) # (!\clk_component|Q\(23) & ((\clk_component|Add0~65\) # (GND)))
-- \clk_component|Add0~67\ = CARRY((!\clk_component|Add0~65\) # (!\clk_component|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Q\(23),
	datad => VCC,
	cin => \clk_component|Add0~65\,
	combout => \clk_component|Add0~66_combout\,
	cout => \clk_component|Add0~67\);

-- Location: LCCOMB_X114_Y40_N16
\clk_component|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~74_combout\ = (!\clk_component|Equal0~7_combout\ & (!\reset~input_o\ & \clk_component|Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Equal0~7_combout\,
	datac => \reset~input_o\,
	datad => \clk_component|Add0~66_combout\,
	combout => \clk_component|Add0~74_combout\);

-- Location: LCCOMB_X114_Y40_N18
\clk_component|Q[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(23) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~74_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(23),
	datac => \clk_component|Q[0]~0_combout\,
	datad => \clk_component|Add0~74_combout\,
	combout => \clk_component|Q\(23));

-- Location: LCCOMB_X114_Y40_N12
\clk_component|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~6_combout\ = (\clk_component|Q\(22) & (\clk_component|Q\(21) & (!\clk_component|Q\(23) & \clk_component|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(22),
	datab => \clk_component|Q\(21),
	datac => \clk_component|Q\(23),
	datad => \clk_component|Q\(20),
	combout => \clk_component|Equal0~6_combout\);

-- Location: LCCOMB_X113_Y40_N24
\clk_component|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~68_combout\ = \clk_component|Add0~67\ $ (!\clk_component|Q\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_component|Q\(24),
	cin => \clk_component|Add0~67\,
	combout => \clk_component|Add0~68_combout\);

-- Location: LCCOMB_X114_Y40_N4
\clk_component|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add0~70_combout\ = (!\clk_component|Equal0~7_combout\ & (!\reset~input_o\ & \clk_component|Add0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|Equal0~7_combout\,
	datac => \reset~input_o\,
	datad => \clk_component|Add0~68_combout\,
	combout => \clk_component|Add0~70_combout\);

-- Location: LCCOMB_X114_Y40_N10
\clk_component|Q[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Q\(24) = (\clk_component|Q[0]~0_combout\ & ((\clk_component|Add0~70_combout\))) # (!\clk_component|Q[0]~0_combout\ & (\clk_component|Q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Q\(24),
	datab => \clk_component|Add0~70_combout\,
	datac => \clk_component|Q[0]~0_combout\,
	combout => \clk_component|Q\(24));

-- Location: LCCOMB_X112_Y40_N20
\clk_component|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Equal0~8_combout\ = (\clk_component|Equal0~5_combout\ & (\clk_component|Equal0~6_combout\ & \clk_component|Q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~5_combout\,
	datac => \clk_component|Equal0~6_combout\,
	datad => \clk_component|Q\(24),
	combout => \clk_component|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y40_N14
\clk_component|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add1~1_combout\ = \clk_component|WAIT_TIME\(3) $ (((\clk_component|WAIT_TIME\(2) & (\clk_component|WAIT_TIME\(0) & \clk_component|WAIT_TIME\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|WAIT_TIME\(2),
	datab => \clk_component|WAIT_TIME\(0),
	datac => \clk_component|WAIT_TIME\(3),
	datad => \clk_component|WAIT_TIME\(1),
	combout => \clk_component|Add1~1_combout\);

-- Location: LCCOMB_X111_Y40_N18
\clk_component|WAIT_TIME[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME[3]~4_combout\ = (\clk_component|Equal0~4_combout\ & (\clk_component|Equal0~8_combout\ & (\clk_component|Add1~1_combout\ & !\clk_component|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~4_combout\,
	datab => \clk_component|Equal0~8_combout\,
	datac => \clk_component|Add1~1_combout\,
	datad => \clk_component|Equal1~0_combout\,
	combout => \clk_component|WAIT_TIME[3]~4_combout\);

-- Location: LCCOMB_X111_Y40_N22
\clk_component|WAIT_TIME[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME\(3) = (GLOBAL(\clk_component|WAIT_TIME[1]~1clkctrl_outclk\) & (\clk_component|WAIT_TIME[3]~4_combout\)) # (!GLOBAL(\clk_component|WAIT_TIME[1]~1clkctrl_outclk\) & ((\clk_component|WAIT_TIME\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|WAIT_TIME[3]~4_combout\,
	datac => \clk_component|WAIT_TIME\(3),
	datad => \clk_component|WAIT_TIME[1]~1clkctrl_outclk\,
	combout => \clk_component|WAIT_TIME\(3));

-- Location: LCCOMB_X110_Y40_N22
\fsm|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux2~0_combout\ = (\start~input_o\ & (!\reset~input_o\ & (!\fsm|state\(0) & !\fsm|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \reset~input_o\,
	datac => \fsm|state\(0),
	datad => \fsm|state\(1),
	combout => \fsm|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y40_N26
\clk_component|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Add1~0_combout\ = \clk_component|WAIT_TIME\(2) $ (((\clk_component|WAIT_TIME\(1) & \clk_component|WAIT_TIME\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|WAIT_TIME\(2),
	datac => \clk_component|WAIT_TIME\(1),
	datad => \clk_component|WAIT_TIME\(0),
	combout => \clk_component|Add1~0_combout\);

-- Location: LCCOMB_X111_Y40_N6
\clk_component|WAIT_TIME[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME[2]~3_combout\ = (\clk_component|Equal0~8_combout\ & (\clk_component|Equal0~4_combout\ & (\clk_component|Add1~0_combout\ & !\clk_component|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|Equal0~8_combout\,
	datab => \clk_component|Equal0~4_combout\,
	datac => \clk_component|Add1~0_combout\,
	datad => \clk_component|Equal1~0_combout\,
	combout => \clk_component|WAIT_TIME[2]~3_combout\);

-- Location: LCCOMB_X111_Y40_N24
\clk_component|WAIT_TIME[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|WAIT_TIME\(2) = (\clk_component|WAIT_TIME[1]~1_combout\ & ((\clk_component|WAIT_TIME[2]~3_combout\))) # (!\clk_component|WAIT_TIME[1]~1_combout\ & (\clk_component|WAIT_TIME\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|WAIT_TIME\(2),
	datac => \clk_component|WAIT_TIME[1]~1_combout\,
	datad => \clk_component|WAIT_TIME[2]~3_combout\,
	combout => \clk_component|WAIT_TIME\(2));

-- Location: LCCOMB_X111_Y40_N28
\clk_component|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Z~0_combout\ = (\clk_component|WAIT_TIME\(0) & ((!\clk_component|WAIT_TIME\(2)))) # (!\clk_component|WAIT_TIME\(0) & (\clk_component|WAIT_TIME\(1) & \clk_component|WAIT_TIME\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|WAIT_TIME\(1),
	datac => \clk_component|WAIT_TIME\(0),
	datad => \clk_component|WAIT_TIME\(2),
	combout => \clk_component|Z~0_combout\);

-- Location: LCCOMB_X114_Y40_N22
\clk_component|pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|pulse~combout\ = (\clk~input_o\ & ((\clk_component|Equal0~7_combout\))) # (!\clk~input_o\ & (\clk_component|pulse~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|pulse~combout\,
	datac => \clk~input_o\,
	datad => \clk_component|Equal0~7_combout\,
	combout => \clk_component|pulse~combout\);

-- Location: LCCOMB_X110_Y40_N10
\fsm|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux3~6_combout\ = \fsm|state\(0) $ (((!\clk_component|WAIT_TIME\(3) & (\clk_component|Z~0_combout\ & \clk_component|pulse~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|WAIT_TIME\(3),
	datab => \clk_component|Z~0_combout\,
	datac => \fsm|state\(0),
	datad => \clk_component|pulse~combout\,
	combout => \fsm|Mux3~6_combout\);

-- Location: LCCOMB_X110_Y40_N2
\fsm|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux2~1_combout\ = (\fsm|Mux2~0_combout\) # ((\fsm|state\(1) & (!\reset~input_o\ & \fsm|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state\(1),
	datab => \reset~input_o\,
	datac => \fsm|Mux2~0_combout\,
	datad => \fsm|Mux3~6_combout\,
	combout => \fsm|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y40_N26
\fsm|ns[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ns\(0) = (GLOBAL(\fsm|Mux4~2clkctrl_outclk\) & ((\fsm|Mux2~1_combout\))) # (!GLOBAL(\fsm|Mux4~2clkctrl_outclk\) & (\fsm|ns\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ns\(0),
	datac => \fsm|Mux4~2clkctrl_outclk\,
	datad => \fsm|Mux2~1_combout\,
	combout => \fsm|ns\(0));

-- Location: FF_X110_Y40_N27
\fsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm|ns\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state\(0));

-- Location: LCCOMB_X110_Y40_N16
\fsm|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux3~5_combout\ = (!\reset~input_o\ & (\fsm|state\(1) $ (\fsm|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|state\(1),
	datac => \fsm|state\(0),
	datad => \reset~input_o\,
	combout => \fsm|Mux3~5_combout\);

-- Location: LCCOMB_X111_Y40_N10
\fsm|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux4~2_combout\ = ((\clk_component|pulse~combout\ & (!\clk_component|WAIT_TIME\(3) & \clk_component|Z~0_combout\))) # (!\fsm|Mux3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|pulse~combout\,
	datab => \clk_component|WAIT_TIME\(3),
	datac => \fsm|Mux3~5_combout\,
	datad => \clk_component|Z~0_combout\,
	combout => \fsm|Mux4~2_combout\);

-- Location: CLKCTRL_G9
\fsm|Mux4~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|Mux4~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|Mux4~2clkctrl_outclk\);

-- Location: LCCOMB_X111_Y40_N2
\clk_component|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_component|Z~1_combout\ = (\clk_component|pulse~combout\ & !\clk_component|WAIT_TIME\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_component|pulse~combout\,
	datad => \clk_component|WAIT_TIME\(3),
	combout => \clk_component|Z~1_combout\);

-- Location: LCCOMB_X111_Y40_N16
\fsm|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux3~7_combout\ = ((\clk_component|WAIT_TIME\(2) & ((\clk_component|WAIT_TIME\(0)) # (!\clk_component|WAIT_TIME\(1)))) # (!\clk_component|WAIT_TIME\(2) & ((!\clk_component|WAIT_TIME\(0))))) # (!\clk_component|Z~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_component|WAIT_TIME\(1),
	datab => \clk_component|WAIT_TIME\(2),
	datac => \clk_component|WAIT_TIME\(0),
	datad => \clk_component|Z~1_combout\,
	combout => \fsm|Mux3~7_combout\);

-- Location: LCCOMB_X110_Y40_N30
\fsm|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux3~4_combout\ = (!\reset~input_o\ & ((\fsm|state\(0) & (\fsm|state\(1) $ (!\fsm|Mux3~7_combout\))) # (!\fsm|state\(0) & (\fsm|state\(1) & !\fsm|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state\(0),
	datab => \fsm|state\(1),
	datac => \reset~input_o\,
	datad => \fsm|Mux3~7_combout\,
	combout => \fsm|Mux3~4_combout\);

-- Location: LCCOMB_X110_Y40_N20
\fsm|ns[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ns\(1) = (GLOBAL(\fsm|Mux4~2clkctrl_outclk\) & (\fsm|Mux3~4_combout\)) # (!GLOBAL(\fsm|Mux4~2clkctrl_outclk\) & ((\fsm|ns\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Mux4~2clkctrl_outclk\,
	datac => \fsm|Mux3~4_combout\,
	datad => \fsm|ns\(1),
	combout => \fsm|ns\(1));

-- Location: FF_X110_Y40_N21
\fsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm|ns\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state\(1));

-- Location: LCCOMB_X110_Y40_N28
\fsm|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux0~0_combout\ = (\fsm|state\(1) & !\fsm|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|state\(1),
	datad => \fsm|state\(0),
	combout => \fsm|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y40_N24
\fsm|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux1~0_combout\ = (\fsm|state\(1) & \fsm|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|state\(1),
	datad => \fsm|state\(0),
	combout => \fsm|Mux1~0_combout\);

ww_RED <= \RED~output_o\;

ww_YELLOW <= \YELLOW~output_o\;

ww_GREEN <= \GREEN~output_o\;
END structure;


