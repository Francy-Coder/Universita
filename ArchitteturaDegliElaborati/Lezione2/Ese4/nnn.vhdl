library ieee;
use ieee.std_logic_1164.all;

entity nnn is
	port(
		A, B: in std_logic;
		Y1, Y2, Y3: out std_logic
	);
end entity nnn;

architecture arch of nnn  is
begin 
	Y1 <= not A;
	Y2 <= A nand B;
	Y3 <= A nor  B;
end architecture;
