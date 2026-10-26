-- testbench generato automaticamente via script
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu4_tb is
end entity alu4_tb;

architecture behavior of alu4_tb is

    component alu4 is
        port(
            A : in std_logic_vector(3 downto 0);
            B : in std_logic_vector(3 downto 0);
            C_IN : in std_logic;
            OP_CODE : in std_logic_vector(1 downto 0);
            RES : out std_logic_vector(3 downto 0);
            C_OUT : out std_logic
        );
    end component;

    -- segnali interni per le port
    signal A : std_logic_vector(3 downto 0) := (others => '0');
    signal B : std_logic_vector(3 downto 0) := (others => '0');
    signal C_IN : std_logic := '0';
    signal OP_CODE : std_logic_vector(1 downto 0) := (others => '0');
    signal RES : std_logic_vector(3 downto 0) := (others => '0');
    signal C_OUT : std_logic := '0';

begin

    -- istanziazione dell'Unit Under Test (UUT)
    UUT: alu4
        port map (
            A => A,
            B => B,
            C_IN => C_IN,
            OP_CODE => OP_CODE,
            RES => RES,
            C_OUT => C_OUT
        );

    -- Processo di generazione degli stimoli
    stimulus_process: process
    begin
    A <= "0000"; B <= "0000"; C_IN <= '0'; OP_CODE <= "00"; wait for 5 ns; -- and
    A <= "0011"; B <= "0010"; C_IN <= '0'; OP_CODE <= "00"; wait for 5 ns; -- and
    A <= "0011"; B <= "0010"; C_IN <= '0'; OP_CODE <= "01"; wait for 5 ns; -- or
    A <= "0011"; B <= "0010"; C_IN <= '0'; OP_CODE <= "10"; wait for 5 ns; -- xor
    A <= "0011"; B <= "0010"; C_IN <= '0'; OP_CODE <= "11"; wait for 5 ns; -- add
    A <= "0011"; B <= "0010"; C_IN <= '1'; OP_CODE <= "11"; wait for 5 ns; -- add
    A <= "1000"; B <= "1000"; C_IN <= '1'; OP_CODE <= "11"; wait for 5 ns; -- add
        wait;
    end process;

end architecture behavior;
