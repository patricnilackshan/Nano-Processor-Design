library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC_TB is
--  Port ( );
end PC_TB;

architecture Behavioral of PC_TB is
Component PC
    Port ( Mux_out : in STD_LOGIC_VECTOR (2 downto 0):="000";--D
            Clk : in STD_LOGIC;
            Res : in STD_LOGIC;
            Mem_s : out STD_LOGIC_VECTOR (2 downto 0));--Q   
end component; 
signal Mux_out,Mem_s:std_logic_vector(2 downto 0);
signal Clk:std_logic:='0';
signal Res:std_logic;
begin
UUT: PC
    port map(
        Mux_out=>Mux_out,
        Clk=>Clk,
        Res=>Res,
        Mem_s=>Mem_s
    );
process begin
    wait for 20ns;
    Clk<=not(Clk);
end process;
process begin
    --wait for 20ns;
    Res<='1';
    wait for 40ns;
    Res<='0';
    Mux_out<="001";
    wait for 40ns;
    Mux_out<="010";
    wait for 40ns;
    mux_out<="011";
    wait for 40ns;
    Mux_out<="100";
    wait for 40ns;
    Mux_out<="101";
    wait for 40ns;
    Mux_out<="110";
    wait for 40ns;
    Mux_out<="111";
    wait for 40ns;
    Mux_out<="000";
    wait for 40ns;
    Mux_out<="001";
    wait for 40ns;
    Mux_out<="010";
    wait for 40ns;
    mux_out<="011";
    wait for 40ns;
    Res<='1';
    wait for 40ns;
    Res<='0';
    Mux_out<="001";
    wait for 40ns;
    Mux_out<="010";
    wait for 40ns;
    mux_out<="011";
    wait;
    
end process;
end Behavioral;
