LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY alu3 IS
	PORT (
		clk, res : IN STD_LOGIC;
		opcode : IN UNSIGNED(7 DOWNTO 0);
		student_id : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		yes_or_no : OUT STD_LOGIC
	);
END alu3;

ARCHITECTURE behaviour OF alu3 IS
BEGIN
	PROCESS (clk, res)
	BEGIN
		IF res = '1' THEN
			yes_or_no <= '0';
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE opcode IS
				WHEN "00000001" =>
					IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN "00000010" =>
					IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN "00000100" =>
					IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN "00001000" =>
               IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN "00010000" =>
               IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN "00100000" =>
               IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN "01000000" =>
               IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN "10000000" =>
               IF student_id(0) = '1' THEN
						yes_or_no <= '1';
					ELSIF student_id(0) = '0' THEN
						yes_or_no <= '0';
					END IF;
				WHEN OTHERS =>
					yes_or_no <= '0';
			END CASE;
		END IF;
	END PROCESS;
END behaviour;