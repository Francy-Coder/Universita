library IEEE;
use IEEE.std_logic_1164.all;

-- entity della ALU a 1 bit
entity alu1 is
    port(
        A, B, C_IN : in std_logic;
        OP_CODE    : in std_logic_vector(1 downto 0);
        RES        : out std_logic;
        C_OUT      : out std_logic
    );
end alu1;

architecture behavior of alu1 is

    -- dichiarazione del componente ereditato dalla Lezione 3 (gia' completata)
    component adder1 is
        port(
            A, B, C_IN : in std_logic;
            S, C_OUT   : out std_logic
        );
    end component;

    -- segnali interni per intercettare i risultati parziali
    signal res_and, res_or, res_xor, res_add : std_logic;

begin

    -- calcolo delle operazioni logiche (gia' completato)
    res_and <= A and B;
    res_or  <= A or B;
    res_xor <= A xor B;

    -- =========================================================================
    -- COMPITO 1: esegui il port map del full adder a 1 bit (adder1)
    -- collega gli ingressi A, B, C_IN e mappa l'uscita S al segnale 'res_add'
    -- e l'uscita C_OUT direttamente alla porta C_OUT della ALU.
    -- =========================================================================
    
    -- INSERISCI QUI IL TUO CODICE PER IL PORT MAP (FA_inst: adder1 port map ...)
    -- (fai riferimento alle slide)
	FA_inst: adder1 port map(A => A, B => B, C_IN => C_IN, S => res_add, C_OUT => C_OUT);    
    
    -- =========================================================================
    -- COMPITO 2: implementa il Multiplexer usando selected signal assignment (SSA)
    -- seleziona quale risultato (res_and, res_or, res_xor, res_add) mandare 
    -- all'uscita RES in base al valore di OP_CODE ("00", "01", "10", "11").
    -- =========================================================================
    
    -- INSERISCI QUI IL TUO CODICE (with OP_CODE select ...)
    -- (fai riferimento alle slide)
    	with OP_CODE select 
		RES <= res_and when "00",
		       res_or when "01",
		       res_xor when "10",
		       res_add when "11",
		       '0' when others; 
end behavior;



