library ieee;
use ieee.std_logic_1164.all;

entity FourBitReg is
	port(clr,clk,load : in std_logic;
		 Din : in std_logic_vector(3 downto 0);
		 Dout : out std_logic_vector(3 downto 0)
		 );
end FourBitReg;

architecture behavioral of FourBitReg is
	signal D : std_logic_vector(3 downto 0);
	begin
		process(clk,clr)
		begin
			if clr = '1' then
					D <= "0000";
			elsif(rising_edge(clk)) then
				
				if load = '1' then
					D <= Din;
				end if;
			end if;
		end process;
	Dout <= D;
end behavioral;