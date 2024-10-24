library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab2 is
	port(
		x1, x2, x3, x4 : in std_logic;
		f : out std_logic
	);
end lab2;

architecture behaviour of lab2 is
begin
	f <= (not(x1) and not(x2) and not(x4)) or (x1 and x2 and not(x4)) or (not(x1) and x3 and not(x4)) or (not(x1) and x2 and not(x3) and x4) or (x1 and not(x2) and x3 and x4);
end behaviour;