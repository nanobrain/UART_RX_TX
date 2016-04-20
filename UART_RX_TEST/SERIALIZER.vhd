library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity SERIALIZER is
    Port ( we_ser : in  STD_LOGIC_VECTOR(7 downto 0);
           nreset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  wy_ser : out  STD_LOGIC);
end SERIALIZER;

architecture Behavioral of SERIALIZER is

	signal load : std_logic;
	signal c : std_logic_vector(7 downto 0);
	signal cnt : std_logic_vector(4 downto 0);

	begin


	rejestr: process (nreset,clk)
	begin
		if (nreset = '0') then
			c <= (others => '0');
		elsif (clk'Event and clk='1') then
			if load='1' then
					c <= we_ser;
				else 
					c <= c (6 downto 0)&'1';
			end if;
		end if; 
	end process rejestr;

	wy_ser <= c(7);

end Behavioral;

