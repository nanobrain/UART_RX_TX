library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BaudGenerator is
	generic(
		Preskaler_Bity: integer := 4;
		Preskaler: integer := 10
	);
	
	port(
		clk,reset: in std_logic;
		Baud: out std_logic
		);
end BaudGenerator;

architecture arch of BaudGenerator is
	signal r_reg: unsigned(Preskaler_Bity - 1 downto 0);
	signal r_next: unsigned(Preskaler_Bity - 1 downto 0);
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	begin
	process(clk, reset)
	begin
		if(reset = '0') then
			r_reg <= (others => '0');
		elsif(clk'event and clk = '1') then
			r_reg <= r_next;
		end if;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
	r_next <= (others => '0') when r_reg = (Preskaler-1) else r_reg + 1;
				
	Baud <= '1' when r_reg = (Preskaler - 1) else '0';
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
end arch;