--Mux_8way_4bit
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_8way_4bit is
port ( IN0 : in STD_LOGIC_VECTOR (3 downto 0); 
       IN1 : in STD_LOGIC_VECTOR (3 downto 0);
       IN2 : in STD_LOGIC_VECTOR (3 downto 0);
       IN3 : in STD_LOGIC_VECTOR (3 downto 0);
       IN4 : in STD_LOGIC_VECTOR (3 downto 0);
       IN5 : in STD_LOGIC_VECTOR (3 downto 0);
       IN6 : in STD_LOGIC_VECTOR (3 downto 0);
       IN7 : in STD_LOGIC_VECTOR (3 downto 0);
       S : in STD_LOGIC_VECTOR (2 DOWNTO 0); 
       OP : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_8way_4bit;

architecture Behavioral of Mux_8way_4bit is

component Mux_8_to_1
-- Port ( D0 : in STD_LOGIC;
--        D1 : in STD_LOGIC;
--        S : in STD_LOGIC;
--        Y : out STD_LOGIC);
   Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
          D : in STD_LOGIC_VECTOR (7 downto 0);
          Y : out STD_LOGIC);
end component;

begin
Mux_8_to_1_0 :Mux_8_to_1
port map( D(0) => IN0(0),
          D(1) => IN1(0),
          D(2) => IN2(0),
          D(3) => IN3(0),
          D(4) => IN4(0),
          D(5) => IN5(0),
          D(6) => IN6(0),
          D(7) => IN7(0),
          S => S,
          Y => OP(0));   
          
Mux_8_to_1_1 :Mux_8_to_1
port map( D(0) => IN0(1),
          D(1) => IN1(1),
          D(2) => IN2(1),
          D(3) => IN3(1),
          D(4) => IN4(1),
          D(5) => IN5(1),
          D(6) => IN6(1),
          D(7) => IN7(1),
          S => S,
          Y => OP(1));

Mux_8_to_1_2 :Mux_8_to_1
port map( D(0) => IN0(2),
          D(1) => IN1(2),
          D(2) => IN2(2),
          D(3) => IN3(2),
          D(4) => IN4(2),
          D(5) => IN5(2),
          D(6) => IN6(2),
          D(7) => IN7(2),
          S => S,
          Y => OP(2));

Mux_8_to_1_3 :Mux_8_to_1
port map( D(0) => IN0(3),
          D(1) => IN1(3),
          D(2) => IN2(3),
          D(3) => IN3(3),
          D(4) => IN4(3),
          D(5) => IN5(3),
          D(6) => IN6(3),
          D(7) => IN7(3),
          S => S,
          Y => OP(3));

end Behavioral;