library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reg_bank_TB is
--  Port ( );
end Reg_bank_TB;

architecture Behavioral of Reg_bank_TB is
component Reg_bank
 Port ( clk: in STD_LOGIC;
       sel : in STD_LOGIC_VECTOR (2 downto 0);
       data : in STD_LOGIC_VECTOR (3 downto 0);
       res : in STD_LOGIC;
       out0 : out STD_LOGIC_VECTOR (3 downto 0);
       out1 : out STD_LOGIC_VECTOR (3 downto 0);
       out2 : out STD_LOGIC_VECTOR (3 downto 0);
       out3 : out STD_LOGIC_VECTOR (3 downto 0);
       out4 : out STD_LOGIC_VECTOR (3 downto 0);
       out5 : out STD_LOGIC_VECTOR (3 downto 0);
       out6 : out STD_LOGIC_VECTOR (3 downto 0);
       out7 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal res: std_logic;
signal clk:std_logic:='0';
signal sel:std_logic_vector(2 downto 0);
signal data:std_logic_vector(3 downto 0);
signal out0,out1,out2,out3,out4,out5,out6,out7:std_logic_vector(3 downto 0);

begin
UUT: Reg_bank
    port map(
        clk=>clk,
        res=>res,
        data=>data,
        sel=>sel,
        out0=>out0,
        out1=>out1,
        out2=>out2,
        out3=>out3,
        out4=>out4,
        out5=>out5,
        out6=>out6,
        out7=>out7    
    );
process begin
        wait for 20ns;
        Clk<=not(Clk);
end process;
process begin
    res<='1';
    wait for 40ns;
    res<='0';
    data<="0101";
    sel<="000";
    wait for 40ns;
    sel<="001";
    wait for 40ns;
    sel<="010";
    wait for 40ns;
    sel<="011";
    wait for 40ns;
    sel<="100";
    wait for 40ns;
    sel<="101";
    wait for 40ns;
    sel<="111";
    wait;
end process;
end Behavioral;
