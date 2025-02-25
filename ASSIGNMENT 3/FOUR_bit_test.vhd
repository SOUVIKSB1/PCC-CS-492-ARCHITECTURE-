--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:16:00 02/17/2025
-- Design Name:   
-- Module Name:   /home/student/Videos/13000123101/ASSIGNMENT 3/FOUR_BIT_ADDER/FOUR_bit_test.vhd
-- Project Name:  FOUR_BIT_ADDER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FOUR_BIT_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FOUR_bit_test IS
END FOUR_bit_test;
 
ARCHITECTURE behavior OF FOUR_bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FOUR_BIT_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         SUM : OUT  std_logic_vector(3 downto 0);
         CARRY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal SUM : std_logic_vector(3 downto 0);
   signal CARRY : std_logic; 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FOUR_BIT_rtl PORT MAP (
          A => A,
          B => B,
          C => C,
          SUM => SUM,
          CARRY => CARRY
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		
		A<= "0101";
		B<= "0011";
		C<= '0';
		
		wait for 1 ps;
	
   end process;

END;
