library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity adder1 is
port(	A, B, C_IN: in std_logic;
	S, C_OUT: out std_logic);
end adder1;

-- architecture
architecture arch_adder1 of adder1 is
begin
	S <= A xor B xor C_IN;
	C_OUT <= (A and B) or ((A xor B) AND C_IN);
end arch_adder1;
