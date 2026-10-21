library ieee;
use ieee.std_logic_1164.all;

-- Un testbench non ha porte, quindi l'entity è vuota
entity tb_nnn is
end entity tb_nnn;

architecture arch_tb of tb_nnn is

    -- Dichiarazione dei segnali interni per collegare l'entity DUT
    -- Questi segnali simuleranno i pin dell'entity porta_and
    signal A : std_logic := '0'; -- Inizializzato a '0'
    signal B : std_logic := '0'; -- Inizializzato a '0'
    signal Y1, Y2, Y3: std_logic;

    -- Dichiarazione del componente che vogliamo testare
    component nnn
        port (
            A : in  std_logic;
            B : in  std_logic;
            Y1 : out std_logic;
	    Y2 : out std_logic;
	    Y3 : out std_logic
        );
    end component;

begin

    -- Map le porte del componente alle variabili/segnali del testbench
    DUT : nnn
    port map (
        A => A,
        B => B,
        Y1 => Y1,
	Y2 => Y2,
	Y3 => Y3
    );

    -- Processo di generazione degli stimoli
    stimulus_process : process
    begin
        -- Test Cases here
	A <= '0'; B <= '0'; wait for 5 ns;
	A <= '0'; B <= '1'; wait for 5 ns;
	A <= '1'; B <= '0'; wait for 5 ns;
	A <= '1'; B <= '1'; wait for 5 ns;

       	wait; -- Mantiene il processo inattivo indefinitamente dopo l'ultimo stimolo

    end process stimulus_process;

end architecture arch_tb;
