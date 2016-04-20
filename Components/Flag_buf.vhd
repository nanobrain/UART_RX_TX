library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Flag_buf is
	generic(
		FlagBuf_W: integer:=8
		);
    Port ( 
				reset : in  STD_LOGIC;
				clk : in  STD_LOGIC;
				Clr_Flag, Set_Flag : in std_logic;
				Dane_Wej: in std_logic_vector(FlagBuf_W-1 downto 0);
				Dane_Wyj: out std_logic_vector(FlagBuf_W-1 downto 0);
				Flag: out std_logic
			);

end Flag_buf;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
architecture arch of Flag_buf is

	signal buf_reg, buf_next: std_logic_vector(FlagBuf_W-1 downto 0);
	signal Flag_reg, Flag_next: std_logic;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	begin

		process(clk, reset)
		begin
			if reset = '0' then
				buf_reg<=(others=>'0');
				Flag_reg<='0';
			elsif(clk'event and clk='1') then
				buf_reg<=buf_next;
				Flag_reg<=Flag_next;
			end if;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
	process( buf_reg, Flag_reg, Set_Flag, Clr_Flag, Dane_Wej )
	begin
		buf_next<=buf_reg;
		Flag_next<=Flag_reg;
		
		if(Set_Flag='1') then
			buf_next<=Dane_Wej;
			Flag_next<='1';
		elsif(Clr_Flag='1') then
			Flag_next<='0';
		end if;
	end process;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
	Dane_Wyj<=buf_reg;
	Flag<=Flag_reg;
		
end arch;