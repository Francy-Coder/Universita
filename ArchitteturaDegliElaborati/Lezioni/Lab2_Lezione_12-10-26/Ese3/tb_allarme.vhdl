library ieee;
use ieee.std_logic_1164.all;

-- Un testbench non ha porte, quindi l'entity è vuota
entity tb_allarme is
end entity tb_allarme;

architecture arch_tb of tb_allarme is

    -- Dichiarazione dei segnali interni per collegare l'entity DUT
    -- Questi segnali simuleranno i pin dell'entity Allarme_Casolingo
    signal A : std_logic := '0'; -- Inizializzato a '0'
    signal B : std_logic := '0'; -- Inizializzato a '0'
    signal C : std_logic := '0'; -- Inizializzato a '0'
    signal Y1, Y2 : std_logic;

begin

    -- Collegamento diretto all'entità che vogliamo testare
    DUT : entity work.Allarme_Casolingo
    port map (
        A  => A,
        B  => B,
        C  => C,
        Y1 => Y1,
        Y2 => Y2
    );

    -- Processo di generazione degli stimoli
    stimulus_process : process
    begin
        -- Test Cases here

        A <= '0';
        B <= '0';
        C <= '0';
        wait for 5 ns;

        A <= '0';
        B <= '1';
        wait for 5 ns;

        A <= '1';
        B <= '0';
        wait for 5 ns;

        A <= '1';
        B <= '1';
        wait for 5 ns;

        wait; -- Mantiene il processo inattivo indefinitamente dopo l'ultimo stimolo

    end process stimulus_process;

end architecture arch_tb;
