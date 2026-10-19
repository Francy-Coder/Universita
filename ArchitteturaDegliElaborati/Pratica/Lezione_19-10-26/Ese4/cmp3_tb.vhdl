library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Cmp3_tb is
end entity Cmp3_tb;

architecture behaviour of cmp3_tb is

    -- component to test
component cmp3 is
port (	a_in, b_in: in std_logic_vector(2 downto 0);
y: out std_logic);
end component cmp3;

    -- signal to map to component
signal a_in, b_in: std_logic_vector(2 downto 0);
 signal  y: std_logic;

begin
    -- map signals
    uut: cmp3 port map ( a_in=>a_in,
				 b_in=> b_in,
				y=>y);


    stimulus: process is
    begin
     -- write your test here
	    a_in <= "000"; b_in <= "001";
	    wait for 5 ns;

	    a_in <= "010"; b_in <= "010";
	    wait for 5 ns;
	    
	    a_in <= "010"; b_in <= "001";
	    wait for 5 ns;
    wait;
    end process;
end architecture behaviour;
