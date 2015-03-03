
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ExpansionE is
port(


clk: in std_logic;
input: in std_logic_vector(31 downto 0);
expanded: out std_logic_vector(47 downto 0));


end ExpansionE;

architecture Behavioral of ExpansionE is

begin



  process(clk,input)
  begin
  
--32 1 2  3  4   5
--4  5 6  7  8   9
--8  9 10 11 12  13
--12 13 14 15 16 17
--16 17 18 19 20 21
--20 21 22 23 24 25
--24 25 26 27 28 29
--28 29 30 31 32 1
  
  
         if clk'event and clk='1' then
			--------------------------------------------
			----row  #1 ---------------------------------
			--32 1 2  3  4   5----------------------------

  			    expanded(0)<=input(31);
			    expanded(1) <=input(0);
				 expanded(2) <=input(1);
				 expanded(3) <=input(2);
				 expanded(4) <=input(3);
				 expanded(5) <=input(4);
				 
				 
				 -------------------------------------------
				 -----row #2 -------------------------------
				 ----4  5 6  7  8   9------------------------
				 ----------------------------------------------
				 expanded(6) <= input(3);
				 expanded(7) <= input(4);
				 expanded(8) <= input(5);
				 expanded(9) <= input(6);
				 expanded(10) <= input(7);
				 expanded(11) <= input(8);
				 
				 --------------------------------------------------
				 --------------------------------------------------
				 ----row  #3 --------------------------------------
				 --------------------------------------------------
				 --8  9 10 11 12  13-------------------------------
				 
				 
				 expanded(12) <= input(7);
				 expanded(13) <= input(8);
				 expanded(14) <= input(9);
				 expanded(15) <= input(10);
				 expanded(16) <= input(11);
				 expanded(17) <= input(12);
				 
				 ------------------------------------------------------
				 ------------------------------------------------------
				 -----row #4 ------------------------------------------
				 ------------------------------------------------------
				 -----12 13 14 15 16 17 -------------------------------
				 ------------------------------------------------------
				 
				 
				 expanded(18) <= input(11);
				 expanded(19) <= input(12);
				 expanded(20) <= input(13);
				 expanded(21) <= input(14);
				 expanded(22) <= input(15);
				 expanded(23) <= input(16);
				 
				 --------------------------------------------------------
				 --------------------------------------------------------
				 --------row #5 -----------------------------------------
				 --------------------------------------------------------
				 --16 17 18 19 20 21-------------------------------------
				 --------------------------------------------------------
				 
				 expanded(24) <= input(15);
				 expanded(25) <= input(16);
				 expanded(26) <= input(17);
				 expanded(27) <= input(18);
				 expanded(28) <= input(19);
				 expanded(29) <= input(20);
				 
				 -------------------------------------------------------
				 --------------------------------------------------------
				 --------row #6 -----------------------------------------
				 --------------------------------------------------------
				 --20 21 22 23 24 25--------------------------------------
				 ---------------------------------------------------------
				 
				 expanded(30) <= input(19);
				 expanded(31) <= input(20);
				 expanded(32) <= input(21);
				 expanded(33) <= input(22);
				 expanded(34) <= input(23);
				 expanded(35) <= input(24);
				 
				  -------------------------------------------------------
				 --------------------------------------------------------
				 --------row #7 -----------------------------------------
				 --------------------------------------------------------
				 --24 25 26 27 28 29 -------------------------------------
				 ---------------------------------------------------------
				 
				 expanded(36) <= input(23);
				 expanded(37) <= input(24);
				 expanded(38) <= input(25);
				 expanded(39) <= input(26);
				 expanded(40) <= input(27);
				 expanded(41) <= input(28);
				 
				 --------------------------------------------------------
				 --------------------------------------------------------
				 --------row #8 -----------------------------------------
				 --------------------------------------------------------
				 --28 29 30 31 32 1 -------------------------------------
				 --------------------------------------------------------
				 
				 
				 expanded(42) <= input(27);
				 expanded(43) <= input(28);
				 expanded(44) <= input(29);
				 expanded(45) <= input(30);
				 expanded(46) <= input(31);
				 expanded(47) <= input(0);
				 
				 
				 
				 
				 
				 
				 
				 
				 
			  
			
			
			
			
			
			
			
			end if;
  
  
  end process;















end Behavioral;

