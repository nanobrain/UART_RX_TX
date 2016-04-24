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

-- DATE "04/25/2016 00:39:43"

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

ENTITY 	UART_COMP_TEST_nobuf IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	RX : IN std_logic;
	Bit_Par : IN std_logic;
	TX : BUFFER std_logic;
	RX_Blad_Par : BUFFER std_logic;
	stan_ctr : BUFFER std_logic_vector(3 DOWNTO 0);
	Baud_Monitor : BUFFER std_logic
	);
END UART_COMP_TEST_nobuf;

-- Design Ports Information
-- TX	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_Blad_Par	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stan_ctr[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stan_ctr[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stan_ctr[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stan_ctr[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud_Monitor	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bit_Par	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_COMP_TEST_nobuf IS
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
SIGNAL ww_TX : std_logic;
SIGNAL ww_RX_Blad_Par : std_logic;
SIGNAL ww_stan_ctr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Baud_Monitor : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \TX~output_o\ : std_logic;
SIGNAL \RX_Blad_Par~output_o\ : std_logic;
SIGNAL \stan_ctr[0]~output_o\ : std_logic;
SIGNAL \stan_ctr[1]~output_o\ : std_logic;
SIGNAL \stan_ctr[2]~output_o\ : std_logic;
SIGNAL \stan_ctr[3]~output_o\ : std_logic;
SIGNAL \Baud_Monitor~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \baud_gen_unit|Add0~9\ : std_logic;
SIGNAL \baud_gen_unit|Add0~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \baud_gen_unit|Add0~11\ : std_logic;
SIGNAL \baud_gen_unit|Add0~12_combout\ : std_logic;
SIGNAL \baud_gen_unit|r_next[6]~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~13\ : std_logic;
SIGNAL \baud_gen_unit|Add0~14_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|r_next[0]~1_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~1\ : std_logic;
SIGNAL \baud_gen_unit|Add0~2_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~3\ : std_logic;
SIGNAL \baud_gen_unit|Add0~4_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~5\ : std_logic;
SIGNAL \baud_gen_unit|Add0~6_combout\ : std_logic;
SIGNAL \baud_gen_unit|Add0~7\ : std_logic;
SIGNAL \baud_gen_unit|Add0~8_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~2_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~3_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~8_combout\ : std_logic;
SIGNAL \uart_rx_unit|Equal1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[7]~0_combout\ : std_logic;
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \uart_rx_unit|Equal1~2_combout\ : std_logic;
SIGNAL \Bit_Par~input_o\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[0]~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[0]~3_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[1]~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Add1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[2]~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Add1~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Ctr[3]~4_combout\ : std_logic;
SIGNAL \uart_rx_unit|Nast_Stan~5_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector3~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.dane~q\ : std_logic;
SIGNAL \uart_rx_unit|Selector4~0_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~2_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~3_combout\ : std_logic;
SIGNAL \baud_gen_unit|Equal0~4_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector4~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.bit_parzystosci~q\ : std_logic;
SIGNAL \uart_rx_unit|Selector5~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector5~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector5~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.stop~q\ : std_logic;
SIGNAL \uart_rx_unit|Selector1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.czekaj~q\ : std_logic;
SIGNAL \uart_rx_unit|Selector2~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Stan.start~q\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~10_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~12_combout\ : std_logic;
SIGNAL \uart_rx_unit|stan_ctr~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~13_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~11_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr[0]~14_combout\ : std_logic;
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
SIGNAL \uart_rx_unit|RX_Dane_Gotowe~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~4_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[0]~8_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[1]~7_combout\ : std_logic;
SIGNAL \uart_tx_unit|Add0~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[2]~6_combout\ : std_logic;
SIGNAL \uart_tx_unit|Add0~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Baud_Ctr[3]~5_combout\ : std_logic;
SIGNAL \uart_tx_unit|Equal1~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_next~5_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector4~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector4~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.bit_parzystosci~q\ : std_logic;
SIGNAL \uart_tx_unit|Selector5~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector5~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.stop~q\ : std_logic;
SIGNAL \uart_tx_unit|Selector1~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.czekaj~q\ : std_logic;
SIGNAL \uart_tx_unit|Selector2~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.start~q\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[0]~3_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[1]~2_combout\ : std_logic;
SIGNAL \uart_tx_unit|Add1~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Ctr[2]~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_next~6_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector3~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|state_reg.dane~q\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[7]~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[4]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_unit|Dane_Reg[2]~feeder_combout\ : std_logic;
SIGNAL \uart_tx_unit|Nowe_Dane~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Reg[7]~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector11~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Dane_Reg[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector12~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector13~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector14~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector15~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector16~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector17~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector0~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|Selector0~1_combout\ : std_logic;
SIGNAL \uart_tx_unit|TX_reg~q\ : std_logic;
SIGNAL \uart_rx_unit|process_1~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|process_1~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|process_1~2_combout\ : std_logic;
SIGNAL \uart_rx_unit|Blad_Par~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|stan_ctr~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|stan_ctr~1_combout\ : std_logic;
SIGNAL \uart_rx_unit|Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_unit|Baud_Ctr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \baud_gen_unit|r_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_unit|Dane_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_unit|Dane_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_unit|Dane_Ctr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_unit|Baud_Ctr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_unit|Dane_Ctr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_rx_unit|ALT_INV_stan_ctr~0_combout\ : std_logic;
SIGNAL \uart_tx_unit|ALT_INV_TX_reg~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_RX <= RX;
ww_Bit_Par <= Bit_Par;
TX <= ww_TX;
RX_Blad_Par <= ww_RX_Blad_Par;
stan_ctr <= ww_stan_ctr;
Baud_Monitor <= ww_Baud_Monitor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\uart_rx_unit|ALT_INV_stan_ctr~0_combout\ <= NOT \uart_rx_unit|stan_ctr~0_combout\;
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

-- Location: IOOBUF_X31_Y11_N16
\RX_Blad_Par~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Blad_Par~0_combout\,
	devoe => ww_devoe,
	o => \RX_Blad_Par~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\stan_ctr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|ALT_INV_stan_ctr~0_combout\,
	devoe => ww_devoe,
	o => \stan_ctr[0]~output_o\);

-- Location: IOOBUF_X31_Y4_N16
\stan_ctr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|stan_ctr~1_combout\,
	devoe => ww_devoe,
	o => \stan_ctr[1]~output_o\);

-- Location: IOOBUF_X31_Y4_N23
\stan_ctr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|stan_ctr~2_combout\,
	devoe => ww_devoe,
	o => \stan_ctr[2]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\stan_ctr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx_unit|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \stan_ctr[3]~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\Baud_Monitor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \baud_gen_unit|Equal0~4_combout\,
	devoe => ww_devoe,
	o => \Baud_Monitor~output_o\);

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

-- Location: LCCOMB_X27_Y9_N22
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

-- Location: LCCOMB_X27_Y9_N24
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

-- Location: FF_X27_Y9_N25
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

-- Location: LCCOMB_X27_Y9_N26
\baud_gen_unit|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~12_combout\ = (\baud_gen_unit|r_reg\(6) & (\baud_gen_unit|Add0~11\ $ (GND))) # (!\baud_gen_unit|r_reg\(6) & (!\baud_gen_unit|Add0~11\ & VCC))
-- \baud_gen_unit|Add0~13\ = CARRY((\baud_gen_unit|r_reg\(6) & !\baud_gen_unit|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(6),
	datad => VCC,
	cin => \baud_gen_unit|Add0~11\,
	combout => \baud_gen_unit|Add0~12_combout\,
	cout => \baud_gen_unit|Add0~13\);

-- Location: LCCOMB_X27_Y9_N4
\baud_gen_unit|r_next[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|r_next[6]~0_combout\ = (\baud_gen_unit|Add0~12_combout\ & ((!\baud_gen_unit|Equal0~1_combout\) # (!\baud_gen_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|Equal0~0_combout\,
	datac => \baud_gen_unit|Add0~12_combout\,
	datad => \baud_gen_unit|Equal0~1_combout\,
	combout => \baud_gen_unit|r_next[6]~0_combout\);

-- Location: FF_X27_Y9_N5
\baud_gen_unit|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|r_next[6]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(6));

-- Location: LCCOMB_X27_Y9_N28
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

-- Location: FF_X27_Y9_N29
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

-- Location: LCCOMB_X27_Y9_N0
\baud_gen_unit|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~0_combout\ = (!\baud_gen_unit|r_reg\(5) & (\baud_gen_unit|r_reg\(6) & (!\baud_gen_unit|r_reg\(0) & !\baud_gen_unit|r_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(5),
	datab => \baud_gen_unit|r_reg\(6),
	datac => \baud_gen_unit|r_reg\(0),
	datad => \baud_gen_unit|r_reg\(7),
	combout => \baud_gen_unit|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y9_N14
\baud_gen_unit|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Add0~0_combout\ = \baud_gen_unit|r_reg\(0) $ (VCC)
-- \baud_gen_unit|Add0~1\ = CARRY(\baud_gen_unit|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(0),
	datad => VCC,
	combout => \baud_gen_unit|Add0~0_combout\,
	cout => \baud_gen_unit|Add0~1\);

-- Location: LCCOMB_X27_Y9_N30
\baud_gen_unit|r_next[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|r_next[0]~1_combout\ = (\baud_gen_unit|Add0~0_combout\ & ((!\baud_gen_unit|Equal0~1_combout\) # (!\baud_gen_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen_unit|Equal0~0_combout\,
	datac => \baud_gen_unit|Add0~0_combout\,
	datad => \baud_gen_unit|Equal0~1_combout\,
	combout => \baud_gen_unit|r_next[0]~1_combout\);

-- Location: FF_X27_Y9_N31
\baud_gen_unit|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_gen_unit|r_next[0]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen_unit|r_reg\(0));

-- Location: LCCOMB_X27_Y9_N16
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

-- Location: FF_X27_Y9_N17
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

-- Location: LCCOMB_X27_Y9_N18
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

-- Location: FF_X27_Y9_N19
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

-- Location: LCCOMB_X27_Y9_N20
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

-- Location: FF_X27_Y9_N21
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

-- Location: FF_X27_Y9_N23
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

-- Location: LCCOMB_X27_Y9_N6
\baud_gen_unit|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~1_combout\ = (!\baud_gen_unit|r_reg\(4) & (!\baud_gen_unit|r_reg\(2) & (!\baud_gen_unit|r_reg\(3) & !\baud_gen_unit|r_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(4),
	datab => \baud_gen_unit|r_reg\(2),
	datac => \baud_gen_unit|r_reg\(3),
	datad => \baud_gen_unit|r_reg\(1),
	combout => \baud_gen_unit|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y8_N22
\uart_tx_unit|Baud_Ctr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~0_combout\ = (\uart_tx_unit|state_reg.czekaj~q\ & ((\uart_tx_unit|state_reg.stop~q\) # (!\uart_tx_unit|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.czekaj~q\,
	datab => \uart_tx_unit|state_reg.stop~q\,
	datad => \uart_tx_unit|Equal1~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[0]~0_combout\);

-- Location: LCCOMB_X28_Y8_N26
\uart_tx_unit|Baud_Ctr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~1_combout\ = (\uart_tx_unit|state_reg.stop~q\ & \uart_tx_unit|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|state_reg.stop~q\,
	datad => \uart_tx_unit|Equal1~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[0]~1_combout\);

-- Location: LCCOMB_X28_Y7_N0
\uart_tx_unit|Baud_Ctr[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~2_combout\ = (\uart_tx_unit|state_reg.stop~q\) # ((\uart_tx_unit|state_reg.start~q\) # ((\uart_tx_unit|state_reg.bit_parzystosci~q\) # (\uart_tx_unit|state_reg.dane~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.stop~q\,
	datab => \uart_tx_unit|state_reg.start~q\,
	datac => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	datad => \uart_tx_unit|state_reg.dane~q\,
	combout => \uart_tx_unit|Baud_Ctr[0]~2_combout\);

-- Location: LCCOMB_X28_Y8_N6
\uart_tx_unit|Baud_Ctr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~3_combout\ = (\uart_tx_unit|Baud_Ctr[0]~2_combout\ & ((!\baud_gen_unit|Equal0~0_combout\) # (!\baud_gen_unit|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~1_combout\,
	datab => \uart_tx_unit|Baud_Ctr[0]~2_combout\,
	datad => \baud_gen_unit|Equal0~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[0]~3_combout\);

-- Location: LCCOMB_X28_Y9_N10
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

-- Location: LCCOMB_X28_Y9_N8
\uart_rx_unit|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Equal1~0_combout\ = (\uart_rx_unit|Baud_Ctr\(1) & (\uart_rx_unit|Baud_Ctr\(3) & (\uart_rx_unit|Baud_Ctr\(2) & \uart_rx_unit|Baud_Ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(1),
	datab => \uart_rx_unit|Baud_Ctr\(3),
	datac => \uart_rx_unit|Baud_Ctr\(2),
	datad => \uart_rx_unit|Baud_Ctr\(0),
	combout => \uart_rx_unit|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y9_N28
\uart_rx_unit|Dane_Reg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[7]~0_combout\ = (\uart_rx_unit|Equal1~0_combout\ & (\baud_gen_unit|Equal0~1_combout\ & (\baud_gen_unit|Equal0~0_combout\ & \uart_rx_unit|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Equal1~0_combout\,
	datab => \baud_gen_unit|Equal0~1_combout\,
	datac => \baud_gen_unit|Equal0~0_combout\,
	datad => \uart_rx_unit|Equal1~1_combout\,
	combout => \uart_rx_unit|Dane_Reg[7]~0_combout\);

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

-- Location: LCCOMB_X28_Y9_N2
\uart_rx_unit|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Equal1~2_combout\ = (\uart_rx_unit|Equal1~0_combout\ & \uart_rx_unit|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_unit|Equal1~0_combout\,
	datad => \uart_rx_unit|Equal1~1_combout\,
	combout => \uart_rx_unit|Equal1~2_combout\);

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

-- Location: LCCOMB_X29_Y8_N2
\uart_rx_unit|Dane_Ctr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[0]~0_combout\ = ((!\uart_rx_unit|Stan.start~q\ & ((\uart_rx_unit|Nast_Stan~5_combout\) # (!\uart_rx_unit|Stan.dane~q\)))) # (!\uart_rx_unit|Dane_Reg[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.start~q\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Nast_Stan~5_combout\,
	datad => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[0]~0_combout\);

-- Location: LCCOMB_X29_Y8_N28
\uart_rx_unit|Dane_Ctr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[0]~3_combout\ = (\uart_rx_unit|Dane_Ctr\(0) & ((\uart_rx_unit|Dane_Ctr[0]~0_combout\))) # (!\uart_rx_unit|Dane_Ctr\(0) & (\uart_rx_unit|Stan.dane~q\ & !\uart_rx_unit|Dane_Ctr[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Ctr\(0),
	datad => \uart_rx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[0]~3_combout\);

-- Location: FF_X29_Y8_N29
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

-- Location: LCCOMB_X29_Y8_N14
\uart_rx_unit|Dane_Ctr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[1]~2_combout\ = (\uart_rx_unit|Dane_Ctr[0]~0_combout\ & (((\uart_rx_unit|Dane_Ctr\(1))))) # (!\uart_rx_unit|Dane_Ctr[0]~0_combout\ & (\uart_rx_unit|Stan.dane~q\ & (\uart_rx_unit|Dane_Ctr\(0) $ (\uart_rx_unit|Dane_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Ctr\(0),
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Ctr\(1),
	datad => \uart_rx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[1]~2_combout\);

-- Location: FF_X29_Y8_N15
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

-- Location: LCCOMB_X29_Y8_N12
\uart_rx_unit|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Add1~0_combout\ = \uart_rx_unit|Dane_Ctr\(2) $ (((\uart_rx_unit|Dane_Ctr\(1) & \uart_rx_unit|Dane_Ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Dane_Ctr\(2),
	datac => \uart_rx_unit|Dane_Ctr\(1),
	datad => \uart_rx_unit|Dane_Ctr\(0),
	combout => \uart_rx_unit|Add1~0_combout\);

-- Location: LCCOMB_X29_Y8_N8
\uart_rx_unit|Dane_Ctr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[2]~1_combout\ = (\uart_rx_unit|Dane_Ctr[0]~0_combout\ & (((\uart_rx_unit|Dane_Ctr\(2))))) # (!\uart_rx_unit|Dane_Ctr[0]~0_combout\ & (\uart_rx_unit|Add1~0_combout\ & (\uart_rx_unit|Stan.dane~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Add1~0_combout\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Ctr\(2),
	datad => \uart_rx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[2]~1_combout\);

-- Location: FF_X29_Y8_N9
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

-- Location: LCCOMB_X29_Y8_N24
\uart_rx_unit|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Add1~1_combout\ = \uart_rx_unit|Dane_Ctr\(3) $ (((\uart_rx_unit|Dane_Ctr\(1) & (\uart_rx_unit|Dane_Ctr\(2) & \uart_rx_unit|Dane_Ctr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Ctr\(3),
	datab => \uart_rx_unit|Dane_Ctr\(1),
	datac => \uart_rx_unit|Dane_Ctr\(2),
	datad => \uart_rx_unit|Dane_Ctr\(0),
	combout => \uart_rx_unit|Add1~1_combout\);

-- Location: LCCOMB_X29_Y8_N6
\uart_rx_unit|Dane_Ctr[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Ctr[3]~4_combout\ = (\uart_rx_unit|Dane_Ctr[0]~0_combout\ & (((\uart_rx_unit|Dane_Ctr\(3))))) # (!\uart_rx_unit|Dane_Ctr[0]~0_combout\ & (\uart_rx_unit|Add1~1_combout\ & (\uart_rx_unit|Stan.dane~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Add1~1_combout\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Ctr\(3),
	datad => \uart_rx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_rx_unit|Dane_Ctr[3]~4_combout\);

-- Location: FF_X29_Y8_N7
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

-- Location: LCCOMB_X29_Y8_N0
\uart_rx_unit|Nast_Stan~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Nast_Stan~5_combout\ = (!\uart_rx_unit|Dane_Ctr\(3) & (\uart_rx_unit|Dane_Ctr\(1) & (\uart_rx_unit|Dane_Ctr\(2) & \uart_rx_unit|Dane_Ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Ctr\(3),
	datab => \uart_rx_unit|Dane_Ctr\(1),
	datac => \uart_rx_unit|Dane_Ctr\(2),
	datad => \uart_rx_unit|Dane_Ctr\(0),
	combout => \uart_rx_unit|Nast_Stan~5_combout\);

-- Location: LCCOMB_X29_Y9_N24
\uart_rx_unit|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector3~0_combout\ = (\uart_rx_unit|Dane_Reg[7]~0_combout\ & ((\uart_rx_unit|Stan.start~q\) # ((\uart_rx_unit|Stan.dane~q\ & !\uart_rx_unit|Nast_Stan~5_combout\)))) # (!\uart_rx_unit|Dane_Reg[7]~0_combout\ & 
-- (((\uart_rx_unit|Stan.dane~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	datab => \uart_rx_unit|Stan.start~q\,
	datac => \uart_rx_unit|Stan.dane~q\,
	datad => \uart_rx_unit|Nast_Stan~5_combout\,
	combout => \uart_rx_unit|Selector3~0_combout\);

-- Location: FF_X29_Y9_N25
\uart_rx_unit|Stan.dane\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.dane~q\);

-- Location: LCCOMB_X29_Y9_N2
\uart_rx_unit|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector4~0_combout\ = (\Bit_Par~input_o\ & (\uart_rx_unit|Stan.dane~q\ & (\uart_rx_unit|Dane_Reg[7]~0_combout\ & \uart_rx_unit|Nast_Stan~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bit_Par~input_o\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	datad => \uart_rx_unit|Nast_Stan~5_combout\,
	combout => \uart_rx_unit|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y9_N8
\baud_gen_unit|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~2_combout\ = (!\baud_gen_unit|r_reg\(7) & (!\baud_gen_unit|r_reg\(5) & (\baud_gen_unit|r_reg\(6) & !\baud_gen_unit|r_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(7),
	datab => \baud_gen_unit|r_reg\(5),
	datac => \baud_gen_unit|r_reg\(6),
	datad => \baud_gen_unit|r_reg\(1),
	combout => \baud_gen_unit|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y9_N2
\baud_gen_unit|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~3_combout\ = (!\baud_gen_unit|r_reg\(4) & !\baud_gen_unit|r_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen_unit|r_reg\(4),
	datad => \baud_gen_unit|r_reg\(2),
	combout => \baud_gen_unit|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y9_N12
\baud_gen_unit|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baud_gen_unit|Equal0~4_combout\ = (!\baud_gen_unit|r_reg\(0) & (!\baud_gen_unit|r_reg\(3) & (\baud_gen_unit|Equal0~2_combout\ & \baud_gen_unit|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|r_reg\(0),
	datab => \baud_gen_unit|r_reg\(3),
	datac => \baud_gen_unit|Equal0~2_combout\,
	datad => \baud_gen_unit|Equal0~3_combout\,
	combout => \baud_gen_unit|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y9_N0
\uart_rx_unit|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector4~1_combout\ = (\uart_rx_unit|Selector4~0_combout\) # ((!\uart_rx_unit|Equal1~2_combout\ & (\uart_rx_unit|Stan.bit_parzystosci~q\ & \baud_gen_unit|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Equal1~2_combout\,
	datab => \uart_rx_unit|Selector4~0_combout\,
	datac => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datad => \baud_gen_unit|Equal0~4_combout\,
	combout => \uart_rx_unit|Selector4~1_combout\);

-- Location: FF_X29_Y9_N1
\uart_rx_unit|Stan.bit_parzystosci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector4~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.bit_parzystosci~q\);

-- Location: LCCOMB_X29_Y9_N30
\uart_rx_unit|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector5~1_combout\ = (\baud_gen_unit|Equal0~4_combout\ & ((\uart_rx_unit|Equal1~2_combout\ & (\uart_rx_unit|Stan.bit_parzystosci~q\)) # (!\uart_rx_unit|Equal1~2_combout\ & ((\uart_rx_unit|Stan.stop~q\))))) # 
-- (!\baud_gen_unit|Equal0~4_combout\ & (((\uart_rx_unit|Stan.bit_parzystosci~q\) # (\uart_rx_unit|Stan.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Equal1~2_combout\,
	datab => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datac => \uart_rx_unit|Stan.stop~q\,
	datad => \baud_gen_unit|Equal0~4_combout\,
	combout => \uart_rx_unit|Selector5~1_combout\);

-- Location: LCCOMB_X29_Y9_N12
\uart_rx_unit|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector5~0_combout\ = (!\Bit_Par~input_o\ & (\uart_rx_unit|Stan.dane~q\ & (\uart_rx_unit|Dane_Reg[7]~0_combout\ & \uart_rx_unit|Nast_Stan~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bit_Par~input_o\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	datad => \uart_rx_unit|Nast_Stan~5_combout\,
	combout => \uart_rx_unit|Selector5~0_combout\);

-- Location: LCCOMB_X29_Y9_N14
\uart_rx_unit|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector5~2_combout\ = (\uart_rx_unit|Selector5~1_combout\) # (\uart_rx_unit|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_unit|Selector5~1_combout\,
	datad => \uart_rx_unit|Selector5~0_combout\,
	combout => \uart_rx_unit|Selector5~2_combout\);

-- Location: FF_X29_Y9_N15
\uart_rx_unit|Stan.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector5~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.stop~q\);

-- Location: LCCOMB_X29_Y9_N28
\uart_rx_unit|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector1~0_combout\ = (\uart_rx_unit|Dane_Reg[7]~0_combout\ & (!\uart_rx_unit|Stan.stop~q\ & ((\uart_rx_unit|Stan.czekaj~q\) # (!\RX~input_o\)))) # (!\uart_rx_unit|Dane_Reg[7]~0_combout\ & (((\uart_rx_unit|Stan.czekaj~q\) # 
-- (!\RX~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	datab => \uart_rx_unit|Stan.stop~q\,
	datac => \uart_rx_unit|Stan.czekaj~q\,
	datad => \RX~input_o\,
	combout => \uart_rx_unit|Selector1~0_combout\);

-- Location: FF_X29_Y9_N29
\uart_rx_unit|Stan.czekaj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_unit|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Stan.czekaj~q\);

-- Location: LCCOMB_X29_Y9_N20
\uart_rx_unit|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector2~0_combout\ = (\uart_rx_unit|Dane_Reg[7]~0_combout\ & (!\RX~input_o\ & ((!\uart_rx_unit|Stan.czekaj~q\)))) # (!\uart_rx_unit|Dane_Reg[7]~0_combout\ & ((\uart_rx_unit|Stan.start~q\) # ((!\RX~input_o\ & 
-- !\uart_rx_unit|Stan.czekaj~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	datab => \RX~input_o\,
	datac => \uart_rx_unit|Stan.start~q\,
	datad => \uart_rx_unit|Stan.czekaj~q\,
	combout => \uart_rx_unit|Selector2~0_combout\);

-- Location: FF_X29_Y9_N21
\uart_rx_unit|Stan.start\ : dffeas
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
	q => \uart_rx_unit|Stan.start~q\);

-- Location: LCCOMB_X29_Y9_N22
\uart_rx_unit|Baud_Ctr[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[0]~10_combout\ = ((\uart_rx_unit|Equal1~2_combout\ & ((\uart_rx_unit|Stan.start~q\) # (\uart_rx_unit|Stan.dane~q\)))) # (!\uart_rx_unit|Stan.czekaj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.start~q\,
	datab => \uart_rx_unit|Stan.czekaj~q\,
	datac => \uart_rx_unit|Stan.dane~q\,
	datad => \uart_rx_unit|Equal1~2_combout\,
	combout => \uart_rx_unit|Baud_Ctr[0]~10_combout\);

-- Location: LCCOMB_X29_Y9_N8
\uart_rx_unit|Baud_Ctr[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[0]~12_combout\ = (\uart_rx_unit|Stan.bit_parzystosci~q\) # (\uart_rx_unit|Stan.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datad => \uart_rx_unit|Stan.start~q\,
	combout => \uart_rx_unit|Baud_Ctr[0]~12_combout\);

-- Location: LCCOMB_X29_Y9_N10
\uart_rx_unit|stan_ctr~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|stan_ctr~2_combout\ = (!\uart_rx_unit|Stan.stop~q\ & !\uart_rx_unit|Stan.dane~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_unit|Stan.stop~q\,
	datad => \uart_rx_unit|Stan.dane~q\,
	combout => \uart_rx_unit|stan_ctr~2_combout\);

-- Location: LCCOMB_X28_Y9_N26
\uart_rx_unit|Baud_Ctr[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[0]~13_combout\ = (\baud_gen_unit|Equal0~0_combout\ & (!\baud_gen_unit|Equal0~1_combout\ & ((\uart_rx_unit|Baud_Ctr[0]~12_combout\) # (!\uart_rx_unit|stan_ctr~2_combout\)))) # (!\baud_gen_unit|Equal0~0_combout\ & 
-- ((\uart_rx_unit|Baud_Ctr[0]~12_combout\) # ((!\uart_rx_unit|stan_ctr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~0_combout\,
	datab => \uart_rx_unit|Baud_Ctr[0]~12_combout\,
	datac => \uart_rx_unit|stan_ctr~2_combout\,
	datad => \baud_gen_unit|Equal0~1_combout\,
	combout => \uart_rx_unit|Baud_Ctr[0]~13_combout\);

-- Location: LCCOMB_X28_Y9_N0
\uart_rx_unit|Baud_Ctr[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[0]~11_combout\ = (\uart_rx_unit|Equal1~0_combout\ & (\uart_rx_unit|Equal1~1_combout\ & ((\uart_rx_unit|Stan.bit_parzystosci~q\) # (\uart_rx_unit|Stan.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.bit_parzystosci~q\,
	datab => \uart_rx_unit|Stan.stop~q\,
	datac => \uart_rx_unit|Equal1~0_combout\,
	datad => \uart_rx_unit|Equal1~1_combout\,
	combout => \uart_rx_unit|Baud_Ctr[0]~11_combout\);

-- Location: LCCOMB_X28_Y9_N4
\uart_rx_unit|Baud_Ctr[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[0]~14_combout\ = (!\uart_rx_unit|Baud_Ctr[0]~13_combout\ & (!\uart_rx_unit|Baud_Ctr[0]~11_combout\ & ((\uart_rx_unit|Stan.czekaj~q\) # (!\RX~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datab => \uart_rx_unit|Stan.czekaj~q\,
	datac => \uart_rx_unit|Baud_Ctr[0]~13_combout\,
	datad => \uart_rx_unit|Baud_Ctr[0]~11_combout\,
	combout => \uart_rx_unit|Baud_Ctr[0]~14_combout\);

-- Location: FF_X28_Y9_N11
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(0));

-- Location: LCCOMB_X28_Y9_N12
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

-- Location: FF_X28_Y9_N13
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(1));

-- Location: LCCOMB_X28_Y9_N14
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

-- Location: FF_X28_Y9_N15
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(2));

-- Location: LCCOMB_X28_Y9_N16
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

-- Location: FF_X28_Y9_N17
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(3));

-- Location: LCCOMB_X28_Y9_N18
\uart_rx_unit|Baud_Ctr[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[4]~21_combout\ = (\uart_rx_unit|Baud_Ctr\(4) & (\uart_rx_unit|Baud_Ctr[3]~20\ $ (GND))) # (!\uart_rx_unit|Baud_Ctr\(4) & (!\uart_rx_unit|Baud_Ctr[3]~20\ & VCC))
-- \uart_rx_unit|Baud_Ctr[4]~22\ = CARRY((\uart_rx_unit|Baud_Ctr\(4) & !\uart_rx_unit|Baud_Ctr[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Baud_Ctr\(4),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[3]~20\,
	combout => \uart_rx_unit|Baud_Ctr[4]~21_combout\,
	cout => \uart_rx_unit|Baud_Ctr[4]~22\);

-- Location: FF_X28_Y9_N19
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(4));

-- Location: LCCOMB_X28_Y9_N20
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

-- Location: FF_X28_Y9_N21
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(5));

-- Location: LCCOMB_X28_Y9_N22
\uart_rx_unit|Baud_Ctr[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Baud_Ctr[6]~25_combout\ = (\uart_rx_unit|Baud_Ctr\(6) & (\uart_rx_unit|Baud_Ctr[5]~24\ $ (GND))) # (!\uart_rx_unit|Baud_Ctr\(6) & (!\uart_rx_unit|Baud_Ctr[5]~24\ & VCC))
-- \uart_rx_unit|Baud_Ctr[6]~26\ = CARRY((\uart_rx_unit|Baud_Ctr\(6) & !\uart_rx_unit|Baud_Ctr[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(6),
	datad => VCC,
	cin => \uart_rx_unit|Baud_Ctr[5]~24\,
	combout => \uart_rx_unit|Baud_Ctr[6]~25_combout\,
	cout => \uart_rx_unit|Baud_Ctr[6]~26\);

-- Location: FF_X28_Y9_N23
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(6));

-- Location: LCCOMB_X28_Y9_N24
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

-- Location: FF_X28_Y9_N25
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
	sclr => \uart_rx_unit|Baud_Ctr[0]~10_combout\,
	ena => \uart_rx_unit|Baud_Ctr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Baud_Ctr\(7));

-- Location: LCCOMB_X28_Y9_N6
\uart_rx_unit|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Equal1~1_combout\ = (!\uart_rx_unit|Baud_Ctr\(6) & (!\uart_rx_unit|Baud_Ctr\(4) & (!\uart_rx_unit|Baud_Ctr\(7) & !\uart_rx_unit|Baud_Ctr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Baud_Ctr\(6),
	datab => \uart_rx_unit|Baud_Ctr\(4),
	datac => \uart_rx_unit|Baud_Ctr\(7),
	datad => \uart_rx_unit|Baud_Ctr\(5),
	combout => \uart_rx_unit|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y9_N30
\uart_rx_unit|RX_Dane_Gotowe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|RX_Dane_Gotowe~0_combout\ = (\uart_rx_unit|Equal1~1_combout\ & (\uart_rx_unit|Stan.stop~q\ & (\uart_rx_unit|Equal1~0_combout\ & \baud_gen_unit|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Equal1~1_combout\,
	datab => \uart_rx_unit|Stan.stop~q\,
	datac => \uart_rx_unit|Equal1~0_combout\,
	datad => \baud_gen_unit|Equal0~4_combout\,
	combout => \uart_rx_unit|RX_Dane_Gotowe~0_combout\);

-- Location: LCCOMB_X29_Y8_N20
\uart_tx_unit|Baud_Ctr[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~4_combout\ = (\uart_tx_unit|Baud_Ctr[0]~1_combout\) # ((\uart_tx_unit|Baud_Ctr[0]~3_combout\) # ((!\uart_tx_unit|state_reg.czekaj~q\ & !\uart_rx_unit|RX_Dane_Gotowe~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr[0]~1_combout\,
	datab => \uart_tx_unit|state_reg.czekaj~q\,
	datac => \uart_tx_unit|Baud_Ctr[0]~3_combout\,
	datad => \uart_rx_unit|RX_Dane_Gotowe~0_combout\,
	combout => \uart_tx_unit|Baud_Ctr[0]~4_combout\);

-- Location: LCCOMB_X29_Y8_N16
\uart_tx_unit|Baud_Ctr[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[0]~8_combout\ = (\uart_tx_unit|Baud_Ctr\(0) & ((\uart_tx_unit|Baud_Ctr[0]~4_combout\))) # (!\uart_tx_unit|Baud_Ctr\(0) & (\uart_tx_unit|Baud_Ctr[0]~0_combout\ & !\uart_tx_unit|Baud_Ctr[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(0),
	datad => \uart_tx_unit|Baud_Ctr[0]~4_combout\,
	combout => \uart_tx_unit|Baud_Ctr[0]~8_combout\);

-- Location: FF_X29_Y8_N17
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

-- Location: LCCOMB_X29_Y8_N18
\uart_tx_unit|Baud_Ctr[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[1]~7_combout\ = (\uart_tx_unit|Baud_Ctr[0]~4_combout\ & (((\uart_tx_unit|Baud_Ctr\(1))))) # (!\uart_tx_unit|Baud_Ctr[0]~4_combout\ & (\uart_tx_unit|Baud_Ctr[0]~0_combout\ & (\uart_tx_unit|Baud_Ctr\(0) $ 
-- (\uart_tx_unit|Baud_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr\(0),
	datab => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(1),
	datad => \uart_tx_unit|Baud_Ctr[0]~4_combout\,
	combout => \uart_tx_unit|Baud_Ctr[1]~7_combout\);

-- Location: FF_X29_Y8_N19
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

-- Location: LCCOMB_X29_Y8_N10
\uart_tx_unit|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Add0~1_combout\ = \uart_tx_unit|Baud_Ctr\(2) $ (((\uart_tx_unit|Baud_Ctr\(0) & \uart_tx_unit|Baud_Ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|Baud_Ctr\(0),
	datac => \uart_tx_unit|Baud_Ctr\(2),
	datad => \uart_tx_unit|Baud_Ctr\(1),
	combout => \uart_tx_unit|Add0~1_combout\);

-- Location: LCCOMB_X29_Y8_N4
\uart_tx_unit|Baud_Ctr[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[2]~6_combout\ = (\uart_tx_unit|Baud_Ctr[0]~4_combout\ & (((\uart_tx_unit|Baud_Ctr\(2))))) # (!\uart_tx_unit|Baud_Ctr[0]~4_combout\ & (\uart_tx_unit|Add0~1_combout\ & (\uart_tx_unit|Baud_Ctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Add0~1_combout\,
	datab => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(2),
	datad => \uart_tx_unit|Baud_Ctr[0]~4_combout\,
	combout => \uart_tx_unit|Baud_Ctr[2]~6_combout\);

-- Location: FF_X29_Y8_N5
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

-- Location: LCCOMB_X29_Y8_N26
\uart_tx_unit|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Add0~0_combout\ = \uart_tx_unit|Baud_Ctr\(3) $ (((\uart_tx_unit|Baud_Ctr\(0) & (\uart_tx_unit|Baud_Ctr\(2) & \uart_tx_unit|Baud_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr\(3),
	datab => \uart_tx_unit|Baud_Ctr\(0),
	datac => \uart_tx_unit|Baud_Ctr\(2),
	datad => \uart_tx_unit|Baud_Ctr\(1),
	combout => \uart_tx_unit|Add0~0_combout\);

-- Location: LCCOMB_X29_Y8_N30
\uart_tx_unit|Baud_Ctr[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Baud_Ctr[3]~5_combout\ = (\uart_tx_unit|Baud_Ctr[0]~4_combout\ & (((\uart_tx_unit|Baud_Ctr\(3))))) # (!\uart_tx_unit|Baud_Ctr[0]~4_combout\ & (\uart_tx_unit|Add0~0_combout\ & (\uart_tx_unit|Baud_Ctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Add0~0_combout\,
	datab => \uart_tx_unit|Baud_Ctr[0]~0_combout\,
	datac => \uart_tx_unit|Baud_Ctr\(3),
	datad => \uart_tx_unit|Baud_Ctr[0]~4_combout\,
	combout => \uart_tx_unit|Baud_Ctr[3]~5_combout\);

-- Location: FF_X29_Y8_N31
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

-- Location: LCCOMB_X29_Y8_N22
\uart_tx_unit|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Equal1~0_combout\ = (\uart_tx_unit|Baud_Ctr\(3) & (\uart_tx_unit|Baud_Ctr\(1) & (\uart_tx_unit|Baud_Ctr\(2) & \uart_tx_unit|Baud_Ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Baud_Ctr\(3),
	datab => \uart_tx_unit|Baud_Ctr\(1),
	datac => \uart_tx_unit|Baud_Ctr\(2),
	datad => \uart_tx_unit|Baud_Ctr\(0),
	combout => \uart_tx_unit|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y8_N12
\uart_tx_unit|state_next~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|state_next~5_combout\ = (\baud_gen_unit|Equal0~1_combout\ & (\uart_tx_unit|Equal1~0_combout\ & \baud_gen_unit|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~1_combout\,
	datab => \uart_tx_unit|Equal1~0_combout\,
	datad => \baud_gen_unit|Equal0~0_combout\,
	combout => \uart_tx_unit|state_next~5_combout\);

-- Location: LCCOMB_X28_Y7_N2
\uart_tx_unit|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector4~0_combout\ = (\uart_tx_unit|state_next~6_combout\ & (\uart_tx_unit|state_reg.dane~q\ & (\Bit_Par~input_o\ & \uart_tx_unit|state_next~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_next~6_combout\,
	datab => \uart_tx_unit|state_reg.dane~q\,
	datac => \Bit_Par~input_o\,
	datad => \uart_tx_unit|state_next~5_combout\,
	combout => \uart_tx_unit|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y7_N8
\uart_tx_unit|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector4~1_combout\ = (\uart_tx_unit|Selector4~0_combout\) # ((!\uart_tx_unit|state_next~5_combout\ & \uart_tx_unit|state_reg.bit_parzystosci~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|state_next~5_combout\,
	datac => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	datad => \uart_tx_unit|Selector4~0_combout\,
	combout => \uart_tx_unit|Selector4~1_combout\);

-- Location: FF_X28_Y7_N9
\uart_tx_unit|state_reg.bit_parzystosci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector4~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.bit_parzystosci~q\);

-- Location: LCCOMB_X28_Y7_N18
\uart_tx_unit|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector5~0_combout\ = (\uart_tx_unit|state_next~6_combout\ & (!\Bit_Par~input_o\ & (\uart_tx_unit|state_reg.dane~q\ & \uart_tx_unit|state_next~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_next~6_combout\,
	datab => \Bit_Par~input_o\,
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \uart_tx_unit|state_next~5_combout\,
	combout => \uart_tx_unit|Selector5~0_combout\);

-- Location: LCCOMB_X28_Y7_N22
\uart_tx_unit|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector5~1_combout\ = (\uart_tx_unit|Selector5~0_combout\) # ((\uart_tx_unit|state_next~5_combout\ & (\uart_tx_unit|state_reg.bit_parzystosci~q\)) # (!\uart_tx_unit|state_next~5_combout\ & ((\uart_tx_unit|state_reg.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	datab => \uart_tx_unit|state_next~5_combout\,
	datac => \uart_tx_unit|state_reg.stop~q\,
	datad => \uart_tx_unit|Selector5~0_combout\,
	combout => \uart_tx_unit|Selector5~1_combout\);

-- Location: FF_X28_Y7_N23
\uart_tx_unit|state_reg.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector5~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.stop~q\);

-- Location: LCCOMB_X28_Y7_N26
\uart_tx_unit|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector1~0_combout\ = (\uart_tx_unit|state_reg.stop~q\ & (!\uart_tx_unit|state_next~5_combout\ & ((\uart_tx_unit|state_reg.czekaj~q\) # (\uart_rx_unit|RX_Dane_Gotowe~0_combout\)))) # (!\uart_tx_unit|state_reg.stop~q\ & 
-- (((\uart_tx_unit|state_reg.czekaj~q\) # (\uart_rx_unit|RX_Dane_Gotowe~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.stop~q\,
	datab => \uart_tx_unit|state_next~5_combout\,
	datac => \uart_tx_unit|state_reg.czekaj~q\,
	datad => \uart_rx_unit|RX_Dane_Gotowe~0_combout\,
	combout => \uart_tx_unit|Selector1~0_combout\);

-- Location: FF_X28_Y7_N27
\uart_tx_unit|state_reg.czekaj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.czekaj~q\);

-- Location: LCCOMB_X28_Y7_N24
\uart_tx_unit|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector2~0_combout\ = (\uart_tx_unit|state_reg.czekaj~q\ & (!\uart_tx_unit|state_next~5_combout\ & (\uart_tx_unit|state_reg.start~q\))) # (!\uart_tx_unit|state_reg.czekaj~q\ & ((\uart_rx_unit|RX_Dane_Gotowe~0_combout\) # 
-- ((!\uart_tx_unit|state_next~5_combout\ & \uart_tx_unit|state_reg.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.czekaj~q\,
	datab => \uart_tx_unit|state_next~5_combout\,
	datac => \uart_tx_unit|state_reg.start~q\,
	datad => \uart_rx_unit|RX_Dane_Gotowe~0_combout\,
	combout => \uart_tx_unit|Selector2~0_combout\);

-- Location: FF_X28_Y7_N25
\uart_tx_unit|state_reg.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|state_reg.start~q\);

-- Location: LCCOMB_X28_Y7_N10
\uart_tx_unit|Dane_Ctr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[0]~0_combout\ = ((!\uart_tx_unit|state_reg.start~q\ & ((\uart_tx_unit|state_next~6_combout\) # (!\uart_tx_unit|state_reg.dane~q\)))) # (!\uart_tx_unit|state_next~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_next~6_combout\,
	datab => \uart_tx_unit|state_reg.start~q\,
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \uart_tx_unit|state_next~5_combout\,
	combout => \uart_tx_unit|Dane_Ctr[0]~0_combout\);

-- Location: LCCOMB_X28_Y7_N30
\uart_tx_unit|Dane_Ctr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[0]~3_combout\ = (\uart_tx_unit|Dane_Ctr\(0) & ((\uart_tx_unit|Dane_Ctr[0]~0_combout\))) # (!\uart_tx_unit|Dane_Ctr\(0) & (\uart_tx_unit|state_reg.dane~q\ & !\uart_tx_unit|Dane_Ctr[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_tx_unit|Dane_Ctr\(0),
	datad => \uart_tx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Dane_Ctr[0]~3_combout\);

-- Location: FF_X28_Y7_N31
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

-- Location: LCCOMB_X28_Y7_N28
\uart_tx_unit|Dane_Ctr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[1]~2_combout\ = (\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (((\uart_tx_unit|Dane_Ctr\(1))))) # (!\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Ctr\(0) $ (\uart_tx_unit|Dane_Ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Dane_Ctr\(0),
	datab => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_tx_unit|Dane_Ctr\(1),
	datad => \uart_tx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Dane_Ctr[1]~2_combout\);

-- Location: FF_X28_Y7_N29
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

-- Location: LCCOMB_X29_Y7_N4
\uart_tx_unit|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Add1~0_combout\ = \uart_tx_unit|Dane_Ctr\(2) $ (((\uart_tx_unit|Dane_Ctr\(0) & \uart_tx_unit|Dane_Ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Dane_Ctr\(2),
	datab => \uart_tx_unit|Dane_Ctr\(0),
	datad => \uart_tx_unit|Dane_Ctr\(1),
	combout => \uart_tx_unit|Add1~0_combout\);

-- Location: LCCOMB_X28_Y7_N14
\uart_tx_unit|Dane_Ctr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Ctr[2]~1_combout\ = (\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (((\uart_tx_unit|Dane_Ctr\(2))))) # (!\uart_tx_unit|Dane_Ctr[0]~0_combout\ & (\uart_tx_unit|Add1~0_combout\ & (\uart_tx_unit|state_reg.dane~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Add1~0_combout\,
	datab => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_tx_unit|Dane_Ctr\(2),
	datad => \uart_tx_unit|Dane_Ctr[0]~0_combout\,
	combout => \uart_tx_unit|Dane_Ctr[2]~1_combout\);

-- Location: FF_X28_Y7_N15
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

-- Location: LCCOMB_X28_Y7_N12
\uart_tx_unit|state_next~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|state_next~6_combout\ = (\uart_tx_unit|Dane_Ctr\(0) & (\uart_tx_unit|Dane_Ctr\(2) & \uart_tx_unit|Dane_Ctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Dane_Ctr\(0),
	datac => \uart_tx_unit|Dane_Ctr\(2),
	datad => \uart_tx_unit|Dane_Ctr\(1),
	combout => \uart_tx_unit|state_next~6_combout\);

-- Location: LCCOMB_X28_Y7_N16
\uart_tx_unit|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector3~0_combout\ = (\uart_tx_unit|state_next~5_combout\ & ((\uart_tx_unit|state_reg.start~q\) # ((!\uart_tx_unit|state_next~6_combout\ & \uart_tx_unit|state_reg.dane~q\)))) # (!\uart_tx_unit|state_next~5_combout\ & 
-- (((\uart_tx_unit|state_reg.dane~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_next~6_combout\,
	datab => \uart_tx_unit|state_reg.start~q\,
	datac => \uart_tx_unit|state_reg.dane~q\,
	datad => \uart_tx_unit|state_next~5_combout\,
	combout => \uart_tx_unit|Selector3~0_combout\);

-- Location: FF_X28_Y7_N17
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

-- Location: LCCOMB_X28_Y8_N0
\uart_rx_unit|Dane_Reg[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Dane_Reg[7]~1_combout\ = (\uart_rx_unit|Stan.dane~q\ & \uart_rx_unit|Dane_Reg[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Stan.dane~q\,
	datad => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	combout => \uart_rx_unit|Dane_Reg[7]~1_combout\);

-- Location: FF_X28_Y8_N1
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
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(7));

-- Location: FF_X28_Y8_N13
\uart_rx_unit|Dane_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_unit|Dane_Reg\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(6));

-- Location: FF_X28_Y8_N3
\uart_rx_unit|Dane_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_unit|Dane_Reg\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(5));

-- Location: LCCOMB_X28_Y8_N8
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

-- Location: FF_X28_Y8_N9
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
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(4));

-- Location: FF_X28_Y8_N7
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
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(3));

-- Location: LCCOMB_X27_Y8_N16
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

-- Location: FF_X27_Y8_N17
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
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(2));

-- Location: FF_X28_Y8_N27
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
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(1));

-- Location: FF_X28_Y8_N23
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
	ena => \uart_rx_unit|Dane_Reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_unit|Dane_Reg\(0));

-- Location: LCCOMB_X28_Y7_N6
\uart_tx_unit|Nowe_Dane~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Nowe_Dane~0_combout\ = (\uart_tx_unit|state_reg.czekaj~q\ & (\uart_tx_unit|state_reg.dane~q\ & ((\uart_tx_unit|state_next~5_combout\)))) # (!\uart_tx_unit|state_reg.czekaj~q\ & (((\uart_rx_unit|RX_Dane_Gotowe~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.czekaj~q\,
	datab => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_rx_unit|RX_Dane_Gotowe~0_combout\,
	datad => \uart_tx_unit|state_next~5_combout\,
	combout => \uart_tx_unit|Nowe_Dane~0_combout\);

-- Location: LCCOMB_X28_Y7_N4
\uart_tx_unit|Dane_Reg[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Reg[7]~1_combout\ = (\uart_tx_unit|Nowe_Dane~0_combout\ & (!\uart_tx_unit|state_reg.czekaj~q\ & (\uart_rx_unit|Dane_Reg\(7)))) # (!\uart_tx_unit|Nowe_Dane~0_combout\ & (((\uart_tx_unit|Dane_Reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.czekaj~q\,
	datab => \uart_rx_unit|Dane_Reg\(7),
	datac => \uart_tx_unit|Dane_Reg\(7),
	datad => \uart_tx_unit|Nowe_Dane~0_combout\,
	combout => \uart_tx_unit|Dane_Reg[7]~1_combout\);

-- Location: FF_X28_Y7_N5
\uart_tx_unit|Dane_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Dane_Reg[7]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|Dane_Reg\(7));

-- Location: LCCOMB_X28_Y8_N4
\uart_tx_unit|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector11~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & ((\uart_tx_unit|Dane_Reg\(7)))) # (!\uart_tx_unit|state_reg.dane~q\ & (\uart_rx_unit|Dane_Reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_rx_unit|Dane_Reg\(6),
	datad => \uart_tx_unit|Dane_Reg\(7),
	combout => \uart_tx_unit|Selector11~0_combout\);

-- Location: LCCOMB_X28_Y8_N14
\uart_tx_unit|Dane_Reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Dane_Reg[0]~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & ((\uart_tx_unit|state_next~5_combout\) # ((!\uart_tx_unit|state_reg.czekaj~q\ & \uart_rx_unit|RX_Dane_Gotowe~0_combout\)))) # (!\uart_tx_unit|state_reg.dane~q\ & 
-- (!\uart_tx_unit|state_reg.czekaj~q\ & (\uart_rx_unit|RX_Dane_Gotowe~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datab => \uart_tx_unit|state_reg.czekaj~q\,
	datac => \uart_rx_unit|RX_Dane_Gotowe~0_combout\,
	datad => \uart_tx_unit|state_next~5_combout\,
	combout => \uart_tx_unit|Dane_Reg[0]~0_combout\);

-- Location: FF_X28_Y8_N5
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

-- Location: LCCOMB_X28_Y8_N20
\uart_tx_unit|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector12~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(6))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\uart_rx_unit|Dane_Reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_tx_unit|Dane_Reg\(6),
	datad => \uart_rx_unit|Dane_Reg\(5),
	combout => \uart_tx_unit|Selector12~0_combout\);

-- Location: FF_X28_Y8_N21
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

-- Location: LCCOMB_X28_Y8_N28
\uart_tx_unit|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector13~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & ((\uart_tx_unit|Dane_Reg\(5)))) # (!\uart_tx_unit|state_reg.dane~q\ & (\uart_rx_unit|Dane_Reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_rx_unit|Dane_Reg\(4),
	datad => \uart_tx_unit|Dane_Reg\(5),
	combout => \uart_tx_unit|Selector13~0_combout\);

-- Location: FF_X28_Y8_N29
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

-- Location: LCCOMB_X28_Y8_N24
\uart_tx_unit|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector14~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & (\uart_tx_unit|Dane_Reg\(4))) # (!\uart_tx_unit|state_reg.dane~q\ & ((\uart_rx_unit|Dane_Reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_tx_unit|Dane_Reg\(4),
	datad => \uart_rx_unit|Dane_Reg\(3),
	combout => \uart_tx_unit|Selector14~0_combout\);

-- Location: FF_X28_Y8_N25
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

-- Location: LCCOMB_X28_Y8_N16
\uart_tx_unit|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector15~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & ((\uart_tx_unit|Dane_Reg\(3)))) # (!\uart_tx_unit|state_reg.dane~q\ & (\uart_rx_unit|Dane_Reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_rx_unit|Dane_Reg\(2),
	datad => \uart_tx_unit|Dane_Reg\(3),
	combout => \uart_tx_unit|Selector15~0_combout\);

-- Location: FF_X28_Y8_N17
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

-- Location: LCCOMB_X28_Y8_N18
\uart_tx_unit|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector16~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & ((\uart_tx_unit|Dane_Reg\(2)))) # (!\uart_tx_unit|state_reg.dane~q\ & (\uart_rx_unit|Dane_Reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_rx_unit|Dane_Reg\(1),
	datad => \uart_tx_unit|Dane_Reg\(2),
	combout => \uart_tx_unit|Selector16~0_combout\);

-- Location: FF_X28_Y8_N19
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

-- Location: LCCOMB_X28_Y8_N30
\uart_tx_unit|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector17~0_combout\ = (\uart_tx_unit|state_reg.dane~q\ & ((\uart_tx_unit|Dane_Reg\(1)))) # (!\uart_tx_unit|state_reg.dane~q\ & (\uart_rx_unit|Dane_Reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|state_reg.dane~q\,
	datac => \uart_rx_unit|Dane_Reg\(0),
	datad => \uart_tx_unit|Dane_Reg\(1),
	combout => \uart_tx_unit|Selector17~0_combout\);

-- Location: FF_X28_Y8_N31
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

-- Location: LCCOMB_X28_Y8_N10
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

-- Location: LCCOMB_X28_Y7_N20
\uart_tx_unit|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_unit|Selector0~1_combout\ = (!\uart_tx_unit|Selector0~0_combout\ & (((\uart_tx_unit|TX_reg~q\) # (\baud_gen_unit|Equal0~4_combout\)) # (!\uart_tx_unit|state_reg.bit_parzystosci~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_unit|Selector0~0_combout\,
	datab => \uart_tx_unit|state_reg.bit_parzystosci~q\,
	datac => \uart_tx_unit|TX_reg~q\,
	datad => \baud_gen_unit|Equal0~4_combout\,
	combout => \uart_tx_unit|Selector0~1_combout\);

-- Location: FF_X28_Y7_N21
\uart_tx_unit|TX_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_unit|Selector0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_unit|TX_reg~q\);

-- Location: LCCOMB_X28_Y8_N2
\uart_rx_unit|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|process_1~0_combout\ = \uart_rx_unit|Dane_Reg\(6) $ (\uart_rx_unit|Dane_Reg\(7) $ (\uart_rx_unit|Dane_Reg\(5) $ (\RX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|Dane_Reg\(6),
	datab => \uart_rx_unit|Dane_Reg\(7),
	datac => \uart_rx_unit|Dane_Reg\(5),
	datad => \RX~input_o\,
	combout => \uart_rx_unit|process_1~0_combout\);

-- Location: LCCOMB_X27_Y8_N6
\uart_rx_unit|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|process_1~1_combout\ = \uart_rx_unit|Dane_Reg\(2) $ (\uart_rx_unit|Dane_Reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Dane_Reg\(2),
	datad => \uart_rx_unit|Dane_Reg\(1),
	combout => \uart_rx_unit|process_1~1_combout\);

-- Location: LCCOMB_X27_Y8_N28
\uart_rx_unit|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|process_1~2_combout\ = \uart_rx_unit|process_1~1_combout\ $ (\uart_rx_unit|Dane_Reg\(3) $ (\uart_rx_unit|Dane_Reg\(4) $ (\uart_rx_unit|Dane_Reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|process_1~1_combout\,
	datab => \uart_rx_unit|Dane_Reg\(3),
	datac => \uart_rx_unit|Dane_Reg\(4),
	datad => \uart_rx_unit|Dane_Reg\(0),
	combout => \uart_rx_unit|process_1~2_combout\);

-- Location: LCCOMB_X27_Y8_N18
\uart_rx_unit|Blad_Par~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Blad_Par~0_combout\ = (\uart_rx_unit|Dane_Reg[7]~0_combout\ & (\uart_rx_unit|Stan.bit_parzystosci~q\ & (\uart_rx_unit|process_1~0_combout\ $ (\uart_rx_unit|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_unit|process_1~0_combout\,
	datab => \uart_rx_unit|process_1~2_combout\,
	datac => \uart_rx_unit|Dane_Reg[7]~0_combout\,
	datad => \uart_rx_unit|Stan.bit_parzystosci~q\,
	combout => \uart_rx_unit|Blad_Par~0_combout\);

-- Location: LCCOMB_X29_Y9_N26
\uart_rx_unit|stan_ctr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|stan_ctr~0_combout\ = (\uart_rx_unit|Stan.stop~q\) # (!\uart_rx_unit|Stan.czekaj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_unit|Stan.czekaj~q\,
	datac => \uart_rx_unit|Stan.stop~q\,
	combout => \uart_rx_unit|stan_ctr~0_combout\);

-- Location: LCCOMB_X29_Y9_N6
\uart_rx_unit|stan_ctr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|stan_ctr~1_combout\ = (!\uart_rx_unit|Stan.stop~q\ & !\uart_rx_unit|Stan.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_unit|Stan.stop~q\,
	datad => \uart_rx_unit|Stan.start~q\,
	combout => \uart_rx_unit|stan_ctr~1_combout\);

-- Location: LCCOMB_X29_Y9_N4
\uart_rx_unit|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_unit|Selector0~0_combout\ = (\uart_rx_unit|Stan.dane~q\) # (((\baud_gen_unit|Equal0~4_combout\ & \uart_rx_unit|Stan.start~q\)) # (!\uart_rx_unit|Stan.czekaj~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen_unit|Equal0~4_combout\,
	datab => \uart_rx_unit|Stan.dane~q\,
	datac => \uart_rx_unit|Stan.start~q\,
	datad => \uart_rx_unit|Stan.czekaj~q\,
	combout => \uart_rx_unit|Selector0~0_combout\);

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

ww_RX_Blad_Par <= \RX_Blad_Par~output_o\;

ww_stan_ctr(0) <= \stan_ctr[0]~output_o\;

ww_stan_ctr(1) <= \stan_ctr[1]~output_o\;

ww_stan_ctr(2) <= \stan_ctr[2]~output_o\;

ww_stan_ctr(3) <= \stan_ctr[3]~output_o\;

ww_Baud_Monitor <= \Baud_Monitor~output_o\;
END structure;


