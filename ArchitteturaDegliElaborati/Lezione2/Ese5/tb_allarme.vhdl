ibrary ieee;
use ieee.std_logic_1164.all;

-- Un testbench non ha porte, quindi l'entity è vuota
entity tb_allarme is
end entity tb_allarme;

architecture arch_tb of tb_allarme is

    -- Dichiarazione dei segnali interni per collegare l'entity DUT
    -- Questi segnali simuleranno i pin dell'entity porta_and
    signal A : std_logic := '0'; -- Inizializzato a '0'
    signal B : std_logic := '0'; -- Inizializzato a '0'
    signal C : std_logic := '0'; -- Inizializzato a '0'
    signal Y1, Y2: std_logic;

    -- Dichiarazione del componente che vogliamo testare
    component allarme
        port (
            A : in  std_logic;
            B : in  std_logic;
            C : in  std_logic;
            Y1 : out std_logic;
	    Y2 : out std_logic
        );
    end component;

begin

    -- Map le porte del componente alle variabili/segnali del testbench
    DUT : allarme
    port map (
        A => A,
        B => B,
	C => C,
        Y1 => Y1,
	Y2 => Y2
    );

    -- Processo di generazione degli stimoli
    stimulus_process : process
    begin
        -- Test Cases here
	

       	wait; -- Mantiene il processo inattivo indefinitamente dopo l'ultimo stimolo

    end process stimulus_process;

end architecture arch_tb;
