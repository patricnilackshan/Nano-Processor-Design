--Slow_Clock
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Slow_Clock is
port(clk_in : in STD_LOGIC;
     clk_out : out STD_LOGIC);
end Slow_Clock;

architecture Behavioral of Slow_Clock is
signal count : integer :=1;
signal clk_status : std_logic := '0';

begin
process (clk_in) begin
     if (rising_edge(clk_in)) then
        count <= count +1;
        --if (count = 3 ) then           -- Increment counter
        if (count = 50000000) then 
            clk_status <= not clk_status;
            clk_out <= clk_status;
            count <= 1;
        end if;
     end if;
 end process;
end Behavioral;
