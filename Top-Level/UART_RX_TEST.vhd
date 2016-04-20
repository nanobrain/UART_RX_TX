library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UART_RX_TEST is
	generic(
		Dane_Bity: integer:=8;
		Preskaler: integer:=4;
		Preskaler_Bity: integer:=8;
		FlagBuf_W: integer:=8
	);
	
	port(
		clk,reset: in std_logic;
		RX : in std_logic;
		Bit_Par : in std_logic;
		Dane_Wyj : out std_logic_vector(7 downto 0);
		Blad_Par : out std_logic;
		RX_Dane_Gotowe : out std_logic
	);
end UART_RX_TEST;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
architecture str_arch of UART_RX_TEST is
signal Baud : std_logic;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	begin
	
		baud_gen_unit: entity work.BaudGenerator(arch)
		
			generic map( Preskaler => Preskaler, Preskaler_Bity => Preskaler_Bity )
			
			port map( clk => clk, reset => reset,
						--Wyjscia
						 Baud => Baud);
-----------------------------------------------------------------------------------------------------------------------------------------------------		 
		uart_rx_unit: entity work.UART_RX_MY(arch)

			generic map( Dane_Bity => Dane_Bity )

			port map( clk => clk, reset => reset,
						 --Wejscia
						 Baud => Baud,
						 RX => RX,
						 Bit_Par => Bit_Par,
						 --Wyjscia
						 Dane_Wyj => Dane_Wyj,
						 RX_Dane_Gotowe => RX_Dane_Gotowe,
						 Blad_Par => Blad_Par
						 );
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
end str_arch;