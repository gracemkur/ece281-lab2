----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2025 09:20:41 AM
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
--    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
--           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    component sevenseg_decoder is
        port( 
        i_Hex : in std_logic_vector (3 downto 0);
        o_seg_n : out std_logic_vector (6 downto 0)
        );
    end component;
           
    signal wi_Hex   : std_logic_vector(3 downto  0);
    signal wo_seg_n : std_logic_vector(6 downto  0);


begin
    sevenseg_decoder_inst : sevenseg_decoder port map (
    i_Hex => wi_Hex,
    o_seg_n => wo_seg_n
    
    );

    test_process : process
    begin
    
        wi_Hex  <= x"0"; wait for 10 ns;
            assert wo_seg_n = "1000000" report "error on x0" severity failure;
        
        wi_Hex  <= x"1"; wait for 10 ns;
            assert wo_seg_n = "1111001" report "error on x1" severity failure;
        
        wi_Hex  <= x"2"; wait for 10 ns;
            assert wo_seg_n = "0100100" report "error on x2" severity failure;
        
        wi_Hex  <= x"3"; wait for 10 ns;
            assert wo_seg_n = "0110000" report "error on x3" severity failure;
        
        wi_Hex  <= x"4"; wait for 10 ns;
            assert wo_seg_n = "0011001" report "error on x4" severity failure;
        
        wi_Hex  <= x"5"; wait for 10 ns;
            assert wo_seg_n = "0010010" report "error on x5" severity failure;
        
        wi_Hex  <= x"6"; wait for 10 ns;
            assert wo_seg_n = "0000010" report "error on x6" severity failure;
        
        wi_Hex  <= x"7"; wait for 10 ns;
            assert wo_seg_n = "1111000" report "error on x7" severity failure;
        
        wi_Hex  <= x"8"; wait for 10 ns;
            assert wo_seg_n = "0000000" report "error on x8" severity failure;
        
        wi_Hex  <= x"9"; wait for 10 ns;
            assert wo_seg_n = "0011000" report "error on x9" severity failure;
        
        wi_Hex  <= x"A"; wait for 10 ns;
            assert wo_seg_n = "0001000" report "error on xA" severity failure;
        
        wi_Hex  <= x"B"; wait for 10 ns;
            assert wo_seg_n = "0000011" report "error on xB" severity failure;
        
        wi_Hex  <= x"C"; wait for 10 ns;
            assert wo_seg_n = "0100111" report "error on xC" severity failure;
        
        wi_Hex  <= x"D"; wait for 10 ns;
            assert wo_seg_n = "0100001" report "error on xD" severity failure;
        
        wi_Hex  <= x"E"; wait for 10 ns;
            assert wo_seg_n = "0000110" report "error on xE" severity failure;
        
        wi_Hex  <= x"F"; wait for 10 ns;
            assert wo_seg_n = "0001110" report "error on xF" severity failure;
        
        wait;
    end process;

end Behavioral;
