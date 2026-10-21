library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity mux_4_to_1_ssa is
    port(
        D3, D2, D1, D0: in std_logic;
        SEL: in std_logic_vector(1 downto 0);
        MOUT: out std_logic
    );
end mux_4_to_1_ssa;

-- architecture
architecture mux of mux_4_to_1_ssa is
begin
    with SEL select
        MOUT <= D0 when "00",
                D1 when "01",
                D2 when "10",
                D3 when "11",
                '0' when others;

end;
