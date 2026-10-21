library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec_tb is
end entity Dec_tb;

architecture behaviour of dec_tb is

    -- component to test
component dec is
port(	i: in std_logic_vector(1 downto 0);
o: out std_logic_vector(3 downto 0));
end component dec;

    -- signal to map to component
signal i: std_logic_vector(1 downto 0);
 signal  o: std_logic_vector(3 downto 0);

begin
    -- map signals
    uut: dec port map ( i=>i,
				o=>o);


    stimulus: process is
    begin
     -- write your test here
	    i <= "00";
	    wait for 5 ns;

	    i <= "01";
	    wait for 5 ns;

	    i <= "10";
	    wait for 5 ns;

	    i <= "11";
	    wait for 5 ns;
    wait;
    end process;
end architecture behaviour;
