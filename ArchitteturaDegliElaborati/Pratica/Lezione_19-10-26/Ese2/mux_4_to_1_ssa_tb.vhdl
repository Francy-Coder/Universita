library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_4_to_1_ssa_tb is
end entity mux_4_to_1_ssa_tb;

architecture Behavior of mux_4_to_1_ssa_tb is

    -- component to test
component mux_4_to_1_ssa is
port(	d3, d2, d1, d0: in std_logic;
sel: in std_logic_vector(1 downto 0);
mout: out std_logic);
end component mux_4_to_1_ssa;

    -- signal to map to component
signal d3, d2, d1, d0: std_logic;
 signal  sel: std_logic_vector(1 downto 0);
 signal  mout: std_logic;

begin
    -- map signals
    uut: mux_4_to_1_ssa port map ( d3=>d3,
				 d2=> d2,
				 d1=> d1,
				 d0=> d0,
				sel=>sel,
				mout=>mout);


    stimulus: process is
    begin
     -- write your test here
	d3 <= '0'; d2 <= '1'; d1 <= '1'; d0 <= '1';
	sel <= "00";
	wait for 5 ns;

	d3 <= '1'; d2 <= '0'; d1 <= '1'; d0 <= '1';
	sel <= "01";
	wait for 5 ns;

	d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '1';
	sel <= "10";
	wait for 5 ns;

	d3 <= '0'; d2 <= '1'; d1 <= '1'; d0 <= '0';
	sel <= "11";
	wait for 5 ns;
    wait;
    end process;
end architecture behavior;
