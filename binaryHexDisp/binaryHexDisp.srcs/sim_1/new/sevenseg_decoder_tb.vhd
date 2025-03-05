----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 03:57:55 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    component sevenseg_decoder
        port (
            i_Hex : in STD_LOGIC_VECTOR(3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;
    
    signal w_i_Hex : STD_LOGIC_VECTOR(3 downto 0);
    signal w_o_seg_n : STD_LOGIC_VECTOR(6 downto 0)
    
begin

    -- Port map the UUT to the signals
    uut: sevenseg_decoder port map (
        i_Hex => w_i_Hex;
        o_seg_n => w_o_seg_n
    );

    -- Test Process
    test_process : process
    begin
        -- Apply test vectors to w_i_Hex
        w_i_Hex <= "0000"; wait for 10 ns;  -- Test 0x0
        -- Check output for each case
        assert (w_o_seg_n = "expected_value") report "Test failed for 0x0" severity failure;
        
        w_i_Hex <= "0001"; wait for 10 ns;  -- Test 0x1
        assert (w_o_seg_n = "expected_value") report "Test failed for 0x1" severity failure;
        
        w_i_Hex <= "0010"; wait for 10 ns;  -- Test 0x2
        assert (w_o_seg_n = "expected_value") report "Test failed for 0x2" severity failure;
        
        -- Add more test cases as needed
        
        wait; -- End simulation
    end process;


end Behavioral;
