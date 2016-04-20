library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UART_COMP_TEST is
	generic(
		Dane_Bity		: integer:=8;
		Preskaler		: integer:=65;
		Preskaler_Bity	: integer:=8;
		FlagBuf_W		: integer:=8
	);
	
	port(
		clk,reset	:	in std_logic;
		RX				:	in std_logic;
		Bit_Par 		:	in std_logic;
		TX 			:	out std_logic;
		RX_Blad_Par :  out std_logic;
		Baud_Monitor:  out std_logic
	);
end UART_COMP_TEST;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
architecture str_arch of UART_COMP_TEST is

signal Baud					: std_logic;

signal RX_Set_Flag		: std_logic;
signal RX_Clear_Flag		: std_logic;
signal Dane_RX_to_Buf	: std_logic_vector(7 downto 0);

signal TX_Set_Flag		: std_logic;
signal TX_Clear_Flag		: std_logic;
signal Dane_Buf_to_TX	: std_logic_vector(7 downto 0);
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
						 RX_Dane_Gotowe => RX_Set_Flag,
						 Dane_Wyj => Dane_RX_to_Buf);
-----------------------------------------------------------------------------------------------------------------------------------------------------		 
		uart_tx_unit: entity work.UART_TX_MY(arch)
			 		
			generic map( Dane_Bity => Dane_Bity )
			
			port map( clk => clk, reset => reset,
						 --Wejscia
						 Baud => Baud,
						 Bit_Par => Bit_Par,
						 TX_Start => TX_Set_Flag, 
						 Dane_Wej => Dane_Buf_to_TX,
						 --Wyjscia
						 TX => TX,
						 TX_Dane_Gotowe =>  TX_Clear_Flag);
-----------------------------------------------------------------------------------------------------------------------------------------------------
		RX_Flag_buf_unit: entity work.Flag_buf(arch)
		
			generic map( FlagBuf_W => FlagBuf_W )
			
			port map( clk => clk, reset => reset,
						 --Wejscia
						 Dane_Wej => Dane_RX_to_Buf,
						 Clr_Flag => TX_Clear_Flag,
						 Set_Flag => RX_Set_Flag,
						 --Wyjscia
						 flag => TX_Set_Flag,
						 Dane_Wyj => Dane_Buf_to_TX);
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
Baud_Monitor<=Baud;
end str_arch;