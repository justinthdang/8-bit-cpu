LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY alu2 IS
	PORT (
		clk, res : IN STD_LOGIC;
		a, b, opcode : IN UNSIGNED(7 DOWNTO 0);
		r1, r2 : OUT UNSIGNED(3 DOWNTO 0);
		sign1, sign2 : OUT STD_LOGIC
	);
END alu2;

ARCHITECTURE behaviour OF alu2 IS
	SIGNAL reg1, reg2, result : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');

BEGIN
	reg1 <= a;
	reg2 <= b;
	PROCESS (clk, res)
	BEGIN
		IF res = '1' THEN
			result <= "00000000";
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE opcode IS -- table a
				WHEN "00000001" => -- decrement b by 9
					result <= reg1 + "00000010";
				WHEN "00000010" => -- shift b right by two bits, input bit = 0
					result(7) <= '0';
					result(6) <= '0';
					result(5) <= reg2(7);
					result(4) <= reg2(6);
					result(3) <= reg2(5);
					result(2) <= reg2(4);
					result(1) <= reg2(3);
					result(0) <= reg2(2);
				WHEN "00000100" => -- shift a right by 4 bits, input bit = 1
               result(7) <= '1';
					result(6) <= '1';
					result(5) <= '1';
					result(4) <= '1';
					result(3) <= reg1(7);
					result(2) <= reg1(6);
					result(1) <= reg1(5);
					result(0) <= reg1(4);
				WHEN "00001000" => -- find smaller value of a and b and produce results
					IF reg1 < reg2 THEN
						result <= reg1;
					ELSE
						result <= reg2;
					END IF;
				WHEN "00010000" => -- rotate a right by two bits
               result(7) <= reg1(1);
					result(6) <= reg1(0);
					result(5) <= reg1(7);
					result(4) <= reg1(6);
					result(3) <= reg1(5);
					result(2) <= reg1(4);
					result(1) <= reg1(3);
					result(0) <= reg1(2);
				WHEN "00100000" => -- invert bit significance order of b
					result(7) <= reg2(0);
					result(6) <= reg2(1);
					result(5) <= reg2(2);
					result(4) <= reg2(3);
					result(3) <= reg2(4);
					result(2) <= reg2(5);
					result(1) <= reg2(6);
					result(0) <= reg2(7);
				WHEN "01000000" => -- a XOR b
               result <= reg1 XOR reg2;
				WHEN "10000000" => -- a + b - 4
               result <= reg1 + reg2 - "00000100";
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