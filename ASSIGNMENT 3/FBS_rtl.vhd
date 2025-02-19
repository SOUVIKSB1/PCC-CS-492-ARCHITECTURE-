----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:36 02/17/2025 
-- Design Name: 
-- Module Name:    FBS_rtl - Behavioral 
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

entity FBS_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           DIFFERENCE : out  STD_LOGIC_VECTOR (3 downto 0);
           BORROW : out  STD_LOGIC);
end FBS_rtl;

architecture Behavioral of FBS_rtl is

component FS_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           difference : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;

signal c0,c1,c2: STD_LOGIC;

begin

sub1 : FS_rtl port map(
	a => A(0),
	b => B(0),
	c => C,
	difference => DIFFERENCE(0),
	borrow => c0);
	
sub2 : FS_rtl port map(
	a => A(1),
	b => B(1),
	c => c0,
	difference => DIFFERENCE(1),
	borrow => c1);

sub3 : FS_rtl port map(
	a => A(2),
	b => B(2),
	c => c1,
	difference => DIFFERENCE(2),
	borrow => c2);

sub4 : FS_rtl port map(
	a => A(3),
	b => B(3),
	c => c2,
	difference => DIFFERENCE(3),
	borrow=> BORROW);

end Behavioral;

