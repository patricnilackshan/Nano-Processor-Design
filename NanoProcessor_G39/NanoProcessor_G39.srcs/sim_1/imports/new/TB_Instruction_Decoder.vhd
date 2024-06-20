library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_Instruction_Decoder is
--  Port ( );
end TB_Instruction_Decoder;

architecture Behavioral of TB_Instruction_Decoder is
component Instruction_Decoder
    Port ( ROM_Instruction : in STD_LOGIC_VECTOR (11 downto 0);
           Check_Jump : in STD_LOGIC_VECTOR (3 downto 0);
           Select_A : out STD_LOGIC_VECTOR (2 downto 0);
           Select_B : out STD_LOGIC_VECTOR (2 downto 0);
           Enable_Reg : out STD_LOGIC_VECTOR (2 downto 0);
           AddSub : out STD_LOGIC;
           Jump_Flag : out STD_LOGIC;
           Jump_Address : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : out STD_LOGIC;
           ImValue : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal ROM_Instruction : STD_LOGIC_VECTOR (11 downto 0);
signal Check_Jump, ImValue : STD_LOGIC_VECTOR (3 downto 0);
signal Select_A, Select_B, Enable_Reg, Jump_Address : STD_LOGIC_VECTOR (2 downto 0);
signal AddSub, Jump_Flag,LoadSelect : STD_LOGIC;

begin
UUT: Instruction_Decoder 
    PORT MAP(  ROM_Instruction=>ROM_Instruction,
               Check_Jump=>Check_Jump,
               Select_A=>Select_A,
               Select_B =>Select_B,
               Enable_Reg=>Enable_Reg,
               AddSub=>AddSub,
               Jump_Flag=>Jump_Flag,
               Jump_Address=>Jump_Address,
               LoadSelect=>LoadSelect,
               ImValue=>ImValue
    );

process
begin
--"10 111 000 0000",
--"10 110 000 0011",
--"10 101 000 1111",
--"00 111 110 0000",
--"00 110 101 0000",
--"11 110 000 0111",
--"11 000 000 0011",
--"11 000 000 0111"   
    Check_Jump<="1110";
    ROM_Instruction<="101110000000"; 
    wait for 100ns; 
    
    Check_Jump<="1010";
    ROM_Instruction<="101100000011"; 
    wait for 100ns; 

    Check_Jump<="1011";
    ROM_Instruction<="101010001111"; 
    wait for 100ns;
    
    Check_Jump<="0000";
    ROM_Instruction<="001111100000"; 
    wait for 100ns; 
    
    Check_Jump<="1010";
    ROM_Instruction<="001101010000";
    wait for 100ns; 
    
    Check_Jump<="1011";
    ROM_Instruction<="111100000111"; 
    wait for 100ns;
    
    Check_Jump<="0000";
    ROM_Instruction<="110000000011"; 
    wait for 100ns; 
    
    Check_Jump<="1010";
    ROM_Instruction<="110000000111";     
    wait for 100ns;
    
    Check_Jump<="1010";
    ROM_Instruction<="010100000000";     
    wait for 100ns;    
wait;
end process;
end Behavioral;
