--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:19:45 02/17/2025
-- Design Name:   
-- Module Name:   /home/student/Videos/13000123101/ASSIGNMENT 2/Full_Adder/FA_test.vhd
-- Project Name:  Full_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FA_rtl
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
 
ENTITY FA_test IS
END FA_test;
 
ARCHITECTURE behavior OF FA_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FA_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FA_rtl PORT MAP (
          a => a,
          b => b,
          c => c,
          sum => sum,
          carry => carry
        );


   -- Stimulus process
   stim_proc: process
   begin		
		a<= '0';
		b<= '0';
		c<= '0';
		wait for 1 ps;
		a<= '0';
		b<= '0';
		c<= '1';
		wait for 1 ps;
		a<= '0';
		b<= '1';
		c<= '0';
		wait for 1 ps;
		a<= '0';
		b<= '1';
		c<= '1';
		wait for 1 ps;
		a<= '1';
		b<= '0';
		c<= '0';
		wait for 1 ps;
		a<= '1';
		b<= '0';
		c<= '1';
		wait for 1 ps;
		a<= '1';
		b<= '1';
		c<= '0';
		wait for 1 ps;
		a<= '1';
		b<= '1';
		c<= '1';
		wait for 1 ps;
   end process;

END;
