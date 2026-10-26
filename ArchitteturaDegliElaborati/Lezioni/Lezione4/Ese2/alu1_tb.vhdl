library ieee;
use ieee.std_logic_1164.all;

entity alu1_tb is
end entity alu1_tb;

architecture behavior of alu1_tb is

    component alu1 is
        port(
            A, B, C_IN : in std_logic;
            OP_CODE    : in std_logic_vector(1 downto 0);
            RES        : out std_logic;
            C_OUT      : out std_logic
        );
    end component alu1;

    -- Inizializzazione a '0' per evitare lo stato 'U'
    signal A       : std_logic := '0';
    signal B       : std_logic := '0';
    signal C_IN    : std_logic := '0';
    signal OP_CODE : std_logic_vector(1 downto 0) := "00";
    signal RES     : std_logic;
    signal C_OUT   : std_logic;

begin

    uut: alu1 port map(
        A       => A,
        B       => B,
        C_IN    => C_IN,
        OP_CODE => OP_CODE,
        RES     => RES,
        C_OUT   => C_OUT
    );

    stimulus: process is
    begin
        -- =====================================================================
        -- COMPITO 3: Inserisci i casi di test per la simulazione
        -- Testa in sequenza: AND ("00"), OR ("01"), XOR ("10") e ADD ("11").
        -- Usa (A='1', B='1', C_IN='0') per tutte le operazioni logiche.
        -- Per l'addizione testa due casi: (A='1', B='1', C_IN='0') e 
        -- (A='1', B='1', C_IN='1').
        -- Usa un ritardo di 5 ns tra ogni test.
        -- =====================================================================

        -- INSERISCI QUI I TUOI STIMOLI (fai riferimento alle slide)
	A <= '1'; B <= '1'; C_IN <= '0'; OP_CODE <= "00"; wait for 5 ns;
        A <= '1'; B <= '1'; C_IN <= '0'; OP_CODE <= "01"; wait for 5 ns;
        A <= '1'; B <= '1'; C_IN <= '0'; OP_CODE <= "10"; wait for 5 ns;
        A <= '1'; B <= '1'; C_IN <= '0'; OP_CODE <= "11"; wait for 5 ns;
        A <= '1'; B <= '1'; C_IN <= '1'; OP_CODE <= "11"; wait for 5 ns;

        wait;
    end process;

end architecture behavior;
