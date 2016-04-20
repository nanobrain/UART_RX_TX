library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UART_TX_TEST is
	generic(
		Dane_Bity: integer:=8;
		Preskaler: integer:=65;
		Preskaler_Bity: integer:=8;
		FlagBuf_W: integer:=8
	);
	
	port(
		clk,reset: in std_logic;
		TX_Start : in std_logic;
		Bit_Par : in std_logic;
		TX : out std_logic;
		TX_Dane_Gotowe : out std_logic
	);
end UART_TX_TEST;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
architecture str_arch of UART_TX_TEST is
signal din : std_logic_vector(7 downto 0);
signal Byte_Ctr_Reg, Byte_Ctr_Next :  unsigned(3 downto 0);
signal Baud : std_logic;
signal TX_Dane_Gotowe_reg : std_logic;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	begin
	
		baud_gen_unit: entity work.BaudGenerator(arch)
		
			generic map( Preskaler => Preskaler, Preskaler_Bity => Preskaler_Bity )
			
			port map( clk => clk, reset => reset,
						--Wyjscia
						 Baud => Baud);
-----------------------------------------------------------------------------------------------------------------------------------------------------		 
		uart_tx_unit: entity work.UART_TX_MY(arch)

			generic map( Dane_Bity => Dane_Bity)

			port map( clk => clk, reset => reset,
						 --Wejscia
						 Bit_Par => Bit_Par,
						 Baud => Baud,
						 TX_Start => TX_Start, 
						 Dane_Wej => din,
						 --Wyjscia
						 TX => TX,
						 TX_Dane_Gotowe =>  TX_Dane_Gotowe_reg);

-----------------------------------------------------------------------------------------------------------------------------------------------------
	process(clk, reset)
	begin
	if(reset = '0') then
		Byte_Ctr_Reg <= (others=>'0');
	elsif(clk'event and clk='1') then
		 Byte_Ctr_Reg <= Byte_Ctr_Next;
	end if;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
	process(Byte_Ctr_Reg, TX_Dane_Gotowe_reg, TX_Start)
	begin
	Byte_Ctr_Next<=Byte_Ctr_Reg;
	
	if TX_Start='0' then
		
		Byte_Ctr_Next<=(others=>'0');
	
	elsif ( TX_Dane_Gotowe_reg='1') then

		if Byte_Ctr_Reg="1110" then
			Byte_Ctr_Next <="0000";
		else
			Byte_Ctr_Next<=Byte_Ctr_Reg+1;
		end if;
	
	end if;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
	process(Byte_Ctr_Reg)
	begin

		case Byte_Ctr_Reg is
			when "0000" =>
				din <= "00000000";
			when "0001" =>
				din <= "01001000";
			when "0010" =>
				din <= "01100101";
			when "0011" =>
				din <= "01101100";
			when "0100" =>
				din <= "01101100";
			when "0101" =>
				din <= "01101111";
			when "0110" =>
				din <= "00100000";
			when "0111" =>
				din <= "01010111";
			when "1000" =>
				din <= "01101111";
			when "1001" =>
				din <= "01110010";
			when "1010" =>
				din <= "01101100";
			when "1011" =>
				din <= "01100100";
			when "1100" =>
				din <= "00100000";
			when "1101" =>	
				din <= "00100001";
			when others =>
				din <= (others=>'0');
		
		end case;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
TX_Dane_Gotowe <= TX_Dane_Gotowe_reg;
end str_arch;