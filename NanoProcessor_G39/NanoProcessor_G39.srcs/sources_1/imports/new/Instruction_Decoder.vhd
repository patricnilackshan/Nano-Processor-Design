--Instruction_Decoder
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instruction_Decoder is
port( ROM_Instruction : in STD_LOGIC_VECTOR (11 downto 0);
      Check_Jump : in STD_LOGIC_VECTOR (3 downto 0);
      Select_A : out STD_LOGIC_VECTOR (2 downto 0);
      Select_B : out STD_LOGIC_VECTOR (2 downto 0);
      Enable_Reg : out STD_LOGIC_VECTOR (2 downto 0);
      AddSub : out STD_LOGIC;
      Jump_Flag : out STD_LOGIC;
      Jump_Address : out STD_LOGIC_VECTOR (2 downto 0);
      LoadSelect : out STD_LOGIC;
      ImValue : out STD_LOGIC_VECTOR (3 downto 0));
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

component Decoder_2_to_4
port( I : in STD_LOGIC_VECTOR (1 downto 0);
      EN : in STD_LOGIC;
      D : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal ADD, NEG, MOVI, JZR :STD_LOGIC;

begin
Decoder_2_to_4_0: Decoder_2_to_4
port map( I(0)=>ROM_Instruction(10),
          I(1)=>ROM_Instruction(11),
          EN=>'1',
          D(0)=>ADD,
          D(1)=>NEG,
          D(2)=>MOVI,
          D(3)=>JZR);

Select_A<=ROM_Instruction(9 downto 7);
Select_B<=ROM_Instruction(6 downto 4);
Enable_Reg<=ROM_Instruction(9 downto 7);
AddSub <=NEG ;
Jump_Flag<=JZR AND (NOT (Check_Jump(0) OR Check_Jump(1) OR Check_Jump(2) OR Check_Jump(3))) ;
Jump_Address <=ROM_Instruction(2 downto 0);
LoadSelect <= MOVI;
ImValue<=ROM_Instruction(3 downto 0);

end Behavioral;