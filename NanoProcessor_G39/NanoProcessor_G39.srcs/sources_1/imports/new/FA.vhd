--Full_Adder
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
 port(A : in STD_LOGIC;
      B : in STD_LOGIC;
      C_IN : in STD_LOGIC;
      S : out STD_LOGIC;
      C_OUT : out STD_LOGIC);
end FA;

architecture Behavioral of FA is
component HA 
 port(A : in STD_LOGIC;
      B : in STD_LOGIC;
      S : out STD_LOGIC;
      C_OUT : out STD_LOGIC);

end component;

signal HA0_C,HA0_S,HA1_C,HA1_S : STD_LOGIC;

begin
HA_0 : HA
port map(A => A,
         B => B,
         S => HA0_S,
         C_OUT => HA0_C);

HA_1 : HA
port map(A => HA0_S,
         B => C_IN,
         S => HA1_S,
         C_OUT => HA1_C);

C_OUT <= HA0_C OR HA1_C;
S <= HA1_S;

end Behavioral;