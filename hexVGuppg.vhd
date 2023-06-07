--------------------------------------------------------------------------------
-- hexVGuppg.vhd: 
--
--
-- 
--
--                Hardware implemented for FPGA card Terasic DE10-Lite.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc.all;


entity hexVGuppg is
   port(switch : in std_logic_vector(2 downto 0);
        display: out std_logic_vector(6 downto 0));
end entity;

architecture behaviour of hexVGuppg is
--------------------------------------------------------------------------------
-- Signals for content on each display:
--------------------------------------------------------------------------------
signal digit : std_logic_vector(2 downto 0);
begin

   display <= get_binary_code(digit);
	
	--------------------------------------------------------------------------------
   -- Continuous assignments:
   --------------------------------------------------------------------------------
   digit <= switch(2 downto 0);

end architecture;