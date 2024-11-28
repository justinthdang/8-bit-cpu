LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg3 IS
	PORT (
		bcd : IN STD_LOGIC;
		led : OUT STD_LOGIC_VECTOR(1 TO 7)
	);
END sseg3;

ARCHITECTURE behaviour OF sseg3 IS
	BEGIN
	PROCESS (bcd)
	BEGIN
		CASE bcd IS --             abcdefg
			WHEN '1' => led <= NOT("0111011"); -- y
			WHEN '0' => led <= NOT("0010101"); -- n
			WHEN OTHERS => led <= NOT("0000000");
		END CASE;
	END PROCESS;
END behaviour;