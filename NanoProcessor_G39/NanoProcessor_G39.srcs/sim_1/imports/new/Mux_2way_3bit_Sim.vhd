library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_2way_3bit_Sim is
--  Port ( );
end Mux_2way_3bit_Sim;

architecture Behavioral of Mux_2way_3bit_Sim is
COMPONENT Mux_2way_3bit
    Port ( IN0 : in STD_LOGIC_VECTOR (2 downto 0); 
           IN1 : in STD_LOGIC_VECTOR (2 downto 0);
           S : in STD_LOGIC; 
           OP : out STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;
SIGNAL IN0,IN1,OP :STD_LOGIC_VECTOR (2 downto 0);
SIGNAL S : STD_LOGIC; 
begin
UUT : Mux_2way_3bit
    PORT MAP(
            IN0 => IN0,
            IN1 => IN1,
            S => S,
            OP => OP       
            );
PROCESS BEGIN
    IN0 <= "000";
    IN1 <= "001";
    S <= '0';
    WAIT FOR 100NS;
    
    IN0 <= "100";
    IN1 <= "101";
    S <= '1';
    WAIT FOR 100NS;
    
    S <= '0';
    WAIT FOR 100NS;
    
    IN0 <= "110";
    IN1 <= "010";
    S <= '0';
    WAIT FOR 100NS;

END PROCESS;
end Behavioral;
