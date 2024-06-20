--Mux_2_to_1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_2_to_1 is
port( D0 : in STD_LOGIC;
      D1 : in STD_LOGIC;
      S : in STD_LOGIC;
      Y : out STD_LOGIC);
end Mux_2_to_1;

architecture Behavioral of mux_2_to_1 is

begin
Y <= (D0 AND NOT(S)) OR (D1 AND S);
end Behavioral;