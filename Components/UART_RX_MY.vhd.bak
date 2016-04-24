library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity UART_RX_MY is
	generic(
		Dane_Bity: integer:=8
		);
    Port ( 
				reset : in  STD_LOGIC;
				clk : in  STD_LOGIC;
				RX	: in STD_LOGIC;
				Baud : in STD_LOGIC;
				Bit_Par : in STD_LOGIC;
				Blad_Par : out STD_LOGIC;
				Dane_Wyj: out STD_LOGIC_VECTOR(7 downto 0);
				RX_Dane_Gotowe: out STD_LOGIC
			);

end UART_RX_MY;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
architecture arch of UART_RX_MY is

	type Stany is ( czekaj, start, dane, bit_parzystosci, stop );
	signal Stan, Nast_Stan: Stany;
	signal Nowe_Dane, Dane_Reg: std_logic_vector(7 downto 0);
	signal Nowe_Baud_Ctr, Baud_Ctr: unsigned(7 downto 0);
	signal Nowe_Dane_Ctr, Dane_Ctr: unsigned(3 downto 0);
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	begin
	process(clk,reset)
	begin
		if (reset='0') then
			Stan<=czekaj;
			Dane_Reg <= (others=>'0');
			Dane_Ctr <= (others=>'0');
			Baud_Ctr <= (others=>'0');
		elsif(clk'event and clk='1') then
			Stan<=Nast_Stan;
			Dane_Reg <= Nowe_Dane;
			Dane_Ctr <= Nowe_Dane_Ctr;
			Baud_Ctr <= Nowe_Baud_Ctr;
		end if;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
	process(stan, Baud, Baud_Ctr, Nowe_Dane, Dane_Reg, RX, Dane_Ctr )
	begin
		Nast_Stan<=Stan;
		RX_Dane_Gotowe <='0';
		Blad_Par <= '0';
		Nowe_Dane <= Dane_Reg;
		Nowe_Dane_Ctr <= Dane_Ctr;
		Nowe_Baud_Ctr <= Baud_Ctr;
		case Stan is
---------------------------------		
			when czekaj=>
			
				if(RX='0') then
				
					Nast_Stan <= start;
					Nowe_Baud_Ctr  <= (others=>'0');
					
				end if;
---------------------------------
			when start=>
			
			if(Baud='1') then
				if Baud_Ctr = 15 then
					
					Nast_Stan <= dane;
					Nowe_Baud_Ctr <=(others=>'0');
					Nowe_Dane_Ctr<=(others=>'0');
					
				else
				
					Nowe_Baud_Ctr <= Baud_Ctr + 1;
					
				end if;
			end if;
---------------------------------
			when dane=>
			
				if(Baud='1') then
					if ( Baud_Ctr = 15 ) then
						
						Nowe_Baud_Ctr <= (others=>'0');
						Nowe_Dane <= RX & Dane_Reg(7 downto 1);
						
						if ( Dane_Ctr = Dane_Bity-1 ) then

							Nast_Stan <= bit_parzystosci;
							
						else

							Nowe_Dane_Ctr <= Dane_Ctr + 1;
							
						end if;
						
					else
					
						Nowe_Baud_Ctr <= Baud_Ctr + 1;
						
					end if;
				end if;
---------------------------------
			when bit_parzystosci=>
				
				if(Bit_Par = '1') then
						if(Baud = '1' ) then
								if ( Baud_Ctr = 15 ) then
										
										if ( RX = not (Dane_Reg(7) xor Dane_Reg(6) xor Dane_Reg(5) xor Dane_Reg(4) xor Dane_Reg(3) xor Dane_Reg(2) xor Dane_Reg(1) xor Dane_Reg(0)) ) then
										
												Blad_Par <= '1';
												Nast_Stan <= stop;
											
										else

											Nast_Stan <= stop;
										
										end if;
								else
								
									Nowe_Baud_Ctr <= Baud_Ctr + 1;
									
								end if;
						end if;
				elsif( Bit_Par = '0') then
				
					Nast_Stan <= stop;
					
				end if;
---------------------------------
			when stop=>
			
				if(Baud='1') then
				
					if(Baud_Ctr = 15) then
					
						Nast_Stan <= czekaj;
						RX_Dane_Gotowe <= '1';
						
					else
					
						Nowe_Baud_Ctr <= Baud_Ctr + 1;
						
					end if;
				end if;
		end case;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
		Dane_Wyj <= Dane_Reg;
	end process;
end arch;
