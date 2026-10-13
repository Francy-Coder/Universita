library ieee;
use ieee.std_logic_1164.all;

-- Un testbench non ha porte, quindi l'entity è vuota
entity tb_signals is
end entity tb_signals;

architecture arch_tb of tb_signals is

    -- Dichiarazione dei segnali interni per collegare l'entity DUT
    -- Questi segnali simuleranno i pin dell'entity porta_and
    signal A : std_logic := '0'; -- Inizializzato a '0'
    signal B : std_logic := '0'; -- Inizializzato a '0'
    signal C: std_logic_vector(1 downto 0) := "00"; -- Inizializzato a "00"
    signal Y: std_logic_vector(1 downto 0);

    -- Dichiarazione del componente che vogliamo testare
    component signals
        port (
            A : in  std_logic;
            B : in  std_logic;
            C : in std_logic_vector(1 downto 0);
	    Y : out std_logic_vector(1 downto 0)
        );
    end component;

begin

    -- Map le porte del componente alle variabili/segnali del testbench
    DUT : signals
    port map (
        A => A,
        B => B,
        C => C,
	Y => Y
    );

    -- Processo di generazione degli stimoli
    stimulus_process : process
    begin
        -- Test Cases here
    A <= '0'; B <= '0'; C <= "00"; wait for 5 ns;
    A <= '0'; B <= '0'; C <= "01"; wait for 5 ns;
    A <= '0'; B <= '0'; C <= "10"; wait for 5 ns;
    A <= '0'; B <= '0'; C <= "11"; wait for 5 ns;
    A <= '0'; B <= '1'; C <= "00"; wait for 5 ns;
    A <= '0'; B <= '1'; C <= "01"; wait for 5 ns;
    A <= '0'; B <= '1'; C <= "10"; wait for 5 ns;
    A <= '0'; B <= '1'; C <= "11"; wait for 5 ns;
    A <= '1'; B <= '0'; C <= "00"; wait for 5 ns;
    A <= '1'; B <= '0'; C <= "01"; wait for 5 ns;
    A <= '1'; B <= '0'; C <= "10"; wait for 5 ns;
    A <= '1'; B <= '0'; C <= "11"; wait for 5 ns;
    A <= '1'; B <= '1'; C <= "00"; wait for 5 ns;
    A <= '1'; B <= '1'; C <= "01"; wait for 5 ns;
    A <= '1'; B <= '1'; C <= "10"; wait for 5 ns;
    A <= '1'; B <= '1'; C <= "11"; wait for 5 ns;

	wait; -- Mantiene il processo inattivo indefinitamente dopo l'ultimo stimolo

    end process stimulus_process;

end architecture arch_tb;
