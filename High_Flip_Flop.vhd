----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 02:13:57 PM
-- Design Name: 
-- Module Name: flipflop - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity High_Flip_Flop is
 port(

      clock  : in std_logic;        
      reset  : in std_logic;        
      input : in std_logic;
      output : out std_logic        

  );
end High_Flip_Flop;

architecture Behavioral of High_Flip_Flop is

begin

process (clock)
begin
   if clock'event and clock='1' then
      if reset='1' then
         output <= '0';
      else
         output <= input;
      end if;
   end if;
end process;


end Behavioral;
