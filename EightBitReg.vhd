library ieee;
use ieee.std_logic_1164.all;

entity EightBitReg is
	port(clr,clk,load : in std_logic;
		 Din : in std_logic_vector(7 downto 0);
		 Dout : out std_logic_vector(7 downto 0)
		 );
end EightBitReg;

architecture behavioral of EightBitReg is
	signal D : std_logic_vector(7 downto 0);
	begin
		process(clk)
		begin
			if(rising_edge(clk)) then
				if clr = '1' then
					D <= "00000000";
				elsif load = '1' then
					D <= Din;
				end if;
			end if;
		end process;
	Dout <= D;
end behavioral;