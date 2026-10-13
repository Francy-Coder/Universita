library ieee;
use ieee.std_logic_1164.all;

entity signals is
	port(
		A, B: in std_logic;
		C: in std_logic_vector(1 downto 0);
	        Y: out std_logic_vector(1 downto 0)
     	);
end signals;

architecture arch_signals of signals is
	signal S1: std_logic;
	signal S2: std_logic_vector(1 downto 0);
begin
	S1 <= A and B;
	S2 <= '1' & S1;
	Y <= S2 or C;
end;
