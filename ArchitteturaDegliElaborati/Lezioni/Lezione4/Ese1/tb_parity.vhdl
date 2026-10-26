library ieee;
use ieee.std_logic_1164.all;

entity tb_parity is
end entity;

architecture arch_tb of tb_parity is
	component parity is
		port(A: in std_logic_vector(2 downto 0); Y: out std_logic_vector(3 downto 0));
	end component;

	signal A: std_logic_vector(2 downto 0) := "010";
	signal Y: std_logic_vector(3 downto 0);
begin
	p: parity port map (A => A, Y => Y);

stimuli: process
begin
	A <= "010"; wait for 5 ns;
	A <= "110"; wait for 5 ns;
	A <= "011"; wait for 5 ns;
	A <= "100"; wait for 5 ns;
	A <= "111"; wait for 5 ns;
	wait;
end process;
end;

