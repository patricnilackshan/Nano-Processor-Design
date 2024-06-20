library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProgamRom_Sim is
--  Port ( );
end ProgamRom_Sim;

architecture Behavioral of ProgamRom_Sim is
component ProgramRom 
     Port ( MemoryAddress : in STD_LOGIC_VECTOR (2 downto 0);
          Instruction : out STD_LOGIC_VECTOR (11 downto 0));
end component;
signal M :STD_LOGIC_VECTOR (2 downto 0);
signal I :STD_LOGIC_VECTOR (11 downto 0);
begin
UUT : ProgramRom
    port map(
        MemoryAddress => M,
        Instruction => I
    );
    process
    begin
    M <= "000";
    wait for 100ns;
    M <= "001";
    wait for 100ns;
    M <= "010";
    wait for 100ns;
    M <= "011";
    wait for 100ns;
    M <= "100";
    wait for 100ns;
    M <= "101";
    wait for 100ns;
    M <= "110";
    wait for 100ns;
    M <= "111";
    wait;
    end process;

end Behavioral;
