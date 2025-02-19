--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:04:56 02/17/2025
-- Design Name:   
-- Module Name:   /home/student/Videos/13000123101/ASSIGNMENT 3/Four_Bit_Subtractor/FBS_test.vhd
-- Project Name:  Four_Bit_Subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FBS_rtl
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
 
ENTITY FBS_test IS
END FBS_test;
 
ARCHITECTURE behavior OF FBS_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FBS_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         DIFFERENCE : OUT  std_logic_vector(3 downto 0);
         BORROW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal DIFFERENCE : std_logic_vector(3 downto 0);
   signal BORROW : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FBS_rtl PORT MAP (
          A => A,
          B => B,
          C => C,
          DIFFERENCE => DIFFERENCE,
          BORROW => BORROW
        );


   -- Stimulus process
   stim_proc: process
   begin		
		A <= "1111";
		B <= "0001";
		C <='0';
		wait for 1 ps;
   end process;

END;
