LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- johnson counter
ENTITY johns IS
	PORT (
		Clrn, Clk : IN STD_LOGIC;
		W : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		Q : OUT STD_LOGIC_VECTOR(0 TO 2)
	);
END johns;
	
ARCHITECTURE Behavior OF johns IS
	signal Qreg : STD_LOGIC_VECTOR(0 TO 2);
BEGIN
	PROCESS (Clrn, Clk)
	BEGIN
		IF Clrn = '0' THEN
			Qreg <= "000";
		ELSIF (Clk'EVENT AND Clk = '1') THEN
			Qreg(0) <= NOT Qreg(2);
			Qreg(1) <= Qreg(0);
			Qreg(2) <= Qreg(1);
		END IF;
		CASE Qreg IS
			WHEN "000" => W <= "0010"; -- d4
			WHEN "100" => W <= "0010"; -- d5
			WHEN "110" => W <= "0110"; -- d6
			WHEN "111" => W <= "0000"; -- d7
			WHEN "011" => W <= "0000"; -- d8
			WHEN "001" => W <= "0101"; -- d9
			WHEN OTHERS => W <= "----";
		END CASE;
	END PROCESS;  -- student ID
	Q <= Qreg;    -- d1 d2 d3 d4 d5 d6 d7 d8 d9
	END Behavior; -- 5  0  1  2  2  6  0  0  5