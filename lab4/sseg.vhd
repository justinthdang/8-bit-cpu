LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
	PORT (
		bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		led1 : OUT STD_LOGIC_VECTOR(1 TO 7)
	);
END sseg;

ARCHITECTURE Behavior OF sseg IS
	BEGIN
	PROCESS (bcd)
	BEGIN
		CASE bcd IS --                  abcdefg
			WHEN "0000" => led1 <= NOT ("1111110"); -- 0
			WHEN "0001" => led1 <= NOT ("0110000"); -- 1
			WHEN "0010" => led1 <= NOT ("1101101"); -- 2
			WHEN "0011" => led1 <= NOT ("1111001"); -- 3
			WHEN "0100" => led1 <= NOT ("0110011"); -- 4
			WHEN "0101" => led1 <= NOT ("1011011"); -- 5
			WHEN "0110" => led1 <= NOT ("1011111"); -- 6
			WHEN "0111" => led1 <= NOT ("1110000"); -- 7
			WHEN "1000" => led1 <= NOT ("1111111"); -- 8
			WHEN "1001" => led1 <= NOT ("1110011"); -- 9
			WHEN "1010" => led1 <= NOT ("1110111") ; -- 10 (A)
			WHEN "1011" => led1 <= NOT ("0011111") ; -- 11 (b)
			WHEN "1100" => led1 <= NOT ("1001110") ; -- 12 (C)
			WHEN "1101" => led1 <= NOT ("0111101") ; -- 13 (d)
			WHEN "1110" => led1 <= NOT ("1001111") ; -- 14 (E)
			WHEN "1111" => led1 <= NOT ("1000111") ; -- 15 (F)
			WHEN OTHERS => led1 <= "-------"; -- Error
		END CASE;
	END PROCESS;
END Behavior;