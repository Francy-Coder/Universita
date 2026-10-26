library IEEE;
use IEEE.std_logic_1164.all;

entity alu4 is
    port(
        A, B    : in std_logic_vector(3 downto 0);
        C_IN    : in std_logic;
        OP_CODE : in std_logic_vector(1 downto 0);
        RES     : out std_logic_vector(3 downto 0);
        C_OUT   : out std_logic
    );
end alu4;

architecture structural of alu4 is

    -- dichiarazione del componente ALU a 1 bit
    component alu1 is
        port(
            A, B, C_IN : in std_logic;
            OP_CODE    : in std_logic_vector(1 downto 0);
            RES        : out std_logic;
            C_OUT      : out std_logic
        );
    end component;

    -- segnali interni per la propagazione del riporto
    signal c1, c2, c3 : std_logic;

begin
    -- Inserisci le istanze mancanti di alu1 (istanza 2 ed istanza 3). 
    -- Fai riferimento alle slide. 

    -- istanza 0 (LSB)
    alu_bit0: alu1 port map(
        A       => A(0),
        B       => B(0),
        C_IN    => C_IN,
        OP_CODE => OP_CODE,
        RES     => RES(0),
        C_OUT   => c1
    );

    -- istanza 1
    alu_bit1: alu1 port map(
        A       => A(1),
        B       => B(1),
        C_IN    => c1,
        OP_CODE => OP_CODE,
        RES     => RES(1),
        C_OUT   => c2
    );

    -- istanza 2
    alu_bit2: alu1 port map(
        A       => A(2),
        B       => B(2),
        C_IN    => c2,
        OP_CODE => OP_CODE,
        RES     => RES(2),
        C_OUT   => c3
    );

    -- istanza 3
    alu_bit3: alu1 port map(
        A       => A(3),
        B       => B(3),
        C_IN    => c3,
        OP_CODE => OP_CODE,
        RES     => RES(3),
        C_OUT   => C_OUT
   );
end structural;
