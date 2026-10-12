library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(	A, B: in std_logic;
		S, R: out std_logic);
end entity half_adder;

architecture arch of half_adder is 
begin
	S <= A xor B;
	R <= A and B;
end architecture;
