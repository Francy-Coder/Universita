library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Allarme_Casolingo is
    port (
        A  : in  STD_LOGIC;
        B  : in  STD_LOGIC;
        C  : in  STD_LOGIC;
        Y1 : out STD_LOGIC;
        Y2 : out STD_LOGIC
    );
end Allarme_Casolingo;

architecture Behavioral of Allarme_Casolingo is
begin

    Y1 <= A XOR B;

    Y2 <= A XNOR B;

end Behavioral;
