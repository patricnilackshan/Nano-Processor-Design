--PC
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
port(Mux_out : in STD_LOGIC_VECTOR (2 downto 0):="000";  --D
     Clk : in STD_LOGIC;
     Res : in STD_LOGIC;
     Mem_s : out STD_LOGIC_VECTOR (2 downto 0));         --Q
end PC;

architecture Behavioral of PC is

component D_FF
port(D : in STD_LOGIC;
     Res : in STD_LOGIC;
     Clk : in STD_LOGIC;
     Q : out STD_LOGIC;
     Qbar : out STD_LOGIC);
end component;

begin

D_FF0: D_FF
port map(D=>Mux_out(0),
         Q=>Mem_s(0),
         Res=>Res,
         Clk=>Clk);

D_FF1: D_FF
port map(D=>Mux_out(1),
         Q=>Mem_s(1),
         Res=>Res,
         Clk=>Clk);
    
D_FF2: D_FF
port map(D=>Mux_out(2),
         Q=>Mem_s(2),
         Res=>Res,
         Clk=>Clk);

end Behavioral;
