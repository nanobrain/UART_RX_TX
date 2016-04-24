library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TX_MY is
	generic (
		Dane_Bity: integer:=8
		);
		
	port(
		clk,reset: in std_logic;
		Dane_Wej: in std_logic_vector(7 downto 0);
		Bit_Par: in std_logic;
		TX_start: in std_logic;
		Baud: in std_logic;
		TX_Dane_Gotowe: out std_logic;
		TX: out std_logic
		);
	end UART_TX_MY;

	architecture arch of UART_TX_MY is
		type state_type is (czekaj, start, dane, bit_parzystosci, stop);
		signal state_reg, state_next: state_type;
		signal Baud_Ctr, Nowe_Baud_Ctr: unsigned(3 downto 0);
		signal Dane_Ctr, Nowe_Dane_Ctr: unsigned(2 downto 0);
		signal Dane_Reg, Nowe_Dane: std_logic_vector(7 downto 0);
		signal TX_reg, TX_next: std_logic;
		
	begin
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	process(clk, reset)
	begin
		if reset='0' then
			state_reg <= czekaj;
			Baud_Ctr <=(others=>'0');
			Dane_Ctr <=(others=>'0');
			Dane_Reg <=(others=>'0');
			TX_reg <='1';
		elsif ( clk'event and clk='1') then
			state_reg <= state_next;
			Baud_Ctr <= Nowe_Baud_Ctr;
			Dane_Ctr <= Nowe_Dane_Ctr;
			Dane_Reg <= Nowe_Dane;
			TX_reg<= TX_next;
		end if;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
	process(state_reg, Baud_Ctr, Dane_Ctr, Dane_Reg, Baud, TX_reg, TX_start, Dane_Wej)
	variable VParzystosc : std_logic;
	begin
		state_next<=state_reg;
		Nowe_Baud_Ctr<=Baud_Ctr;
		Nowe_Dane_Ctr<=Dane_Ctr;
		Nowe_Dane<=Dane_Reg;
		TX_next<=TX_reg;
		TX_Dane_Gotowe<='0';
		
		case state_Reg is
			when czekaj =>
				TX_next<='1';
				if TX_start='1' then
					state_next<=start;
					Nowe_Baud_Ctr<=(others=>'0');
					Nowe_Dane<=Dane_Wej;
					VParzystosc := Dane_Wej(0) xor Dane_Wej(1) xor Dane_Wej(2) xor Dane_Wej(3) xor Dane_Wej(4) xor Dane_Wej(5) xor Dane_Wej(6) xor Dane_Wej(7);
				end if;
			
			when start =>
				TX_next<='0';
				if (Baud='1') then
					if Baud_Ctr=15 then
						state_next<=dane;
						Nowe_Baud_Ctr<=(others=>'0');
						Nowe_Dane_Ctr<=(others=>'0');
					else
						Nowe_Baud_Ctr <=Baud_Ctr + 1;
					end if;
				end if;
			
			when dane =>
				TX_next<=Dane_Reg(0);
				if(Baud='1') then
					if Baud_Ctr=15 then
						Nowe_Baud_Ctr<=(others=>'0');
						Nowe_Dane<= '0' & Dane_Reg(7 downto 1);
						if Dane_Ctr=(Dane_Bity-1) then
							state_next<=bit_parzystosci;
						else
							Nowe_Dane_Ctr<=Dane_Ctr + 1;
						end if;
					else
						Nowe_Baud_Ctr<=Baud_Ctr+1;
					end if;
				end if;
				
			when bit_parzystosci =>
				if ( Bit_Par = '1') then
					if(Baud='1') then
						TX_Next <= VParzystosc;
						if Baud_Ctr=15 then
							Nowe_Baud_Ctr<=(others=>'0');
							state_next<=stop;
						else
							Nowe_Baud_Ctr<=Baud_Ctr+1;
						end if;
					end if;
				else
					state_next<=stop;
				end if;
			when stop=>
				TX_next<='1';
				if(Baud='1') then
					if Baud_Ctr= 15 then
						state_next<=czekaj;
						TX_Dane_Gotowe<='1';
					else
						Nowe_Baud_Ctr<=Baud_Ctr+1;
					end if;
				end if;
		end case;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	TX<=TX_reg;
	
end arch;
