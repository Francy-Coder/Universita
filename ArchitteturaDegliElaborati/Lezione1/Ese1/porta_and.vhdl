library ieee;
use ieee.std_logic_1164.all;

entity porta_and is
	port (
		A : in std_logic;
		B : in std_logic;
		Y : out std_logic
	);
end entity porta_and;

architecture arch_porta_and of porta_and is 
begin
	Y <= A and B;
end architecture arch_porta_and;

