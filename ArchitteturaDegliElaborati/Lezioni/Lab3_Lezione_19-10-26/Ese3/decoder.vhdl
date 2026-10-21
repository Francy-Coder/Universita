library IEEE;
use IEEE.std_logic_1164.all;

entity dec is 
port(	I: in std_logic_vector(1 downto 0);
	O: out std_logic_vector(3 downto 0));
end dec;

architecture archi_dec of dec is 
begin
	with I select
		O  <= "0001" when "00",
		     "0010" when "01",
		     "0100" when "10",
		     "0000" when others;
end archi_dec;
