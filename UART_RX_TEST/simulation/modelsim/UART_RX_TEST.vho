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

-- DATE "04/20/2016 00:37:51"

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

ENTITY 	UART_RX_TEST IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	RX : IN std_logic;
	Bit_Par : IN std_logic;
	Dane_Wyj : BUFFER std_logic_vector(7 DOWNTO 0);
	Blad_Par : BUFFER std_logic;
	RX_Dane_Gotowe : BUFFER std_logic
	);
END UART_RX_TEST;

-- Design Ports Information
-- Dane_Wyj[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dane_Wyj[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dane_Wyj[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dane_Wyj[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dane_Wyj[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dane_Wyj[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dane_Wyj[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dane_Wyj[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blad_Par	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_Dane_Gotowe	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bit_Par	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_RX_TEST IS
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
SIGNAL ww_RX : std_logic;
SIGNAL ww_Bit_Par : std_logic;
SIGNAL ww_Dane_Wyj : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Blad_Par : std_logic;
SIGNAL ww_RX_Dane_Gotowe : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Dane_Wyj[0]~output_o\ : std_logic;
SIGNAL \Dane_Wyj[1]~output_o\ : std_logic;
SIGNAL \Dane_Wyj[2]~output_o\ : std_logic;
SIGNAL \Dane_Wyj[3]~output_o\ : std_logic;
SIGNAL \Dane_Wyj[4]~output_o\ : std_logic;
SIGNAL \Dane_Wyj[5]~output_o\ : std_logic;
SIGNAL \Dane_Wyj[6]~output_o\ : std_logic;
SIGNAL \Dane_Wyj[7]~output_o\ : std_logic;
SIGNAL \Blad_Par~output_o\ : std_logic;
SIGNAL \RX_Dane_Gotowe~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Bit_Par~input_o\ : std_logic;
SIGNAL \baud_gen_unit|Add0~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~1\ : std_logic;
SIGNAL \baud_gen_unit|Add0~2_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~3\ : std_logic;
SIGNAL \baud_gen_unit|Add0~5\ : std_logic;
SIGNAL \baud_gen_unit|Add0~6_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~7\ : std_logic;
SIGNAL \baud_gen_unit|Add0~8_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~9\ : std_logic;
SIGNAL \baud_gen_unit|Add0~10_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~11\ : std_logic;
SIGNAL \baud_gen_unit|Add0~12_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~13\ : std_logic;
SIGNAL \baud_gen_unit|Add0~14_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~4_combout\ : std_logic;
SIGNAL \baud_gen_unit|r_next[2]~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~8_combout\ : std_logic;
SIGNAL \uart_rx_unit|Equal1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Equal1~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[7]~10_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[7]~12_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[7]~11_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[7]~13_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[7]~14_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~9\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[1]~15_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[1]~16\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[2]~17_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[2]~18\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[3]~19_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[3]~20\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[4]~21_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[4]~22\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[5]~23_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[5]~24\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[6]~25_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[6]~26\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[7]~27_combout\ : std_logic;
SIGNAL \uart_rx_unit|Equal1~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[0]~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector4~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.stop~q\ : std_logic;
SIGNAL \uart_rx_unit|Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.czekaj~q\ : std_logic;
SIGNAL \uart_rx_unit|Selector1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Blad_Par~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector3~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector1~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector1~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector3~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.bit_parzystosci~q\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[7]~29_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector1~3_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.start~q\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[3]~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[0]~3_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[1]~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Add1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[2]~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Add1~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[3]~4_combout\ : std_logic;
SIGNAL \uart_rx_unit|Nast_Stan~5_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector2~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.dane~q\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[0]~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[6]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[5]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[4]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[2]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_unit|process_1~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|process_1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|process_1~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Blad_Par~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|RX_Dane_Gotowe~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_unit|Dane_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_unit|Dane_Ctr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \baud_gen_unit|r_reg\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_RX <= RX;
ww_Bit_Par <= Bit_Par;
Dane_Wyj <= ww_Dane_Wyj;
Blad_Par <= ww_Blad_Par;
RX_Dane_Gotowe <= ww_RX_Dane_Gotowe;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X11_Y15_N20
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

-- Location: IOOBUF_X31_Y14_N16
\Dane_Wyj[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(0),
	devoe => ww_devoe,
	o => \Dane_Wyj[0]~output_o\);

-- Location: IOOBUF_X31_Y14_N9
\Dane_Wyj[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(1),
	devoe => ww_devoe,
	o => \Dane_Wyj[1]~output_o\);

-- Location: IOOBUF_X31_Y14_N2
\Dane_Wyj[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(2),
	devoe => ww_devoe,
	o => \Dane_Wyj[2]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\Dane_Wyj[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(3),
	devoe => ww_devoe,
	o => \Dane_Wyj[3]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\Dane_Wyj[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(4),
	devoe => ww_devoe,
	o => \Dane_Wyj[4]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\Dane_Wyj[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(5),
	devoe => ww_devoe,
	o => \Dane_Wyj[5]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\Dane_Wyj[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(6),
	devoe => ww_devoe,
	o => \Dane_Wyj[6]~output_o\);

-- Location: IOOBUF_X31_Y22_N2
\Dane_Wyj[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Dane_Reg\(7),
	devoe => ww_devoe,
	o => \Dane_Wyj[7]~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\Blad_Par~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Blad_Par~0_combout\,
	devoe => ww_devoe,
	o => \Blad_Par~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\RX_Dane_Gotowe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|RX_Dane_Gotowe~0_combout\,
	devoe => ww_devoe,
	o => \RX_Dane_Gotowe~output_o\);

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

-- Location: IOIBUF_X19_Y25_N1
\RX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX,
	o => \RX~input_o\);

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

-- Location: IOIBUF_X31_Y11_N22
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

-- Location: LCCOMB_X28_Y15_N14
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

-- Location: FF_X28_Y15_N15
\baud_gen_unit|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(0));

-- Location: LCCOMB_X28_Y15_N16
\baud_gen_unit|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~2_combout\ = (\baud_gen_unit|r_reg\(1) & (!\baud_gen_unit|Add0~1\)) # (!\baud_gen_unit|r_reg\(1) & ((\baud_gen_unit|Add0~1\) # (GND)))
-- \baud_gen_unit|Add0~3\ = CARRY((!\baud_gen_unit|Add0~1\) # (!\baud_gen_unit|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|r_reg\(1),
	datad => VCC,
	cin => \baud_gen_unit|Add0~1\,
	combout => \baud_gen_unit|Add0~2_combout\,
	cout => \baud_gen_unit|Add0~3\);

-- Location: FF_X28_Y15_N17
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

-- Location: LCCOMB_X28_Y15_N18
\baud_gen_unit|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~4_combout\ = (\baud_gen_unit|r_reg\(2) & (\baud_gen_unit|Add0~3\ $ (GND))) # (!\baud_gen_unit|r_reg\(2) & (!\baud_gen_unit|Add0~3\ & VCC))
-- \baud_gen_unit|Add0~5\ = CARRY((\baud_gen_unit|r_reg\(2) & !\baud_gen_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(2),
	datad => VCC,
	cin => \baud_gen_unit|Add0~3\,
	combout => \baud_gen_unit|Add0~4_combout\,
	cout => \baud_gen_unit|Add0~5\);

-- Location: LCCOMB_X28_Y15_N20
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

-- Location: FF_X28_Y15_N21
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

-- Location: LCCOMB_X28_Y15_N22
\baud_gen_unit|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~8_combout\ = (\baud_gen_unit|r_reg\(4) & (\baud_gen_unit|Add0~7\ $ (GND))) # (!\baud_gen_unit|r_reg\(4) & (!\baud_gen_unit|Add0~7\ & VCC))
-- \baud_gen_unit|Add0~9\ = CARRY((\baud_gen_unit|r_reg\(4) & !\baud_gen_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(4),
	datad => VCC,
	cin => \baud_gen_unit|Add0~7\,
	combout => \baud_gen_unit|Add0~8_combout\,
	cout => \baud_gen_unit|Add0~9\);

-- Location: FF_X28_Y15_N23
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

-- Location: LCCOMB_X28_Y15_N24
\baud_gen_unit|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~10_combout\ = (\baud_gen_unit|r_reg\(5) & (!\baud_gen_unit|Add0~9\)) # (!\baud_gen_unit|r_reg\(5) & ((\baud_gen_unit|Add0~9\) # (GND)))
-- \baud_gen_unit|Add0~11\ = CARRY((!\baud_gen_unit|Add0~9\) # (!\baud_gen_unit|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|r_reg\(5),
	datad => VCC,
	cin => \baud_gen_unit|Add0~9\,
	combout => \baud_gen_unit|Add0~10_combout\,
	cout => \baud_gen_unit|Add0~11\);

-- Location: FF_X28_Y15_N25
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

-- Location: LCCOMB_X28_Y15_N26
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

-- Location: FF_X28_Y15_N27
\baud_gen_unit|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(6));

-- Location: LCCOMB_X28_Y15_N28
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

-- Location: FF_X28_Y15_N29
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

-- Location: LCCOMB_X28_Y15_N8
\baud_gen_unit|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~0_combout\ = (!\baud_gen_unit|r_reg\(6) & (!\baud_gen_unit|r_reg\(7) & (!\baud_gen_unit|r_reg\(4) & !\baud_gen_unit|r_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(6),
	datab => \baud_gen_unit|r_reg\(7),
	datac => \baud_gen_unit|r_reg\(4),
	datad => \baud_gen_unit|r_reg\(5),
	combout => \baud_gen_unit|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y15_N30
\baud_gen_unit|r_next[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|r_next[2]~0_combout\ = (\baud_gen_unit|Add0~4_combout\ & ((!\baud_gen_unit|Equal0~1_combout\) # (!\baud_gen_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~0_combout\,
	datac => \baud_gen_unit|Equal0~1_combout\,
	datad => \baud_gen_unit|Add0~4_combout\,
	combout => \baud_gen_unit|r_next[2]~0_combout\);

-- Location: FF_X28_Y15_N31
\baud_gen_unit|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|r_next[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(2));

-- Location: LCCOMB_X28_Y15_N4
\baud_gen_unit|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~1_combout\ = (!\baud_gen_unit|r_reg\(2) & (!\baud_gen_unit|r_reg\(3) & (\baud_gen_unit|r_reg\(0) & \baud_gen_unit|r_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(2),
	datab => \baud_gen_unit|r_reg\(3),
	datac => \baud_gen_unit|r_reg\(0),
	datad => \baud_gen_unit|r_reg\(1),
	combout => \baud_gen_unit|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y15_N10
\uart_rx_unit|Baud_Ctr[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[0]~8_combout\ = \uart_rx_unit|Baud_Ctr\(0) $ (VCC)
-- \uart_rx_unit|Baud_Ctr[0]~9\ = CARRY(\uart_rx_unit|Baud_Ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(0),
	datad => VCC,
	combout => \uart_rx_unit|Baud_Ctr[0]~8_combout\,
	cout => \uart_rx_unit|Baud_Ctr[0]~9\);

-- Location: LCCOMB_X27_Y15_N28
\uart_rx_unit|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Equal1~0_combout\ = (\uart_rx_unit|Baud_Ctr\(1) & (\uart_rx_unit|Baud_Ctr\(0) & (\uart_rx_unit|Baud_Ctr\(2) & \uart_rx_unit|Baud_Ctr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(1),
	datab => \uart_rx_unit|Baud_Ctr\(0),
	datac => \uart_rx_unit|Baud_Ctr\(2),
	datad => \uart_rx_unit|Baud_Ctr\(3),
	combout => \uart_rx_unit|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y15_N4
\uart_rx_unit|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Equal1~2_combout\ = (\uart_rx_unit|Equal1~1_combout\ & \uart_rx_unit|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Equal1~1_combout\,
	datad => \uart_rx_unit|Equal1~0_combout\,
	combout => \uart_rx_unit|Equal1~2_combout\);

-- Location: LCCOMB_X27_Y15_N30
\uart_rx_unit|Baud_Ctr[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[7]~10_combout\ = ((\uart_rx_unit|Equal1~2_combout\ & ((\uart_rx_unit|Stan.dane~q\) # (\uart_rx_unit|Stan.start~q\)))) # (!\uart_rx_unit|Stan.czekaj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.czekaj~q\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Equal1~2_combout\,
	datad => \uart_rx_unit|Stan.start~q\,
	combout => \uart_rx_unit|Baud_Ctr[7]~10_combout\);

-- Location: LCCOMB_X25_Y15_N12
\uart_rx_unit|Baud_Ctr[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[7]~12_combout\ = (\uart_rx_unit|Stan.stop~q\) # ((\uart_rx_unit|Stan.start~q\) # ((\uart_rx_unit|Stan.bit_parzystosci~q\) # (\uart_rx_unit|Stan.dane~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.stop~q\,
	datab => \uart_rx_unit|Stan.start~q\,
	datac => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datad => \uart_rx_unit|Stan.dane~q\,
	combout => \uart_rx_unit|Baud_Ctr[7]~12_combout\);

-- Location: LCCOMB_X27_Y15_N0
\uart_rx_unit|Baud_Ctr[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[7]~11_combout\ = (\Bit_Par~input_o\ & (\RX~input_o\ & (!\uart_rx_unit|Stan.czekaj~q\))) # (!\Bit_Par~input_o\ & ((\uart_rx_unit|Stan.bit_parzystosci~q\) # ((\RX~input_o\ & !\uart_rx_unit|Stan.czekaj~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bit_Par~input_o\,
	datab => \RX~input_o\,
	datac => \uart_rx_unit|Stan.czekaj~q\,
	datad => \uart_rx_unit|Stan.bit_parzystosci~q\,
	combout => \uart_rx_unit|Baud_Ctr[7]~11_combout\);

-- Location: LCCOMB_X27_Y15_N2
\uart_rx_unit|Baud_Ctr[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[7]~13_combout\ = (\uart_rx_unit|Baud_Ctr[7]~11_combout\) # ((\uart_rx_unit|Baud_Ctr[7]~12_combout\ & ((!\baud_gen_unit|Equal0~0_combout\) # (!\baud_gen_unit|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~1_combout\,
	datab => \baud_gen_unit|Equal0~0_combout\,
	datac => \uart_rx_unit|Baud_Ctr[7]~12_combout\,
	datad => \uart_rx_unit|Baud_Ctr[7]~11_combout\,
	combout => \uart_rx_unit|Baud_Ctr[7]~13_combout\);

-- Location: LCCOMB_X27_Y15_N8
\uart_rx_unit|Baud_Ctr[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[7]~14_combout\ = (!\uart_rx_unit|Baud_Ctr[7]~13_combout\ & (((!\uart_rx_unit|Stan.stop~q\ & !\uart_rx_unit|Stan.bit_parzystosci~q\)) # (!\uart_rx_unit|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.stop~q\,
	datab => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datac => \uart_rx_unit|Equal1~2_combout\,
	datad => \uart_rx_unit|Baud_Ctr[7]~13_combout\,
	combout => \uart_rx_unit|Baud_Ctr[7]~14_combout\);

-- Location: FF_X27_Y15_N11
\uart_rx_unit|Baud_Ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[0]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(0));

-- Location: LCCOMB_X27_Y15_N12
\uart_rx_unit|Baud_Ctr[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[1]~15_combout\ = (\uart_rx_unit|Baud_Ctr\(1) & (!\uart_rx_unit|Baud_Ctr[0]~9\)) # (!\uart_rx_unit|Baud_Ctr\(1) & ((\uart_rx_unit|Baud_Ctr[0]~9\) # (GND)))
-- \uart_rx_unit|Baud_Ctr[1]~16\ = CARRY((!\uart_rx_unit|Baud_Ctr[0]~9\) # (!\uart_rx_unit|Baud_Ctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(1),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[0]~9\,
	combout => \uart_rx_unit|Baud_Ctr[1]~15_combout\,
	cout => \uart_rx_unit|Baud_Ctr[1]~16\);

-- Location: FF_X27_Y15_N13
\uart_rx_unit|Baud_Ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[1]~15_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(1));

-- Location: LCCOMB_X27_Y15_N14
\uart_rx_unit|Baud_Ctr[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[2]~17_combout\ = (\uart_rx_unit|Baud_Ctr\(2) & (\uart_rx_unit|Baud_Ctr[1]~16\ $ (GND))) # (!\uart_rx_unit|Baud_Ctr\(2) & (!\uart_rx_unit|Baud_Ctr[1]~16\ & VCC))
-- \uart_rx_unit|Baud_Ctr[2]~18\ = CARRY((\uart_rx_unit|Baud_Ctr\(2) & !\uart_rx_unit|Baud_Ctr[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Baud_Ctr\(2),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[1]~16\,
	combout => \uart_rx_unit|Baud_Ctr[2]~17_combout\,
	cout => \uart_rx_unit|Baud_Ctr[2]~18\);

-- Location: FF_X27_Y15_N15
\uart_rx_unit|Baud_Ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[2]~17_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(2));

-- Location: LCCOMB_X27_Y15_N16
\uart_rx_unit|Baud_Ctr[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[3]~19_combout\ = (\uart_rx_unit|Baud_Ctr\(3) & (!\uart_rx_unit|Baud_Ctr[2]~18\)) # (!\uart_rx_unit|Baud_Ctr\(3) & ((\uart_rx_unit|Baud_Ctr[2]~18\) # (GND)))
-- \uart_rx_unit|Baud_Ctr[3]~20\ = CARRY((!\uart_rx_unit|Baud_Ctr[2]~18\) # (!\uart_rx_unit|Baud_Ctr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Baud_Ctr\(3),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[2]~18\,
	combout => \uart_rx_unit|Baud_Ctr[3]~19_combout\,
	cout => \uart_rx_unit|Baud_Ctr[3]~20\);

-- Location: FF_X27_Y15_N17
\uart_rx_unit|Baud_Ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[3]~19_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(3));

-- Location: LCCOMB_X27_Y15_N18
\uart_rx_unit|Baud_Ctr[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[4]~21_combout\ = (\uart_rx_unit|Baud_Ctr\(4) & (\uart_rx_unit|Baud_Ctr[3]~20\ $ (GND))) # (!\uart_rx_unit|Baud_Ctr\(4) & (!\uart_rx_unit|Baud_Ctr[3]~20\ & VCC))
-- \uart_rx_unit|Baud_Ctr[4]~22\ = CARRY((\uart_rx_unit|Baud_Ctr\(4) & !\uart_rx_unit|Baud_Ctr[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(4),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[3]~20\,
	combout => \uart_rx_unit|Baud_Ctr[4]~21_combout\,
	cout => \uart_rx_unit|Baud_Ctr[4]~22\);

-- Location: FF_X27_Y15_N19
\uart_rx_unit|Baud_Ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[4]~21_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(4));

-- Location: LCCOMB_X27_Y15_N20
\uart_rx_unit|Baud_Ctr[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[5]~23_combout\ = (\uart_rx_unit|Baud_Ctr\(5) & (!\uart_rx_unit|Baud_Ctr[4]~22\)) # (!\uart_rx_unit|Baud_Ctr\(5) & ((\uart_rx_unit|Baud_Ctr[4]~22\) # (GND)))
-- \uart_rx_unit|Baud_Ctr[5]~24\ = CARRY((!\uart_rx_unit|Baud_Ctr[4]~22\) # (!\uart_rx_unit|Baud_Ctr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Baud_Ctr\(5),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[4]~22\,
	combout => \uart_rx_unit|Baud_Ctr[5]~23_combout\,
	cout => \uart_rx_unit|Baud_Ctr[5]~24\);

-- Location: FF_X27_Y15_N21
\uart_rx_unit|Baud_Ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[5]~23_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(5));

-- Location: LCCOMB_X27_Y15_N22
\uart_rx_unit|Baud_Ctr[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[6]~25_combout\ = (\uart_rx_unit|Baud_Ctr\(6) & (\uart_rx_unit|Baud_Ctr[5]~24\ $ (GND))) # (!\uart_rx_unit|Baud_Ctr\(6) & (!\uart_rx_unit|Baud_Ctr[5]~24\ & VCC))
-- \uart_rx_unit|Baud_Ctr[6]~26\ = CARRY((\uart_rx_unit|Baud_Ctr\(6) & !\uart_rx_unit|Baud_Ctr[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Baud_Ctr\(6),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[5]~24\,
	combout => \uart_rx_unit|Baud_Ctr[6]~25_combout\,
	cout => \uart_rx_unit|Baud_Ctr[6]~26\);

-- Location: FF_X27_Y15_N23
\uart_rx_unit|Baud_Ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[6]~25_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(6));

-- Location: LCCOMB_X27_Y15_N24
\uart_rx_unit|Baud_Ctr[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[7]~27_combout\ = \uart_rx_unit|Baud_Ctr[6]~26\ $ (\uart_rx_unit|Baud_Ctr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_unit|Baud_Ctr\(7),
	cin => \uart_rx_unit|Baud_Ctr[6]~26\,
	combout => \uart_rx_unit|Baud_Ctr[7]~27_combout\);

-- Location: FF_X27_Y15_N25
\uart_rx_unit|Baud_Ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Baud_Ctr[7]~27_combout\,
	clrn => \reset~input_o\,
	sclr => \uart_rx_unit|Baud_Ctr[7]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(7));

-- Location: LCCOMB_X27_Y15_N6
\uart_rx_unit|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Equal1~1_combout\ = (!\uart_rx_unit|Baud_Ctr\(6) & (!\uart_rx_unit|Baud_Ctr\(7) & (!\uart_rx_unit|Baud_Ctr\(4) & !\uart_rx_unit|Baud_Ctr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(6),
	datab => \uart_rx_unit|Baud_Ctr\(7),
	datac => \uart_rx_unit|Baud_Ctr\(4),
	datad => \uart_rx_unit|Baud_Ctr\(5),
	combout => \uart_rx_unit|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y15_N2
\uart_rx_unit|Dane_Reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[0]~0_combout\ = (\baud_gen_unit|Equal0~1_combout\ & (\baud_gen_unit|Equal0~0_combout\ & (\uart_rx_unit|Equal1~1_combout\ & \uart_rx_unit|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~1_combout\,
	datab => \baud_gen_unit|Equal0~0_combout\,
	datac => \uart_rx_unit|Equal1~1_combout\,
	datad => \uart_rx_unit|Equal1~0_combout\,
	combout => \uart_rx_unit|Dane_Reg[0]~0_combout\);

-- Location: LCCOMB_X25_Y15_N22
\uart_rx_unit|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector4~0_combout\ = (\uart_rx_unit|Dane_Reg[0]~0_combout\ & (\uart_rx_unit|Stan.bit_parzystosci~q\)) # (!\uart_rx_unit|Dane_Reg[0]~0_combout\ & ((\uart_rx_unit|Stan.stop~q\) # ((\uart_rx_unit|Stan.bit_parzystosci~q\ & 
-- !\Bit_Par~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datab => \Bit_Par~input_o\,
	datac => \uart_rx_unit|Stan.stop~q\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Selector4~0_combout\);

-- Location: FF_X25_Y15_N23
\uart_rx_unit|Stan.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.stop~q\);

-- Location: LCCOMB_X29_Y15_N22
\uart_rx_unit|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector0~0_combout\ = (\RX~input_o\ & (\uart_rx_unit|Stan.czekaj~q\ & ((!\uart_rx_unit|Dane_Reg[0]~0_combout\) # (!\uart_rx_unit|Stan.stop~q\)))) # (!\RX~input_o\ & (((!\uart_rx_unit|Dane_Reg[0]~0_combout\)) # 
-- (!\uart_rx_unit|Stan.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datab => \uart_rx_unit|Stan.stop~q\,
	datac => \uart_rx_unit|Stan.czekaj~q\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Selector0~0_combout\);

-- Location: FF_X29_Y15_N23
\uart_rx_unit|Stan.czekaj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.czekaj~q\);

-- Location: LCCOMB_X29_Y15_N12
\uart_rx_unit|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector1~0_combout\ = (!\RX~input_o\ & !\uart_rx_unit|Stan.czekaj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \uart_rx_unit|Stan.czekaj~q\,
	combout => \uart_rx_unit|Selector1~0_combout\);

-- Location: LCCOMB_X27_Y15_N26
\uart_rx_unit|Blad_Par~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Blad_Par~1_combout\ = (\Bit_Par~input_o\ & \uart_rx_unit|Stan.bit_parzystosci~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bit_Par~input_o\,
	datad => \uart_rx_unit|Stan.bit_parzystosci~q\,
	combout => \uart_rx_unit|Blad_Par~1_combout\);

-- Location: LCCOMB_X25_Y15_N14
\uart_rx_unit|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector3~0_combout\ = (\uart_rx_unit|Nast_Stan~5_combout\ & (\uart_rx_unit|Stan.dane~q\ & (!\uart_rx_unit|Baud_Ctr[7]~29_combout\ & \uart_rx_unit|Dane_Reg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Nast_Stan~5_combout\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Baud_Ctr[7]~29_combout\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Selector3~0_combout\);

-- Location: LCCOMB_X25_Y15_N24
\uart_rx_unit|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector1~1_combout\ = (\uart_rx_unit|Stan.start~q\) # ((\uart_rx_unit|Stan.stop~q\) # ((\Bit_Par~input_o\ & \uart_rx_unit|Stan.bit_parzystosci~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.start~q\,
	datab => \Bit_Par~input_o\,
	datac => \uart_rx_unit|Stan.stop~q\,
	datad => \uart_rx_unit|Stan.bit_parzystosci~q\,
	combout => \uart_rx_unit|Selector1~1_combout\);

-- Location: LCCOMB_X25_Y15_N10
\uart_rx_unit|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector1~2_combout\ = (\uart_rx_unit|Dane_Reg[0]~0_combout\ & ((\uart_rx_unit|Selector1~1_combout\) # ((\uart_rx_unit|Nast_Stan~5_combout\ & \uart_rx_unit|Stan.dane~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Nast_Stan~5_combout\,
	datab => \uart_rx_unit|Selector1~1_combout\,
	datac => \uart_rx_unit|Stan.dane~q\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Selector1~2_combout\);

-- Location: LCCOMB_X25_Y15_N4
\uart_rx_unit|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector3~1_combout\ = (\uart_rx_unit|Selector1~0_combout\ & (((\uart_rx_unit|Selector3~0_combout\)))) # (!\uart_rx_unit|Selector1~0_combout\ & ((\uart_rx_unit|Selector1~2_combout\ & ((\uart_rx_unit|Selector3~0_combout\))) # 
-- (!\uart_rx_unit|Selector1~2_combout\ & (\uart_rx_unit|Blad_Par~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Selector1~0_combout\,
	datab => \uart_rx_unit|Blad_Par~1_combout\,
	datac => \uart_rx_unit|Selector3~0_combout\,
	datad => \uart_rx_unit|Selector1~2_combout\,
	combout => \uart_rx_unit|Selector3~1_combout\);

-- Location: FF_X25_Y15_N5
\uart_rx_unit|Stan.bit_parzystosci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector3~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.bit_parzystosci~q\);

-- Location: LCCOMB_X25_Y15_N8
\uart_rx_unit|Baud_Ctr[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[7]~29_combout\ = (!\Bit_Par~input_o\ & \uart_rx_unit|Stan.bit_parzystosci~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bit_Par~input_o\,
	datad => \uart_rx_unit|Stan.bit_parzystosci~q\,
	combout => \uart_rx_unit|Baud_Ctr[7]~29_combout\);

-- Location: LCCOMB_X25_Y15_N18
\uart_rx_unit|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector1~3_combout\ = (!\uart_rx_unit|Baud_Ctr[7]~29_combout\ & ((\uart_rx_unit|Selector1~0_combout\) # ((\uart_rx_unit|Stan.start~q\ & !\uart_rx_unit|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr[7]~29_combout\,
	datab => \uart_rx_unit|Selector1~0_combout\,
	datac => \uart_rx_unit|Stan.start~q\,
	datad => \uart_rx_unit|Selector1~2_combout\,
	combout => \uart_rx_unit|Selector1~3_combout\);

-- Location: FF_X25_Y15_N19
\uart_rx_unit|Stan.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector1~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.start~q\);

-- Location: LCCOMB_X25_Y15_N6
\uart_rx_unit|Dane_Ctr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[3]~0_combout\ = ((!\uart_rx_unit|Stan.start~q\ & ((\uart_rx_unit|Nast_Stan~5_combout\) # (!\uart_rx_unit|Stan.dane~q\)))) # (!\uart_rx_unit|Dane_Reg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.start~q\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Nast_Stan~5_combout\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[3]~0_combout\);

-- Location: LCCOMB_X25_Y15_N2
\uart_rx_unit|Dane_Ctr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[0]~3_combout\ = (\uart_rx_unit|Dane_Ctr\(0) & ((\uart_rx_unit|Dane_Ctr[3]~0_combout\))) # (!\uart_rx_unit|Dane_Ctr\(0) & (\uart_rx_unit|Stan.dane~q\ & !\uart_rx_unit|Dane_Ctr[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Ctr\(0),
	datad => \uart_rx_unit|Dane_Ctr[3]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[0]~3_combout\);

-- Location: FF_X25_Y15_N3
\uart_rx_unit|Dane_Ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Ctr[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Ctr\(0));

-- Location: LCCOMB_X25_Y15_N20
\uart_rx_unit|Dane_Ctr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[1]~2_combout\ = (\uart_rx_unit|Dane_Ctr[3]~0_combout\ & (((\uart_rx_unit|Dane_Ctr\(1))))) # (!\uart_rx_unit|Dane_Ctr[3]~0_combout\ & (\uart_rx_unit|Stan.dane~q\ & (\uart_rx_unit|Dane_Ctr\(0) $ (\uart_rx_unit|Dane_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Ctr\(0),
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Ctr\(1),
	datad => \uart_rx_unit|Dane_Ctr[3]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[1]~2_combout\);

-- Location: FF_X25_Y15_N21
\uart_rx_unit|Dane_Ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Ctr[1]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Ctr\(1));

-- Location: LCCOMB_X25_Y15_N0
\uart_rx_unit|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Add1~0_combout\ = \uart_rx_unit|Dane_Ctr\(2) $ (((\uart_rx_unit|Dane_Ctr\(0) & \uart_rx_unit|Dane_Ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Ctr\(2),
	datac => \uart_rx_unit|Dane_Ctr\(0),
	datad => \uart_rx_unit|Dane_Ctr\(1),
	combout => \uart_rx_unit|Add1~0_combout\);

-- Location: LCCOMB_X25_Y15_N30
\uart_rx_unit|Dane_Ctr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[2]~1_combout\ = (\uart_rx_unit|Dane_Ctr[3]~0_combout\ & (((\uart_rx_unit|Dane_Ctr\(2))))) # (!\uart_rx_unit|Dane_Ctr[3]~0_combout\ & (\uart_rx_unit|Stan.dane~q\ & (\uart_rx_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.dane~q\,
	datab => \uart_rx_unit|Add1~0_combout\,
	datac => \uart_rx_unit|Dane_Ctr\(2),
	datad => \uart_rx_unit|Dane_Ctr[3]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[2]~1_combout\);

-- Location: FF_X25_Y15_N31
\uart_rx_unit|Dane_Ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Ctr[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Ctr\(2));

-- Location: LCCOMB_X24_Y15_N12
\uart_rx_unit|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Add1~1_combout\ = \uart_rx_unit|Dane_Ctr\(3) $ (((\uart_rx_unit|Dane_Ctr\(1) & (\uart_rx_unit|Dane_Ctr\(2) & \uart_rx_unit|Dane_Ctr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Ctr\(1),
	datab => \uart_rx_unit|Dane_Ctr\(3),
	datac => \uart_rx_unit|Dane_Ctr\(2),
	datad => \uart_rx_unit|Dane_Ctr\(0),
	combout => \uart_rx_unit|Add1~1_combout\);

-- Location: LCCOMB_X25_Y15_N16
\uart_rx_unit|Dane_Ctr[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[3]~4_combout\ = (\uart_rx_unit|Dane_Ctr[3]~0_combout\ & (((\uart_rx_unit|Dane_Ctr\(3))))) # (!\uart_rx_unit|Dane_Ctr[3]~0_combout\ & (\uart_rx_unit|Add1~1_combout\ & (\uart_rx_unit|Stan.dane~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Add1~1_combout\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Ctr\(3),
	datad => \uart_rx_unit|Dane_Ctr[3]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[3]~4_combout\);

-- Location: FF_X25_Y15_N17
\uart_rx_unit|Dane_Ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Ctr[3]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Ctr\(3));

-- Location: LCCOMB_X25_Y15_N26
\uart_rx_unit|Nast_Stan~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Nast_Stan~5_combout\ = (\uart_rx_unit|Dane_Ctr\(0) & (\uart_rx_unit|Dane_Ctr\(1) & (\uart_rx_unit|Dane_Ctr\(2) & !\uart_rx_unit|Dane_Ctr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Ctr\(0),
	datab => \uart_rx_unit|Dane_Ctr\(1),
	datac => \uart_rx_unit|Dane_Ctr\(2),
	datad => \uart_rx_unit|Dane_Ctr\(3),
	combout => \uart_rx_unit|Nast_Stan~5_combout\);

-- Location: LCCOMB_X25_Y15_N28
\uart_rx_unit|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector2~0_combout\ = (\uart_rx_unit|Dane_Reg[0]~0_combout\ & ((\uart_rx_unit|Stan.start~q\) # ((!\uart_rx_unit|Nast_Stan~5_combout\ & \uart_rx_unit|Stan.dane~q\)))) # (!\uart_rx_unit|Dane_Reg[0]~0_combout\ & 
-- (((\uart_rx_unit|Stan.dane~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Nast_Stan~5_combout\,
	datab => \uart_rx_unit|Stan.start~q\,
	datac => \uart_rx_unit|Stan.dane~q\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Selector2~0_combout\);

-- Location: FF_X25_Y15_N29
\uart_rx_unit|Stan.dane\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.dane~q\);

-- Location: LCCOMB_X28_Y15_N6
\uart_rx_unit|Dane_Reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[0]~1_combout\ = (\uart_rx_unit|Stan.dane~q\ & \uart_rx_unit|Dane_Reg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.dane~q\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Dane_Reg[0]~1_combout\);

-- Location: FF_X29_Y15_N19
\uart_rx_unit|Dane_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RX~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(7));

-- Location: LCCOMB_X29_Y15_N16
\uart_rx_unit|Dane_Reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[6]~feeder_combout\ = \uart_rx_unit|Dane_Reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_unit|Dane_Reg\(7),
	combout => \uart_rx_unit|Dane_Reg[6]~feeder_combout\);

-- Location: FF_X29_Y15_N17
\uart_rx_unit|Dane_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Reg[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(6));

-- Location: LCCOMB_X28_Y15_N12
\uart_rx_unit|Dane_Reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[5]~feeder_combout\ = \uart_rx_unit|Dane_Reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_unit|Dane_Reg\(6),
	combout => \uart_rx_unit|Dane_Reg[5]~feeder_combout\);

-- Location: FF_X28_Y15_N13
\uart_rx_unit|Dane_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Reg[5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(5));

-- Location: LCCOMB_X29_Y15_N30
\uart_rx_unit|Dane_Reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[4]~feeder_combout\ = \uart_rx_unit|Dane_Reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_unit|Dane_Reg\(5),
	combout => \uart_rx_unit|Dane_Reg[4]~feeder_combout\);

-- Location: FF_X29_Y15_N31
\uart_rx_unit|Dane_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Reg[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(4));

-- Location: FF_X28_Y15_N19
\uart_rx_unit|Dane_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_unit|Dane_Reg\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(3));

-- Location: LCCOMB_X29_Y15_N8
\uart_rx_unit|Dane_Reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[2]~feeder_combout\ = \uart_rx_unit|Dane_Reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_unit|Dane_Reg\(3),
	combout => \uart_rx_unit|Dane_Reg[2]~feeder_combout\);

-- Location: FF_X29_Y15_N9
\uart_rx_unit|Dane_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Dane_Reg[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(2));

-- Location: FF_X28_Y15_N7
\uart_rx_unit|Dane_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_unit|Dane_Reg\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(1));

-- Location: FF_X28_Y15_N1
\uart_rx_unit|Dane_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_unit|Dane_Reg\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_rx_unit|Dane_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(0));

-- Location: LCCOMB_X28_Y15_N10
\uart_rx_unit|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|process_1~1_combout\ = \uart_rx_unit|Dane_Reg\(4) $ (\uart_rx_unit|Dane_Reg\(2) $ (\uart_rx_unit|Dane_Reg\(1) $ (\uart_rx_unit|Dane_Reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Reg\(4),
	datab => \uart_rx_unit|Dane_Reg\(2),
	datac => \uart_rx_unit|Dane_Reg\(1),
	datad => \uart_rx_unit|Dane_Reg\(3),
	combout => \uart_rx_unit|process_1~1_combout\);

-- Location: LCCOMB_X29_Y15_N24
\uart_rx_unit|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|process_1~0_combout\ = \uart_rx_unit|Dane_Reg\(6) $ (\uart_rx_unit|Dane_Reg\(7) $ (\RX~input_o\ $ (\uart_rx_unit|Dane_Reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Reg\(6),
	datab => \uart_rx_unit|Dane_Reg\(7),
	datac => \RX~input_o\,
	datad => \uart_rx_unit|Dane_Reg\(5),
	combout => \uart_rx_unit|process_1~0_combout\);

-- Location: LCCOMB_X28_Y15_N0
\uart_rx_unit|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|process_1~2_combout\ = \uart_rx_unit|process_1~1_combout\ $ (\uart_rx_unit|Dane_Reg\(0) $ (\uart_rx_unit|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|process_1~1_combout\,
	datac => \uart_rx_unit|Dane_Reg\(0),
	datad => \uart_rx_unit|process_1~0_combout\,
	combout => \uart_rx_unit|process_1~2_combout\);

-- Location: LCCOMB_X29_Y15_N10
\uart_rx_unit|Blad_Par~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Blad_Par~0_combout\ = (\uart_rx_unit|Stan.bit_parzystosci~q\ & (\Bit_Par~input_o\ & (\uart_rx_unit|process_1~2_combout\ & \uart_rx_unit|Dane_Reg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datab => \Bit_Par~input_o\,
	datac => \uart_rx_unit|process_1~2_combout\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|Blad_Par~0_combout\);

-- Location: LCCOMB_X29_Y15_N20
\uart_rx_unit|RX_Dane_Gotowe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|RX_Dane_Gotowe~0_combout\ = (\uart_rx_unit|Stan.stop~q\ & \uart_rx_unit|Dane_Reg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Stan.stop~q\,
	datad => \uart_rx_unit|Dane_Reg[0]~0_combout\,
	combout => \uart_rx_unit|RX_Dane_Gotowe~0_combout\);

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

ww_Dane_Wyj(0) <= \Dane_Wyj[0]~output_o\;

ww_Dane_Wyj(1) <= \Dane_Wyj[1]~output_o\;

ww_Dane_Wyj(2) <= \Dane_Wyj[2]~output_o\;

ww_Dane_Wyj(3) <= \Dane_Wyj[3]~output_o\;

ww_Dane_Wyj(4) <= \Dane_Wyj[4]~output_o\;

ww_Dane_Wyj(5) <= \Dane_Wyj[5]~output_o\;

ww_Dane_Wyj(6) <= \Dane_Wyj[6]~output_o\;

ww_Dane_Wyj(7) <= \Dane_Wyj[7]~output_o\;

ww_Blad_Par <= \Blad_Par~output_o\;

ww_RX_Dane_Gotowe <= \RX_Dane_Gotowe~output_o\;
END structure;


