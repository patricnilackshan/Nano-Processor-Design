library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_3_Sim is
--  Port ( );
end Adder_3_Sim;

architecture Behavioral of Adder_3_Sim is
component Adder_3
    port(
        A : in STD_LOGIC_VECTOR (2 downto 0);
        B : in STD_LOGIC;
        S : out STD_LOGIC_VECTOR (2 downto 0)
    );
end component;
signal b : STD_LOGIC :='1';
signal a,s :STD_LOGIC_VECTOR (2 downto 0);
begin
UUT : Adder_3
    port map(
        A => a,
        B => b,
        S => s 
    );
    process
    begin
        a <= "000";
        wait for 100ns;
        a <= "001";
        wait for 100ns;
        a <= "010";
        wait for 100ns;
        a <= "011";
        wait for 100ns;
        a <= "100";
        wait for 100ns;
        a <= "101";
        wait for 100ns;
        a <= "110";
        wait for 100ns;
        a <= "111";
        wait ;
    end process;
end Behavioral;
