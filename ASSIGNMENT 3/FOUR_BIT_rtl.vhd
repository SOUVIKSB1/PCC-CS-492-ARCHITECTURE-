----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:49 02/17/2025 
-- Design Name: 
-- Module Name:    FOUR_BIT_rtl - Behavioral 
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

entity FOUR_BIT_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           SUM : out STD_LOGIC_VECTOR (3 downto 0);
           CARRY : out  STD_LOGIC);
end FOUR_BIT_rtl;

architecture Behavioral of FOUR_BIT_rtl is

component FA_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

signal c0,c1,c2,c3: STD_LOGIC;

begin

adder1 : FA_rtl port map(
	a => A(0),
	b => B(0),
	c => C,
	sum => SUM(0),
	carry => c0);
	
adder2 : FA_rtl port map(
	a => A(1),
	b => B(1),
	c => c0,
	sum => SUM(1),
	carry => c1);

adder3 : FA_rtl port map(
	a => A(2),
	b => B(2),
	c => c1,
	sum => SUM(2),
	carry => c2);

adder4 : FA_rtl port map(
	a => A(3),
	b => B(3),
	c => c2,
	sum => SUM(3),
	carry => CARRY);
	

end Behavioral;

