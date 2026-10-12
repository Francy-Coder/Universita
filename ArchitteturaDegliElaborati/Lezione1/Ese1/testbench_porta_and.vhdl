library ieee;
use ieee.std_logic_1164.all;

-- Un testbench non ha porte, quindi l'entity è vuota
entity testbench_porta_and is
end entity testbench_porta_and;

architecture test of testbench_porta_and is

    -- Dichiarazione dei segnali interni per collegare l'entity DUT
    -- Questi segnali simuleranno i pin dell'entity porta_and
    signal A : std_logic := '0'; -- Inizializzato a '0'
    signal B : std_logic := '0'; -- Inizializzato a '0'
    signal Y : std_logic;

    -- Dichiarazione del componente che vogliamo testare (la nostra porta AND)
    component porta_and
        port (
            A : in  std_logic;
            B : in  std_logic;
            Y : out std_logic
        );
    end component;

begin

    -- Istanziazione della porta AND (collegamento del DUT al testbench)
    -- Map le porte del componente alle variabili/segnali del testbench
    DUT : porta_and
    port map (
        A => A,
        B => B,
        Y => Y
    );

    -- Processo di generazione degli stimoli
    stimulus_process : process
    begin
        -- Test Cases here
	a<='0';b<='0';
	wait for 5 ns;
	a<='0';b<='1';
	wait for 5 ns;
	a<='1';b<='0';
	wait for 5 ns;
	a<='1';b<='1';
	wait for 5 ns;		

       	wait; -- Mantiene il processo inattivo indefinitamente dopo l'ultimo stimolo

    end process stimulus_process;

end architecture test;
