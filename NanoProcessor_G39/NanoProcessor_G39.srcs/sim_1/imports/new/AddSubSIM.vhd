library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AddSubSIM is
--  Port ( );
end AddSubSIM;

architecture Behavioral of AddSubSIM is
component AdderSubtractor
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C_IN : in STD_LOGIC;
           S : inout STD_LOGIC_VECTOR (3 downto 0);
           Zero: out STD_LOGIC;
           C_OUT : out STD_LOGIC);
end component;

signal A,B,S : STD_LOGIC_VECTOR (3 downto 0);
signal SET, OVERFLOW, ZERO : STD_LOGIC;

begin
UUT: AdderSubtractor
    PORT MAP(
    A=>A,
    B=>B,
    C_IN=>SET,
    S=>S,
    Zero=>ZERO,
    C_OUT=>OVERFLOW);
    
    PROCESS
    BEGIN
    
--  Index Number= 210425
--  Binary form = 0011 0011 0101 1111 1001
    
    SET<='0';
    A<="0011";
    B<="0011";
    WAIT FOR 100NS;
       
    SET<='0';
    A<="0011";
    B<="0101";
    WAIT FOR 100NS;
       
    SET<='0';
    A<="0101";
    B<="1111";
    WAIT FOR 100NS;
      
    SET<='0';
    A<="1111";
    B<="1001";
    WAIT FOR 100NS;
    
    SET<='1';
    A<="0011";
    B<="0011";
    WAIT FOR 100NS;
    
    SET<='1';
    A<="0011";
    B<="0101";
    WAIT FOR 100NS;

    SET<='1';
    A<="0101";
    B<="1111";
    WAIT FOR 100NS;
    
    SET<='1';
    A<="1111";
    B<="1001";
    WAIT FOR 100NS;
    
    SET<='0';
    A<="1001";
    B<="0011";
    WAIT FOR 100NS;
    
    SET<='1';
    A<="1001";
    B<="0011";
    WAIT FOR 100NS;
    WAIT;
    END PROCESS;
end Behavioral;
