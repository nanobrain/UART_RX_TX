-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "04/19/2016 23:11:56"

-- 
-- Device: Altera 10M08DAF256C8GES Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART_TX_TEST IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	TX_Start : IN std_logic;
	Bit_Par : IN std_logic;
	TX : OUT std_logic;
	TX_Dane_Gotowe : OUT std_logic
	);
END UART_TX_TEST;

-- Design Ports Information
-- TX	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_Dane_Gotowe	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bit_Par	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_Start	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_TX_TEST IS
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
SIGNAL ww_TX_Start : std_logic;
SIGNAL ww_Bit_Par : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_TX_Dane_Gotowe : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \TX~output_o\ : std_logic;
SIGNAL \TX_Dane_Gotowe~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Bit_Par~input_o\ : std_logic;
SIGNAL \baud_gen_unit|Add0~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|r_next[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \baud_gen_unit|Add0~1\ : std_logic;
SIGNAL \baud_gen_unit|Add0~2_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~3\ : std_logic;
SIGNAL \baud_gen_unit|Add0~4_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~5\ : std_logic;
SIGNAL \baud_gen_unit|Add0~6_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~7\ : std_logic;
SIGNAL \baud_gen_unit|Add0~8_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~1_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~9\ : std_logic;
SIGNAL \baud_gen_unit|Add0~10_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~11\ : std_logic;
SIGNAL \baud_gen_unit|Add0~12_combout\ : std_logic;
SIGNAL \baud_gen_unit|r_next[6]~1_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~13\ : std_logic;
SIGNAL \baud_gen_unit|Add0~14_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|TX_Dane_Gotowe~0_combout\ : std_logic;
SIGNAL \TX_Start~input_o\ : std_logic;
SIGNAL \uart_tx_unit|Selector1~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.czekaj~q\ : std_logic;
SIGNAL \uart_tx_unit|VParzystosc~2_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector2~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector2~3_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector2~4_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.start~q\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[0]~3_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[1]~2_combout\ : std_logic;
SIGNAL \uart_tx_unit|Add1~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[2]~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_next~5_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector3~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.dane~q\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[3]~2_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[3]~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[3]~3_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[3]~4_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~8_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[1]~7_combout\ : std_logic;
SIGNAL \uart_tx_unit|Add0~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[2]~6_combout\ : std_logic;
SIGNAL \uart_tx_unit|Add0~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[3]~5_combout\ : std_logic;
SIGNAL \uart_tx_unit|Equal1~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|TX_Dane_Gotowe~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector5~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.stop~q\ : std_logic;
SIGNAL \uart_tx_unit|Selector2~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector2~2_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector4~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.bit_parzystosci~q\ : std_logic;
SIGNAL \Byte_Ctr_Next[1]~1_combout\ : std_logic;
SIGNAL \Byte_Ctr_Reg[3]~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Byte_Ctr_Next[3]~3_combout\ : std_logic;
SIGNAL \Byte_Ctr_Reg[3]~0_combout\ : std_logic;
SIGNAL \Byte_Ctr_Next[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Byte_Ctr_Next[2]~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector11~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Reg[0]~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector12~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector13~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector14~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector15~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector16~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector17~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector0~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector0~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|VParzystosc~3_combout\ : std_logic;
SIGNAL \uart_tx_unit|VParzystosc~combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector0~2_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector0~3_combout\ : std_logic;
SIGNAL \uart_tx_unit|TX_reg~q\ : std_logic;
SIGNAL \baud_gen_unit|r_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_unit|Baud_Ctr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL Byte_Ctr_Reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_unit|Dane_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_unit|Dane_Ctr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_tx_unit|ALT_INV_TX_Dane_Gotowe~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|ALT_INV_TX_reg~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_TX_Start <= TX_Start;
ww_Bit_Par <= Bit_Par;
TX <= ww_TX;
TX_Dane_Gotowe <= ww_TX_Dane_Gotowe;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\uart_tx_unit|ALT_INV_TX_Dane_Gotowe~0_combout\ <= NOT \uart_tx_unit|TX_Dane_Gotowe~0_combout\;
\uart_tx_unit|ALT_INV_TX_reg~q\ <= NOT \uart_tx_unit|TX_reg~q\;

-- Location: LCCOMB_X11_Y14_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X19_Y25_N9
\TX~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_tx_unit|ALT_INV_TX_reg~q\,
	devoe => ww_devoe,
	o => \TX~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\TX_Dane_Gotowe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_tx_unit|ALT_INV_TX_Dane_Gotowe~0_combout\,
	devoe => ww_devoe,
	o => \TX_Dane_Gotowe~output_o\);

-- Location: IOIBUF_X0_Y7_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y11_N15
\Bit_Par~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bit_Par,
	o => \Bit_Par~input_o\);

-- Location: LCCOMB_X28_Y8_N10
\baud_gen_unit|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~0_combout\ = \baud_gen_unit|r_reg\(0) $ (VCC)
-- \baud_gen_unit|Add0~1\ = CARRY(\baud_gen_unit|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|r_reg\(0),
	datad => VCC,
	combout => \baud_gen_unit|Add0~0_combout\,
	cout => \baud_gen_unit|Add0~1\);

-- Location: LCCOMB_X28_Y8_N8
\baud_gen_unit|r_next[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|r_next[0]~0_combout\ = (\baud_gen_unit|Add0~0_combout\ & ((\baud_gen_unit|Equal0~0_combout\) # (\baud_gen_unit|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|Equal0~0_combout\,
	datac => \baud_gen_unit|Equal0~1_combout\,
	datad => \baud_gen_unit|Add0~0_combout\,
	combout => \baud_gen_unit|r_next[0]~0_combout\);

-- Location: IOIBUF_X31_Y4_N8
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X28_Y8_N9
\baud_gen_unit|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|r_next[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(0));

-- Location: LCCOMB_X28_Y8_N12
\baud_gen_unit|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~2_combout\ = (\baud_gen_unit|r_reg\(1) & (!\baud_gen_unit|Add0~1\)) # (!\baud_gen_unit|r_reg\(1) & ((\baud_gen_unit|Add0~1\) # (GND)))
-- \baud_gen_unit|Add0~3\ = CARRY((!\baud_gen_unit|Add0~1\) # (!\baud_gen_unit|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(1),
	datad => VCC,
	cin => \baud_gen_unit|Add0~1\,
	combout => \baud_gen_unit|Add0~2_combout\,
	cout => \baud_gen_unit|Add0~3\);

-- Location: FF_X28_Y8_N13
\baud_gen_unit|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(1));

-- Location: LCCOMB_X28_Y8_N14
\baud_gen_unit|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~4_combout\ = (\baud_gen_unit|r_reg\(2) & (\baud_gen_unit|Add0~3\ $ (GND))) # (!\baud_gen_unit|r_reg\(2) & (!\baud_gen_unit|Add0~3\ & VCC))
-- \baud_gen_unit|Add0~5\ = CARRY((\baud_gen_unit|r_reg\(2) & !\baud_gen_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|r_reg\(2),
	datad => VCC,
	cin => \baud_gen_unit|Add0~3\,
	combout => \baud_gen_unit|Add0~4_combout\,
	cout => \baud_gen_unit|Add0~5\);

-- Location: FF_X28_Y8_N15
\baud_gen_unit|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(2));

-- Location: LCCOMB_X28_Y8_N16
\baud_gen_unit|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~6_combout\ = (\baud_gen_unit|r_reg\(3) & (!\baud_gen_unit|Add0~5\)) # (!\baud_gen_unit|r_reg\(3) & ((\baud_gen_unit|Add0~5\) # (GND)))
-- \baud_gen_unit|Add0~7\ = CARRY((!\baud_gen_unit|Add0~5\) # (!\baud_gen_unit|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|r_reg\(3),
	datad => VCC,
	cin => \baud_gen_unit|Add0~5\,
	combout => \baud_gen_unit|Add0~6_combout\,
	cout => \baud_gen_unit|Add0~7\);

-- Location: FF_X28_Y8_N17
\baud_gen_unit|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(3));

-- Location: LCCOMB_X28_Y8_N18
\baud_gen_unit|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~8_combout\ = (\baud_gen_unit|r_reg\(4) & (\baud_gen_unit|Add0~7\ $ (GND))) # (!\baud_gen_unit|r_reg\(4) & (!\baud_gen_unit|Add0~7\ & VCC))
-- \baud_gen_unit|Add0~9\ = CARRY((\baud_gen_unit|r_reg\(4) & !\baud_gen_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|r_reg\(4),
	datad => VCC,
	cin => \baud_gen_unit|Add0~7\,
	combout => \baud_gen_unit|Add0~8_combout\,
	cout => \baud_gen_unit|Add0~9\);

-- Location: FF_X28_Y8_N19
\baud_gen_unit|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(4));

-- Location: LCCOMB_X28_Y8_N26
\baud_gen_unit|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~1_combout\ = (\baud_gen_unit|r_reg\(1)) # ((\baud_gen_unit|r_reg\(4)) # ((\baud_gen_unit|r_reg\(2)) # (\baud_gen_unit|r_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(1),
	datab => \baud_gen_unit|r_reg\(4),
	datac => \baud_gen_unit|r_reg\(2),
	datad => \baud_gen_unit|r_reg\(3),
	combout => \baud_gen_unit|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y8_N20
\baud_gen_unit|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~10_combout\ = (\baud_gen_unit|r_reg\(5) & (!\baud_gen_unit|Add0~9\)) # (!\baud_gen_unit|r_reg\(5) & ((\baud_gen_unit|Add0~9\) # (GND)))
-- \baud_gen_unit|Add0~11\ = CARRY((!\baud_gen_unit|Add0~9\) # (!\baud_gen_unit|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(5),
	datad => VCC,
	cin => \baud_gen_unit|Add0~9\,
	combout => \baud_gen_unit|Add0~10_combout\,
	cout => \baud_gen_unit|Add0~11\);

-- Location: FF_X28_Y8_N21
\baud_gen_unit|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(5));

-- Location: LCCOMB_X28_Y8_N22
\baud_gen_unit|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~12_combout\ = (\baud_gen_unit|r_reg\(6) & (\baud_gen_unit|Add0~11\ $ (GND))) # (!\baud_gen_unit|r_reg\(6) & (!\baud_gen_unit|Add0~11\ & VCC))
-- \baud_gen_unit|Add0~13\ = CARRY((\baud_gen_unit|r_reg\(6) & !\baud_gen_unit|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|r_reg\(6),
	datad => VCC,
	cin => \baud_gen_unit|Add0~11\,
	combout => \baud_gen_unit|Add0~12_combout\,
	cout => \baud_gen_unit|Add0~13\);

-- Location: LCCOMB_X28_Y8_N30
\baud_gen_unit|r_next[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|r_next[6]~1_combout\ = (\baud_gen_unit|Add0~12_combout\ & ((\baud_gen_unit|Equal0~1_combout\) # (\baud_gen_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~1_combout\,
	datac => \baud_gen_unit|Add0~12_combout\,
	datad => \baud_gen_unit|Equal0~0_combout\,
	combout => \baud_gen_unit|r_next[6]~1_combout\);

-- Location: FF_X28_Y8_N31
\baud_gen_unit|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|r_next[6]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(6));

-- Location: LCCOMB_X28_Y8_N24
\baud_gen_unit|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~14_combout\ = \baud_gen_unit|Add0~13\ $ (\baud_gen_unit|r_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \baud_gen_unit|r_reg\(7),
	cin => \baud_gen_unit|Add0~13\,
	combout => \baud_gen_unit|Add0~14_combout\);

-- Location: FF_X28_Y8_N25
\baud_gen_unit|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(7));

-- Location: LCCOMB_X28_Y8_N0
\baud_gen_unit|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~0_combout\ = ((\baud_gen_unit|r_reg\(7)) # ((\baud_gen_unit|r_reg\(0)) # (\baud_gen_unit|r_reg\(5)))) # (!\baud_gen_unit|r_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(6),
	datab => \baud_gen_unit|r_reg\(7),
	datac => \baud_gen_unit|r_reg\(0),
	datad => \baud_gen_unit|r_reg\(5),
	combout => \baud_gen_unit|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y8_N10
\uart_tx_unit|TX_Dane_Gotowe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|TX_Dane_Gotowe~0_combout\ = ((\baud_gen_unit|Equal0~0_combout\) # ((\baud_gen_unit|Equal0~1_combout\) # (!\uart_tx_unit|Equal1~0_combout\))) # (!\uart_tx_unit|state_reg.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.stop~q\,
	datab => \baud_gen_unit|Equal0~0_combout\,
	datac => \baud_gen_unit|Equal0~1_combout\,
	datad => \uart_tx_unit|Equal1~0_combout\,
	combout => \uart_tx_unit|TX_Dane_Gotowe~0_combout\);

-- Location: IOIBUF_X31_Y11_N22
\TX_Start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_Start,
	o => \TX_Start~input_o\);

-- Location: LCCOMB_X30_Y8_N4
\uart_tx_unit|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector1~0_combout\ = (\uart_tx_unit|TX_Dane_Gotowe~0_combout\ & ((\uart_tx_unit|state_reg.czekaj~q\) # (\TX_Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|TX_Dane_Gotowe~0_combout\,
	datac => \uart_tx_unit|state_reg.czekaj~q\,
	datad => \TX_Start~input_o\,
	combout => \uart_tx_unit|Selector1~0_combout\);

-- Location: FF_X30_Y8_N5
\uart_tx_unit|state_reg.czekaj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \uart_tx_unit|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.czekaj~q\);

-- Location: LCCOMB_X30_Y8_N14
\uart_tx_unit|VParzystosc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|VParzystosc~2_combout\ = (!\uart_tx_unit|state_reg.czekaj~q\ & \TX_Start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_unit|state_reg.czekaj~q\,
	datad => \TX_Start~input_o\,
	combout => \uart_tx_unit|VParzystosc~2_combout\);

-- Location: LCCOMB_X29_Y8_N16
\uart_tx_unit|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector2~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|state_next~5_combout\ & \uart_tx_unit|TX_Dane_Gotowe~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_tx_unit|state_next~5_combout\,
	datad => \uart_tx_unit|TX_Dane_Gotowe~1_combout\,
	combout => \uart_tx_unit|Selector2~0_combout\);

-- Location: LCCOMB_X29_Y8_N2
\uart_tx_unit|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector2~3_combout\ = (\uart_tx_unit|VParzystosc~2_combout\) # ((\uart_tx_unit|state_reg.start~q\ & (!\uart_tx_unit|Selector2~2_combout\ & !\uart_tx_unit|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.start~q\,
	datab => \uart_tx_unit|Selector2~2_combout\,
	datac => \uart_tx_unit|VParzystosc~2_combout\,
	datad => \uart_tx_unit|Selector2~0_combout\,
	combout => \uart_tx_unit|Selector2~3_combout\);

-- Location: LCCOMB_X29_Y8_N8
\uart_tx_unit|Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector2~4_combout\ = (\uart_tx_unit|Selector2~3_combout\ & ((\Bit_Par~input_o\) # (!\uart_tx_unit|state_reg.bit_parzystosci~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Selector2~3_combout\,
	datac => \Bit_Par~input_o\,
	datad => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	combout => \uart_tx_unit|Selector2~4_combout\);

-- Location: FF_X29_Y8_N9
\uart_tx_unit|state_reg.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector2~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.start~q\);

-- Location: LCCOMB_X29_Y8_N6
\uart_tx_unit|Dane_Ctr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[0]~0_combout\ = ((!\uart_tx_unit|state_reg.start~q\ & ((\uart_tx_unit|state_next~5_combout\) # (!\uart_tx_unit|state_reg.dane~q\)))) # (!\uart_tx_unit|TX_Dane_Gotowe~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|state_reg.start~q\,
	datac => \uart_tx_unit|state_next~5_combout\,
	datad => \uart_tx_unit|TX_Dane_Gotowe~1_combout\,
	combout => \uart_tx_unit|Dane_Ctr[0]~0_combout\);

-- Location: LCCOMB_X29_Y8_N28
\uart_tx_unit|Dane_Ctr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[0]~3_combout\ = (\uart_tx_unit|Dane_Ctr\(0) & ((\uart_tx_unit|Dane_Ctr[0]~0_combout\))) # (!\uart_tx_unit|Dane_Ctr\(0) & (\uart_tx_unit|state_reg.dane~q\ & !\uart_tx_unit|Dane_Ctr[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_tx_unit|Dane_Ctr\(0),
	datad => \uart_tx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Dane_Ctr[0]~3_combout\);

-- Location: FF_X29_Y8_N29
\uart_tx_unit|Dane_Ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Dane_Ctr[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Ctr\(0));

-- Location: LCCOMB_X29_Y8_N22
\uart_tx_unit|Dane_Ctr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[1]~2_combout\ = (\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (((\uart_tx_unit|Dane_Ctr\(1))))) # (!\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Ctr\(0) $ (\uart_tx_unit|Dane_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|Dane_Ctr\(0),
	datac => \uart_tx_unit|Dane_Ctr\(1),
	datad => \uart_tx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Dane_Ctr[1]~2_combout\);

-- Location: FF_X29_Y8_N23
\uart_tx_unit|Dane_Ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Dane_Ctr[1]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Ctr\(1));

-- Location: LCCOMB_X29_Y8_N24
\uart_tx_unit|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Add1~0_combout\ = \uart_tx_unit|Dane_Ctr\(2) $ (((\uart_tx_unit|Dane_Ctr\(1) & \uart_tx_unit|Dane_Ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Dane_Ctr\(2),
	datac => \uart_tx_unit|Dane_Ctr\(1),
	datad => \uart_tx_unit|Dane_Ctr\(0),
	combout => \uart_tx_unit|Add1~0_combout\);

-- Location: LCCOMB_X29_Y8_N4
\uart_tx_unit|Dane_Ctr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[2]~1_combout\ = (\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (((\uart_tx_unit|Dane_Ctr\(2))))) # (!\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|Add1~0_combout\,
	datac => \uart_tx_unit|Dane_Ctr\(2),
	datad => \uart_tx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Dane_Ctr[2]~1_combout\);

-- Location: FF_X29_Y8_N5
\uart_tx_unit|Dane_Ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Dane_Ctr[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Ctr\(2));

-- Location: LCCOMB_X29_Y8_N26
\uart_tx_unit|state_next~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|state_next~5_combout\ = (\uart_tx_unit|Dane_Ctr\(1) & (\uart_tx_unit|Dane_Ctr\(2) & \uart_tx_unit|Dane_Ctr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Dane_Ctr\(1),
	datac => \uart_tx_unit|Dane_Ctr\(2),
	datad => \uart_tx_unit|Dane_Ctr\(0),
	combout => \uart_tx_unit|state_next~5_combout\);

-- Location: LCCOMB_X29_Y8_N30
\uart_tx_unit|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector3~0_combout\ = (\uart_tx_unit|TX_Dane_Gotowe~1_combout\ & ((\uart_tx_unit|state_reg.start~q\) # ((!\uart_tx_unit|state_next~5_combout\ & \uart_tx_unit|state_reg.dane~q\)))) # (!\uart_tx_unit|TX_Dane_Gotowe~1_combout\ & 
-- (((\uart_tx_unit|state_reg.dane~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_next~5_combout\,
	datab => \uart_tx_unit|state_reg.start~q\,
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \uart_tx_unit|TX_Dane_Gotowe~1_combout\,
	combout => \uart_tx_unit|Selector3~0_combout\);

-- Location: FF_X29_Y8_N31
\uart_tx_unit|state_reg.dane\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.dane~q\);

-- Location: LCCOMB_X29_Y8_N14
\uart_tx_unit|Baud_Ctr[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[3]~2_combout\ = (\uart_tx_unit|state_reg.dane~q\) # ((\uart_tx_unit|state_reg.start~q\) # ((\uart_tx_unit|state_reg.stop~q\) # (\uart_tx_unit|state_reg.bit_parzystosci~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|state_reg.start~q\,
	datac => \uart_tx_unit|state_reg.stop~q\,
	datad => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	combout => \uart_tx_unit|Baud_Ctr[3]~2_combout\);

-- Location: LCCOMB_X30_Y8_N28
\uart_tx_unit|Baud_Ctr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[3]~1_combout\ = (\Bit_Par~input_o\ & (!\uart_tx_unit|state_reg.czekaj~q\ & (!\TX_Start~input_o\))) # (!\Bit_Par~input_o\ & ((\uart_tx_unit|state_reg.bit_parzystosci~q\) # ((!\uart_tx_unit|state_reg.czekaj~q\ & 
-- !\TX_Start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bit_Par~input_o\,
	datab => \uart_tx_unit|state_reg.czekaj~q\,
	datac => \TX_Start~input_o\,
	datad => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	combout => \uart_tx_unit|Baud_Ctr[3]~1_combout\);

-- Location: LCCOMB_X30_Y8_N12
\uart_tx_unit|Baud_Ctr[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[3]~3_combout\ = (\uart_tx_unit|Baud_Ctr[3]~1_combout\) # ((\uart_tx_unit|Baud_Ctr[3]~2_combout\ & ((\baud_gen_unit|Equal0~1_combout\) # (\baud_gen_unit|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr[3]~2_combout\,
	datab => \baud_gen_unit|Equal0~1_combout\,
	datac => \uart_tx_unit|Baud_Ctr[3]~1_combout\,
	datad => \baud_gen_unit|Equal0~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[3]~3_combout\);

-- Location: LCCOMB_X30_Y8_N24
\uart_tx_unit|Baud_Ctr[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[3]~4_combout\ = (\uart_tx_unit|Baud_Ctr[3]~3_combout\) # ((\uart_tx_unit|state_reg.stop~q\ & \uart_tx_unit|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|state_reg.stop~q\,
	datac => \uart_tx_unit|Baud_Ctr[3]~3_combout\,
	datad => \uart_tx_unit|Equal1~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[3]~4_combout\);

-- Location: LCCOMB_X30_Y8_N10
\uart_tx_unit|Baud_Ctr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~0_combout\ = (\uart_tx_unit|state_reg.czekaj~q\ & ((\uart_tx_unit|state_reg.stop~q\) # (!\uart_tx_unit|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Equal1~0_combout\,
	datac => \uart_tx_unit|state_reg.stop~q\,
	datad => \uart_tx_unit|state_reg.czekaj~q\,
	combout => \uart_tx_unit|Baud_Ctr[0]~0_combout\);

-- Location: LCCOMB_X30_Y8_N18
\uart_tx_unit|Baud_Ctr[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~8_combout\ = (\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (\uart_tx_unit|Baud_Ctr\(0))) # (!\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (!\uart_tx_unit|Baud_Ctr\(0) & \uart_tx_unit|Baud_Ctr[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Baud_Ctr[3]~4_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(0),
	datad => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[0]~8_combout\);

-- Location: FF_X30_Y8_N19
\uart_tx_unit|Baud_Ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Baud_Ctr[0]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Baud_Ctr\(0));

-- Location: LCCOMB_X30_Y8_N26
\uart_tx_unit|Baud_Ctr[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[1]~7_combout\ = (\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (((\uart_tx_unit|Baud_Ctr\(1))))) # (!\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (\uart_tx_unit|Baud_Ctr[0]~0_combout\ & (\uart_tx_unit|Baud_Ctr\(0) $ 
-- (\uart_tx_unit|Baud_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr\(0),
	datab => \uart_tx_unit|Baud_Ctr[3]~4_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(1),
	datad => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[1]~7_combout\);

-- Location: FF_X30_Y8_N27
\uart_tx_unit|Baud_Ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Baud_Ctr[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Baud_Ctr\(1));

-- Location: LCCOMB_X30_Y8_N20
\uart_tx_unit|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Add0~1_combout\ = \uart_tx_unit|Baud_Ctr\(2) $ (((\uart_tx_unit|Baud_Ctr\(0) & \uart_tx_unit|Baud_Ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Baud_Ctr\(0),
	datac => \uart_tx_unit|Baud_Ctr\(1),
	datad => \uart_tx_unit|Baud_Ctr\(2),
	combout => \uart_tx_unit|Add0~1_combout\);

-- Location: LCCOMB_X30_Y8_N30
\uart_tx_unit|Baud_Ctr[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[2]~6_combout\ = (\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (((\uart_tx_unit|Baud_Ctr\(2))))) # (!\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (\uart_tx_unit|Add0~1_combout\ & ((\uart_tx_unit|Baud_Ctr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Add0~1_combout\,
	datab => \uart_tx_unit|Baud_Ctr[3]~4_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(2),
	datad => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[2]~6_combout\);

-- Location: FF_X30_Y8_N31
\uart_tx_unit|Baud_Ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Baud_Ctr[2]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Baud_Ctr\(2));

-- Location: LCCOMB_X30_Y8_N8
\uart_tx_unit|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Add0~0_combout\ = \uart_tx_unit|Baud_Ctr\(3) $ (((\uart_tx_unit|Baud_Ctr\(0) & (\uart_tx_unit|Baud_Ctr\(2) & \uart_tx_unit|Baud_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr\(0),
	datab => \uart_tx_unit|Baud_Ctr\(2),
	datac => \uart_tx_unit|Baud_Ctr\(1),
	datad => \uart_tx_unit|Baud_Ctr\(3),
	combout => \uart_tx_unit|Add0~0_combout\);

-- Location: LCCOMB_X30_Y8_N22
\uart_tx_unit|Baud_Ctr[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[3]~5_combout\ = (\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (((\uart_tx_unit|Baud_Ctr\(3))))) # (!\uart_tx_unit|Baud_Ctr[3]~4_combout\ & (\uart_tx_unit|Add0~0_combout\ & ((\uart_tx_unit|Baud_Ctr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Add0~0_combout\,
	datab => \uart_tx_unit|Baud_Ctr[3]~4_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(3),
	datad => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[3]~5_combout\);

-- Location: FF_X30_Y8_N23
\uart_tx_unit|Baud_Ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Baud_Ctr[3]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Baud_Ctr\(3));

-- Location: LCCOMB_X30_Y8_N16
\uart_tx_unit|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Equal1~0_combout\ = (\uart_tx_unit|Baud_Ctr\(2) & (\uart_tx_unit|Baud_Ctr\(3) & (\uart_tx_unit|Baud_Ctr\(1) & \uart_tx_unit|Baud_Ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr\(2),
	datab => \uart_tx_unit|Baud_Ctr\(3),
	datac => \uart_tx_unit|Baud_Ctr\(1),
	datad => \uart_tx_unit|Baud_Ctr\(0),
	combout => \uart_tx_unit|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y8_N2
\uart_tx_unit|TX_Dane_Gotowe~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|TX_Dane_Gotowe~1_combout\ = (!\baud_gen_unit|Equal0~0_combout\ & (!\baud_gen_unit|Equal0~1_combout\ & \uart_tx_unit|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|Equal0~0_combout\,
	datac => \baud_gen_unit|Equal0~1_combout\,
	datad => \uart_tx_unit|Equal1~0_combout\,
	combout => \uart_tx_unit|TX_Dane_Gotowe~1_combout\);

-- Location: LCCOMB_X28_Y8_N4
\uart_tx_unit|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector5~0_combout\ = (\uart_tx_unit|TX_Dane_Gotowe~1_combout\ & (((\uart_tx_unit|state_reg.bit_parzystosci~q\)))) # (!\uart_tx_unit|TX_Dane_Gotowe~1_combout\ & ((\uart_tx_unit|state_reg.stop~q\) # ((!\Bit_Par~input_o\ & 
-- \uart_tx_unit|state_reg.bit_parzystosci~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bit_Par~input_o\,
	datab => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	datac => \uart_tx_unit|state_reg.stop~q\,
	datad => \uart_tx_unit|TX_Dane_Gotowe~1_combout\,
	combout => \uart_tx_unit|Selector5~0_combout\);

-- Location: FF_X28_Y8_N5
\uart_tx_unit|state_reg.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector5~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.stop~q\);

-- Location: LCCOMB_X29_Y8_N10
\uart_tx_unit|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector2~1_combout\ = (\uart_tx_unit|state_reg.stop~q\) # ((\uart_tx_unit|state_reg.start~q\) # ((\Bit_Par~input_o\ & \uart_tx_unit|state_reg.bit_parzystosci~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bit_Par~input_o\,
	datab => \uart_tx_unit|state_reg.stop~q\,
	datac => \uart_tx_unit|state_reg.start~q\,
	datad => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	combout => \uart_tx_unit|Selector2~1_combout\);

-- Location: LCCOMB_X29_Y8_N0
\uart_tx_unit|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector2~2_combout\ = (\uart_tx_unit|Selector2~1_combout\ & ((\uart_tx_unit|TX_Dane_Gotowe~1_combout\) # ((!\uart_tx_unit|state_reg.czekaj~q\ & \TX_Start~input_o\)))) # (!\uart_tx_unit|Selector2~1_combout\ & 
-- (!\uart_tx_unit|state_reg.czekaj~q\ & (\TX_Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Selector2~1_combout\,
	datab => \uart_tx_unit|state_reg.czekaj~q\,
	datac => \TX_Start~input_o\,
	datad => \uart_tx_unit|TX_Dane_Gotowe~1_combout\,
	combout => \uart_tx_unit|Selector2~2_combout\);

-- Location: LCCOMB_X29_Y8_N12
\uart_tx_unit|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector4~0_combout\ = (\uart_tx_unit|state_reg.bit_parzystosci~q\ & (\Bit_Par~input_o\ & ((\uart_tx_unit|Selector2~0_combout\) # (!\uart_tx_unit|Selector2~2_combout\)))) # (!\uart_tx_unit|state_reg.bit_parzystosci~q\ & 
-- (((\uart_tx_unit|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Selector2~2_combout\,
	datab => \Bit_Par~input_o\,
	datac => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	datad => \uart_tx_unit|Selector2~0_combout\,
	combout => \uart_tx_unit|Selector4~0_combout\);

-- Location: FF_X29_Y8_N13
\uart_tx_unit|state_reg.bit_parzystosci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.bit_parzystosci~q\);

-- Location: LCCOMB_X23_Y8_N30
\Byte_Ctr_Next[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Byte_Ctr_Next[1]~1_combout\ = (\TX_Start~input_o\ & (\Byte_Ctr_Reg[3]~0_combout\ & (Byte_Ctr_Reg(0) $ (Byte_Ctr_Reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_Start~input_o\,
	datab => Byte_Ctr_Reg(0),
	datac => Byte_Ctr_Reg(1),
	datad => \Byte_Ctr_Reg[3]~0_combout\,
	combout => \Byte_Ctr_Next[1]~1_combout\);

-- Location: LCCOMB_X23_Y8_N14
\Byte_Ctr_Reg[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Byte_Ctr_Reg[3]~1_combout\ = (!\uart_tx_unit|TX_Dane_Gotowe~0_combout\) # (!\TX_Start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_Start~input_o\,
	datad => \uart_tx_unit|TX_Dane_Gotowe~0_combout\,
	combout => \Byte_Ctr_Reg[3]~1_combout\);

-- Location: FF_X23_Y8_N31
\Byte_Ctr_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Byte_Ctr_Next[1]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Byte_Ctr_Reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Byte_Ctr_Reg(1));

-- Location: LCCOMB_X23_Y8_N26
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = Byte_Ctr_Reg(3) $ (((Byte_Ctr_Reg(1) & (Byte_Ctr_Reg(2) & Byte_Ctr_Reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(3),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(2),
	datad => Byte_Ctr_Reg(0),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X23_Y8_N22
\Byte_Ctr_Next[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Byte_Ctr_Next[3]~3_combout\ = (\TX_Start~input_o\ & (\Add0~1_combout\ & \Byte_Ctr_Reg[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_Start~input_o\,
	datac => \Add0~1_combout\,
	datad => \Byte_Ctr_Reg[3]~0_combout\,
	combout => \Byte_Ctr_Next[3]~3_combout\);

-- Location: FF_X23_Y8_N23
\Byte_Ctr_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Byte_Ctr_Next[3]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Byte_Ctr_Reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Byte_Ctr_Reg(3));

-- Location: LCCOMB_X23_Y8_N20
\Byte_Ctr_Reg[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Byte_Ctr_Reg[3]~0_combout\ = (((Byte_Ctr_Reg(0)) # (!Byte_Ctr_Reg(2))) # (!Byte_Ctr_Reg(1))) # (!Byte_Ctr_Reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(3),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(2),
	datad => Byte_Ctr_Reg(0),
	combout => \Byte_Ctr_Reg[3]~0_combout\);

-- Location: LCCOMB_X23_Y8_N16
\Byte_Ctr_Next[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Byte_Ctr_Next[0]~0_combout\ = (\TX_Start~input_o\ & (!Byte_Ctr_Reg(0) & \Byte_Ctr_Reg[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_Start~input_o\,
	datac => Byte_Ctr_Reg(0),
	datad => \Byte_Ctr_Reg[3]~0_combout\,
	combout => \Byte_Ctr_Next[0]~0_combout\);

-- Location: FF_X23_Y8_N17
\Byte_Ctr_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Byte_Ctr_Next[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \Byte_Ctr_Reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Byte_Ctr_Reg(0));

-- Location: LCCOMB_X23_Y8_N28
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Byte_Ctr_Reg(2) $ (((Byte_Ctr_Reg(0) & Byte_Ctr_Reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(0),
	datac => Byte_Ctr_Reg(2),
	datad => Byte_Ctr_Reg(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X23_Y8_N0
\Byte_Ctr_Next[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Byte_Ctr_Next[2]~2_combout\ = (\TX_Start~input_o\ & (\Add0~0_combout\ & \Byte_Ctr_Reg[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_Start~input_o\,
	datab => \Add0~0_combout\,
	datad => \Byte_Ctr_Reg[3]~0_combout\,
	combout => \Byte_Ctr_Next[2]~2_combout\);

-- Location: FF_X23_Y8_N1
\Byte_Ctr_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Byte_Ctr_Next[2]~2_combout\,
	clrn => \reset~input_o\,
	ena => \Byte_Ctr_Reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Byte_Ctr_Reg(2));

-- Location: LCCOMB_X27_Y8_N28
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (Byte_Ctr_Reg(3) & (!Byte_Ctr_Reg(2))) # (!Byte_Ctr_Reg(3) & ((Byte_Ctr_Reg(0)) # (Byte_Ctr_Reg(2) $ (Byte_Ctr_Reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(2),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(0),
	datad => Byte_Ctr_Reg(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X27_Y8_N12
\uart_tx_unit|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector11~0_combout\ = (!\uart_tx_unit|state_reg.dane~q\ & \Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \Mux0~0_combout\,
	combout => \uart_tx_unit|Selector11~0_combout\);

-- Location: LCCOMB_X27_Y8_N22
\uart_tx_unit|Dane_Reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Reg[0]~0_combout\ = (\uart_tx_unit|state_reg.czekaj~q\ & (((\uart_tx_unit|state_reg.dane~q\ & \uart_tx_unit|TX_Dane_Gotowe~1_combout\)))) # (!\uart_tx_unit|state_reg.czekaj~q\ & ((\TX_Start~input_o\) # ((\uart_tx_unit|state_reg.dane~q\ 
-- & \uart_tx_unit|TX_Dane_Gotowe~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.czekaj~q\,
	datab => \TX_Start~input_o\,
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \uart_tx_unit|TX_Dane_Gotowe~1_combout\,
	combout => \uart_tx_unit|Dane_Reg[0]~0_combout\);

-- Location: FF_X27_Y8_N13
\uart_tx_unit|Dane_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector11~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_tx_unit|Dane_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(6));

-- Location: LCCOMB_X27_Y8_N2
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (Byte_Ctr_Reg(2) & (((!Byte_Ctr_Reg(0) & !Byte_Ctr_Reg(3))) # (!Byte_Ctr_Reg(1)))) # (!Byte_Ctr_Reg(2) & ((Byte_Ctr_Reg(1)) # ((Byte_Ctr_Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(2),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(0),
	datad => Byte_Ctr_Reg(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X27_Y8_N16
\uart_tx_unit|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector12~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(6))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Dane_Reg\(6),
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \Mux1~0_combout\,
	combout => \uart_tx_unit|Selector12~0_combout\);

-- Location: FF_X27_Y8_N17
\uart_tx_unit|Dane_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector12~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_tx_unit|Dane_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(5));

-- Location: LCCOMB_X27_Y8_N30
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (Byte_Ctr_Reg(0) & ((Byte_Ctr_Reg(2) & (Byte_Ctr_Reg(1) & !Byte_Ctr_Reg(3))) # (!Byte_Ctr_Reg(2) & (!Byte_Ctr_Reg(1) & Byte_Ctr_Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(2),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(0),
	datad => Byte_Ctr_Reg(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y8_N24
\uart_tx_unit|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector13~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(5))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|Dane_Reg\(5),
	datac => \Mux2~0_combout\,
	combout => \uart_tx_unit|Selector13~0_combout\);

-- Location: FF_X27_Y8_N25
\uart_tx_unit|Dane_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector13~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_tx_unit|Dane_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(4));

-- Location: LCCOMB_X27_Y8_N26
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (Byte_Ctr_Reg(2) & (!Byte_Ctr_Reg(1) & ((!Byte_Ctr_Reg(3))))) # (!Byte_Ctr_Reg(2) & ((Byte_Ctr_Reg(0) $ (Byte_Ctr_Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(2),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(0),
	datad => Byte_Ctr_Reg(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y8_N10
\uart_tx_unit|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector14~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(4))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|Dane_Reg\(4),
	datac => \Mux3~0_combout\,
	combout => \uart_tx_unit|Selector14~0_combout\);

-- Location: FF_X27_Y8_N11
\uart_tx_unit|Dane_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector14~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_tx_unit|Dane_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(3));

-- Location: LCCOMB_X27_Y8_N0
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (Byte_Ctr_Reg(2) & (!Byte_Ctr_Reg(3) & ((Byte_Ctr_Reg(0)) # (!Byte_Ctr_Reg(1))))) # (!Byte_Ctr_Reg(2) & ((Byte_Ctr_Reg(1)) # ((!Byte_Ctr_Reg(0) & Byte_Ctr_Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(2),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(0),
	datad => Byte_Ctr_Reg(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y8_N8
\uart_tx_unit|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector15~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(3))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Dane_Reg\(3),
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \Mux4~0_combout\,
	combout => \uart_tx_unit|Selector15~0_combout\);

-- Location: FF_X27_Y8_N9
\uart_tx_unit|Dane_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector15~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_tx_unit|Dane_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(2));

-- Location: LCCOMB_X27_Y8_N6
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (Byte_Ctr_Reg(2) & (((Byte_Ctr_Reg(0) & !Byte_Ctr_Reg(3))))) # (!Byte_Ctr_Reg(2) & (!Byte_Ctr_Reg(1) & ((Byte_Ctr_Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(2),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(0),
	datad => Byte_Ctr_Reg(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X27_Y8_N18
\uart_tx_unit|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector16~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(2))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Dane_Reg\(2),
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \Mux5~0_combout\,
	combout => \uart_tx_unit|Selector16~0_combout\);

-- Location: FF_X27_Y8_N19
\uart_tx_unit|Dane_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector16~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_tx_unit|Dane_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(1));

-- Location: LCCOMB_X27_Y8_N4
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (Byte_Ctr_Reg(2) & (Byte_Ctr_Reg(0) & ((!Byte_Ctr_Reg(3)) # (!Byte_Ctr_Reg(1))))) # (!Byte_Ctr_Reg(2) & (!Byte_Ctr_Reg(0) & (Byte_Ctr_Reg(1) $ (Byte_Ctr_Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(2),
	datab => Byte_Ctr_Reg(1),
	datac => Byte_Ctr_Reg(0),
	datad => Byte_Ctr_Reg(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X27_Y8_N20
\uart_tx_unit|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector17~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(1))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|Dane_Reg\(1),
	datac => \Mux6~0_combout\,
	combout => \uart_tx_unit|Selector17~0_combout\);

-- Location: FF_X27_Y8_N21
\uart_tx_unit|Dane_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector17~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_tx_unit|Dane_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(0));

-- Location: LCCOMB_X30_Y8_N2
\uart_tx_unit|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector0~0_combout\ = ((\uart_tx_unit|state_reg.stop~q\) # ((\uart_tx_unit|Dane_Reg\(0) & \uart_tx_unit|state_reg.dane~q\))) # (!\uart_tx_unit|state_reg.czekaj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Dane_Reg\(0),
	datab => \uart_tx_unit|state_reg.czekaj~q\,
	datac => \uart_tx_unit|state_reg.stop~q\,
	datad => \uart_tx_unit|state_reg.dane~q\,
	combout => \uart_tx_unit|Selector0~0_combout\);

-- Location: LCCOMB_X23_Y8_N8
\uart_tx_unit|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector0~1_combout\ = (\Bit_Par~input_o\ & (!\baud_gen_unit|Equal0~0_combout\ & !\baud_gen_unit|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bit_Par~input_o\,
	datac => \baud_gen_unit|Equal0~0_combout\,
	datad => \baud_gen_unit|Equal0~1_combout\,
	combout => \uart_tx_unit|Selector0~1_combout\);

-- Location: LCCOMB_X23_Y8_N12
\uart_tx_unit|VParzystosc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|VParzystosc~3_combout\ = (Byte_Ctr_Reg(0) & (Byte_Ctr_Reg(1) & (Byte_Ctr_Reg(3) $ (Byte_Ctr_Reg(2))))) # (!Byte_Ctr_Reg(0) & (Byte_Ctr_Reg(2) & (Byte_Ctr_Reg(1) $ (Byte_Ctr_Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Byte_Ctr_Reg(1),
	datab => Byte_Ctr_Reg(0),
	datac => Byte_Ctr_Reg(3),
	datad => Byte_Ctr_Reg(2),
	combout => \uart_tx_unit|VParzystosc~3_combout\);

-- Location: LCCOMB_X23_Y8_N18
\uart_tx_unit|VParzystosc\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|VParzystosc~combout\ = (\uart_tx_unit|VParzystosc~2_combout\ & ((\uart_tx_unit|VParzystosc~3_combout\))) # (!\uart_tx_unit|VParzystosc~2_combout\ & (\uart_tx_unit|VParzystosc~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|VParzystosc~combout\,
	datac => \uart_tx_unit|VParzystosc~2_combout\,
	datad => \uart_tx_unit|VParzystosc~3_combout\,
	combout => \uart_tx_unit|VParzystosc~combout\);

-- Location: LCCOMB_X23_Y8_N2
\uart_tx_unit|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector0~2_combout\ = (\uart_tx_unit|Selector0~1_combout\ & ((!\uart_tx_unit|VParzystosc~combout\))) # (!\uart_tx_unit|Selector0~1_combout\ & (\uart_tx_unit|TX_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Selector0~1_combout\,
	datab => \uart_tx_unit|TX_reg~q\,
	datad => \uart_tx_unit|VParzystosc~combout\,
	combout => \uart_tx_unit|Selector0~2_combout\);

-- Location: LCCOMB_X23_Y8_N24
\uart_tx_unit|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector0~3_combout\ = (!\uart_tx_unit|Selector0~0_combout\ & ((\uart_tx_unit|Selector0~2_combout\) # (!\uart_tx_unit|state_reg.bit_parzystosci~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	datac => \uart_tx_unit|Selector0~0_combout\,
	datad => \uart_tx_unit|Selector0~2_combout\,
	combout => \uart_tx_unit|Selector0~3_combout\);

-- Location: FF_X23_Y8_N25
\uart_tx_unit|TX_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector0~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|TX_reg~q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_TX <= \TX~output_o\;

ww_TX_Dane_Gotowe <= \TX_Dane_Gotowe~output_o\;
END structure;


