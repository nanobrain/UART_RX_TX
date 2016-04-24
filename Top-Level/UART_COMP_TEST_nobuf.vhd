library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UART_COMP_TEST_nobuf is
	generic(
		Dane_Bity		: integer:=8;
		Preskaler		: integer:=65;
		Preskaler_Bity	: integer:=8
	);
	
	port(
		clk,reset	:	in std_logic;
		RX				:	in std_logic;
		Bit_Par 		:	in std_logic;
		TX 			:	out std_logic;
		RX_Blad_Par :  out std_logic;
		stan_ctr : out unsigned( 3 downto 0);
		Baud_Monitor:  out std_logic
	);
end UART_COMP_TEST_nobuf;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
architecture str_arch of UART_COMP_TEST_nobuf is

signal Baud		: std_logic;

signal Flag		: std_logic;

signal Dane		: std_logic_vector(7 downto 0);
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	begin
	
		baud_gen_unit: entity work.BaudGenerator(arch)
		
			generic map( Preskaler => Preskaler, Preskaler_Bity => Preskaler_Bity )
			
			port map( clk => clk, reset => reset,
						--Wejscia
						 Baud => Baud);
-----------------------------------------------------------------------------------------------------------------------------------------------------	 
		uart_rx_unit: entity work.UART_RX_MY(arch)
		
			generic map(Dane_Bity => Dane_Bity )
			
			port map( clk => clk, reset => reset,
						 --Wejscia
						 RX => RX,
						 Bit_Par => Bit_Par,
						 Baud => Baud,
						 --Wyjscia
						 Blad_Par => RX_Blad_Par,
						 RX_Dane_Gotowe => Flag,
						 stan_ctr => stan_ctr,
						 Dane_Wyj => Dane);
-----------------------------------------------------------------------------------------------------------------------------------------------------		 
		uart_tx_unit: entity work.UART_TX_MY(arch)
			 		
			generic map( Dane_Bity => Dane_Bity )
			
			port map( clk => clk, reset => reset,
						 --Wejscia
						 Baud => Baud,
						 Bit_Par => Bit_Par,
						 TX_Start => Flag, 
						 Dane_Wej => Dane,
						 --Wyjscia
						 TX => TX,
						 TX_Dane_Gotowe => open);
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
Baud_Monitor<=Baud;
end str_arch;