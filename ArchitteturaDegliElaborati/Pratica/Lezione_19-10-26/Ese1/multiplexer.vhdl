library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4_to_1 is
    port (
        D3, D2, D1, D0 : in std_logic;
        SEL            : in std_logic_vector(1 downto 0);
        MOUT           : out std_logic
    );
end mux_4_to_1;

architecture mux of mux_4_to_1 is
begin
    MOUT <= D0 when SEL = "00" else
            D1 when SEL = "01" else
            D2 when SEL = "10" else
            D3 when SEL = "11" else
            '0';
end mux;
