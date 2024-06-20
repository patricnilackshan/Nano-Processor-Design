--ProgramROM
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity ProgramROM is
port( MemoryAddress : in STD_LOGIC_VECTOR (2 downto 0);
      Instruction : out STD_LOGIC_VECTOR (11 downto 0));
end ProgramROM;

architecture Behavioral of ProgramROM is
type rom_type is array (0 to 7) of STD_LOGIC_VECTOR( 11 downto 0);
signal instructionROM : rom_type := (

       --Add 1,2,3
       --Comment line 246,247 & UnComment line 243,244 in Nano_Processor.vhd
       "101110000001", -- 0 -- MOVI R7,1
       "101100000010", -- 1 -- MOVI R6,2
       "101010000011", -- 2 -- MOVI R5,3
       "001111100000", -- 3 -- ADD R7,R6
       "001111010000", -- 4 -- ADD R7,R5
       "110000000110", -- 5 -- JZR R0,1
       "110000000101", -- 6 -- JZR R1,3
       "110000000101"  -- 7 -- JZR R5,7
                        
 		--Count 10 to 0    
 		--Comment line 232,233 & UnComment line 246,247 in Nano_Processor.vhd
        --"100010001010", --0  --  MOVI R1,10
        --"100100000001", --1  --  MOVI R2,01
        --"010100000000", --2  --  NEG R2
        --"000010100000", --3  --  ADD R1,R2
        --"110010000111", --4  --  JZR R1,7
        --"110000000011", --5  --  JZR R0,3
        --"110010000111", --6  --  JZR R1,7 
        --"110010000110"  --7  --  JZR R1,6                      
);
 
begin
Instruction <= instructionROM(to_integer(unsigned(MemoryAddress))); 

end Behavioral;
