----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 03:53:12 PM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
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

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is
signal w_seg: STD_LOGIC_VECTOR(6 downto 0);

begin
    with i_Hex select
	w_seg <=  "0000001" when x"0",  -- 0
	            "1001111" when x"1",  -- 1
	            "0010010" when x"2",  -- 2
	            "0000110" when x"3",  -- 3
	            "1001100" when x"4",  -- 4
	            "0100100" when x"5",  -- 5
	            "0100000" when x"6",  -- 6
	            "0001111" when x"7",  -- 7
	            "0000000" when x"8",  -- 8
	            "0000100" when x"9",  -- 9
	            "0001000" when x"A",  -- A
	            "1100000" when x"B",  -- B
	            "1110010" when x"C",  -- C
	            "1000010" when x"D",  -- D
	            "0110000" when x"E",  -- E
	            "0111000" when x"F",  -- F
	            "1111111" when others;     
    o_seg_n <= w_seg;	            
end Behavioral;
