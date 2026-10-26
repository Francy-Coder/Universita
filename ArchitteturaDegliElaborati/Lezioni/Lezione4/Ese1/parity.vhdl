library ieee;
use ieee.std_logic_1164.all;

entity parity is
	port(A: in std_logic_vector(2 downto 0); Y: out std_logic_vector(3 downto 0));
end;

architecture arch_parity of parity is
begin
	Y(3 downto 1) <= A;
	Y(0) <= A(0) xor A(1) xor A(2);
end;
