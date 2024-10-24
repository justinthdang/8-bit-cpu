library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vhdl1 is
	port (
		x1, x2, x3 : in std_logic;
		f : out std_logic
	);
end vhdl1;

architecture behaviour of vhdl1 is
begin
	f <= (x1 and x2) or (not(x2) and x3);
end behaviour;