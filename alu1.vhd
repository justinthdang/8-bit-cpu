LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY alu1 IS
	PORT (
		clk, res : IN STD_LOGIC;
		a, b, opcode : IN UNSIGNED(7 DOWNTO 0);
		r1, r2 : OUT UNSIGNED(3 DOWNTO 0);
		sign1, sign2 : OUT STD_LOGIC
	);
END alu1;

ARCHITECTURE behaviour OF alu1 IS
	SIGNAL reg1, reg2, result : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');

BEGIN
	reg1 <= a;
	reg2 <= b;
	PROCESS (clk, res)
	BEGIN
		IF res = '1' THEN
			result <= "00000000";
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE opcode IS
				WHEN "00000001" =>
					result <= reg1 + reg2;
				WHEN "00000010" =>
					result <= reg1 - reg2;
				WHEN "00000100" =>
               result <= NOT(reg1);
				WHEN "00001000" =>
               result <= NOT(reg1 AND reg2);
				WHEN "00010000" =>
               result <= NOT(reg1 OR reg2);
				WHEN "00100000" =>
               result <= reg1 AND reg2;
				WHEN "01000000" =>
               result <= reg1 XOR reg2;
				WHEN "10000000" =>
               result <= reg1 OR reg2;
				WHEN OTHERS =>
					result <= (OTHERS => '0');
			END CASE;
         r1 <= result(7 DOWNTO 4); -- first four bits
         r2 <= result(3 DOWNTO 0); -- last four bits
         sign1 <= result(7);
         sign2 <= result(3);
		END IF;
	END PROCESS;
END behaviour;