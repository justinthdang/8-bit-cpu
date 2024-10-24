library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab1 is
	port (
		x1, x2, x3 : in std_logic;
		f : out std_logic
	);
end lab1;

architecture behaviour of lab1 is
begin
	f <= (x1 and x2) or (not(x2) and x3);
end behaviour;