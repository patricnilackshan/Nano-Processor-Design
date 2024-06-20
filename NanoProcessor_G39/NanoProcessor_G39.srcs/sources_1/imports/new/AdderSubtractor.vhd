--AdderSubtractor
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AdderSubtractor is
port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       C_IN : in STD_LOGIC;
       S : out STD_LOGIC_VECTOR (3 downto 0);
       Zero: out STD_LOGIC;
       C_OUT : out STD_LOGIC);
end AdderSubtractor;

architecture Behavioral of AdderSubtractor is

component FA
port ( A : in STD_LOGIC;
       B : in STD_LOGIC;
       C_IN : in STD_LOGIC;
       S : out STD_LOGIC;
       C_OUT : out STD_LOGIC);
end component;

signal FA0_C, FA1_C, FA2_C, FA3_C, B0,B1,B2,B3: STD_LOGIC;
signal S_out:STD_LOGIC_VECTOR (3 downto 0);

begin

FA_0: FA
port map(A=>A(0),
         B=>B0,
         C_IN=>C_IN,
         S=>S_out(0),
         C_OUT=>FA0_C);

FA_1: FA
port map(A=>A(1),
         B=>B1,
         C_IN=>FA0_C,
         S=>S_out(1),
         C_OUT=>FA1_C);

FA_2: FA
port map(A=>A(2),
         B=>B2,
         C_IN=>FA1_C,
         S=>S_out(2),
         C_OUT=>FA2_C);

FA_3: FA
port map(A=>A(3),
         B=>B3,
         C_IN=>FA2_C,
         S=>S_out(3),
         C_OUT=>FA3_C);
       
B0<=B(0) XOR C_IN; 
B1<=B(1) XOR C_IN; 
B2<=B(2) XOR C_IN; 
B3<=B(3) XOR C_IN; 
C_OUT<=FA3_C;
Zero<= NOT(S_out(0) OR S_out(1) OR S_out(2) OR S_out(3));
S<=S_out;

end Behavioral;