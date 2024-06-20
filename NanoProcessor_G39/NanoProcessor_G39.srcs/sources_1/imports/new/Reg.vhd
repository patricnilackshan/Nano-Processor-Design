--Reg
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg is
port( D : in STD_LOGIC_VECTOR (3 downto 0);
      Res : in STD_LOGIC;
      Clk : in STD_LOGIC;
      Q : out STD_LOGIC_VECTOR (3 downto 0);
      En : in STD_LOGIC);
end Reg;

architecture Behavioral of REG is
component D_FF_EN
port( D : in STD_LOGIC;
      Res : in STD_LOGIC;
      Clk : in STD_LOGIC;
      Q : out STD_LOGIC;
      Qbar : out STD_LOGIC;
      En : in STD_LOGIC);
end component;

begin
D_FF_EN0 : D_FF_EN 
port map( D => D(0),
          En => En,
          Clk => Clk,
          Res => Res,
          Q => Q(0));
          
D_FF_EN1 : D_FF_EN 
port map( D => D(1),
          En => En,
          Clk => Clk,
          Res => Res,
          Q => Q(1)); 

D_FF_EN2 : D_FF_EN 
port map( D => D(2),
          En => En,
          Clk => Clk,
          Res => Res,
          Q => Q(2));
          
D_FF_EN3 : D_FF_EN 
port map( D => D(3),
          En => En,
          Clk => Clk,
          Res => Res,
          Q => Q(3));
          
end Behavioral;