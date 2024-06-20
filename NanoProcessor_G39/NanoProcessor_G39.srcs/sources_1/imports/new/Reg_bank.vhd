--Reg_bank
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_bank is
port( clk: in STD_LOGIC;
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
end Reg_bank;

architecture Behavioral of Reg_bank is

signal enable : std_logic_vector(7 downto 0);

component Decoder_3_to_8
port( I: in std_logic_vector(2 downto 0);
      D: out std_logic_vector(7 downto 0));
end component;

component Reg
port( D : in STD_LOGIC_VECTOR (3 downto 0);
      En : in STD_LOGIC;
      Q : out STD_LOGIC_VECTOR (3 downto 0);
      Res : in STD_LOGIC;
      Clk : in STD_LOGIC);

end component;

begin
Decoder_3to_8_reg : Decoder_3_to_8
port map( I => sel,
          D=> enable);

Reg_0 : Reg
port map( D => "0000",
          En => '0', --only for read
          Q => out0,
          Res =>res,
          Clk => clk);

Reg_1 : Reg
port map( D => data,
          En => enable(1),
          Q => out1,
          Res =>res,
          Clk => clk);
          
Reg_2 : Reg
port map( D => data,
          En => enable(2),
          Q => out2,
          Res =>res,
          Clk => clk);

Reg_3 : Reg
port map( D => data,
          En => enable(3),
          Q => out3,
          Res =>res,
          Clk => clk);
          
Reg_4 : Reg
port map( D => data,
          En => enable(4),
          Q => out4,
          Res =>res,
          Clk => clk);

Reg_5 : Reg
port map( D => data,
          En => enable(5),
          Q => out5,
          Res =>res,
          Clk => clk);

Reg_6 : REG
port map( D => data,
          En => enable(6),
          Q => out6,
          Res =>res,
          Clk => clk); 

Reg_7 : Reg
port map( D => data,
          En =>enable(7),
          Q => out7,
          Res =>res,
          Clk => clk); 
          
end Behavioral;