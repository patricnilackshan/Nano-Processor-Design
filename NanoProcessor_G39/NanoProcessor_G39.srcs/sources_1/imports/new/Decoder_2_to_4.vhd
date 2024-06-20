--Decoder_2_to_4
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_2_to_4 is
port( I : in STD_LOGIC_vector(1 downto 0);
      EN : in STD_LOGIC;
      D : out STD_LOGIC_VECTOR (3 downto 0));
end Decoder_2_to_4;

architecture Behavioral of Decoder_2_to_4 is

begin
D(0)<=not(I(1)) and not(I(0)) and EN;
D(1)<=not(I(1)) and I(0) and EN;
D(2)<=I(1) and not(I(0)) and EN;
D(3)<=I(1) and I(0) and EN; 

end Behavioral;