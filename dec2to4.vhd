LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec2to4 IS
	PORT (
		w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		en : IN STD_LOGIC;
		y : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END dec2to4;

ARCHITECTURE behaviour OF dec2to4 IS
	SIGNAL enw : STD_LOGIC_VECTOR(2 DOWNTO 0);
	 
BEGIN
	enw <= en & w;
	WITH enw SELECT
		y <= "1000" WHEN "100",
			  "0100" WHEN "101",
			  "0010" WHEN "110",
			  "0001" WHEN "111",
			  "0000" WHEN OTHERS;
END behaviour;
