library ieee;
use ieee.std_logic_1164.all;

-- Un testbench non ha porte, quindi l'entity è vuota
entity tb_ha is
end entity tb_ha;

architecture arch_tb of tb_ha is

    -- Dichiarazione dei segnali interni per collegare l'entity DUT
    -- Questi segnali simuleranno i pin dell'entity porta_and
    signal A : std_logic := '0'; -- Inizializzato a '0'
    signal B : std_logic := '0'; -- Inizializzato a '0'
    signal S, R: std_logic;

    -- Dichiarazione del componente che vogliamo testare
    component half_adder
        port (
            A : in  std_logic;
            B : in  std_logic;
            S : out std_logic;
	    R : out std_logic
        );
    end component;

begin

    -- Istanziazione dell'hald adder (collegamento del DUT al testbench)
    -- Map le porte del componente alle variabili/segnali del testbench
    DUT : half_adder
    port map (
        A => A,
        B => B,
        S => S,
	R => R
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
