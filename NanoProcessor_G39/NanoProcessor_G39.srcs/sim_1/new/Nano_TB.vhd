library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Nano_TB is
--  Port ( );
end Nano_TB;

architecture Behavioral of Nano_TB is
component Nano_Processor
 Port ( Res : in STD_LOGIC;
        Clk_in : in std_logic;
        OvrFlw : out STD_LOGIC;
        Zero : out STD_LOGIC;
        RLED : out STD_LOGIC_VECTOR (3 downto 0);
        sev_out : out STD_LOGIC_VECTOR (6 downto 0));
end component;
signal Res,OvrFlw,Zero:std_logic;
signal RLED:STD_LOGIC_VECTOR (3 downto 0);
signal sev_out:STD_LOGIC_VECTOR (6 downto 0);
signal Clk_in:std_logic:='0';
begin
UUT: Nano_Processor
    port map(
        Res=>Res,
        Clk_in=>Clk_in,
        Ovrflw=>Ovrflw,
        Zero=>Zero,
        RLED=>RLED,
        sev_out=>sev_out
       );
process
    begin
    wait for 5ns;
    Clk_in<=not(Clk_in);
end process;
process
    begin
    Res<='1';
    wait for 100ns;
    Res<='0';
    wait;
    
end process;
end Behavioral;
