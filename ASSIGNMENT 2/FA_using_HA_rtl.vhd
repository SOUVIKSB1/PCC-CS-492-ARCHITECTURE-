----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:37 02/17/2025 
-- Design Name: 
-- Module Name:    FA_using_HA_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_using_HA_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end FA_using_HA_rtl;

architecture Behavioral of FA_using_HA_rtl is

component HA_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

signal temp,c1,c2 : STD_LOGIC := '0';

begin

HA0: HA_rtl port map(a=>a,b=>b,sum=>temp,carry=>c1);
HA1: HA_rtl port map(a=>temp,b=>c,sum=>sum,carry=>c2);
carry <= (c1 or c2);

end Behavioral;

