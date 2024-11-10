LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab5 IS
	PORT (
		data_in, clk, reset : IN STD_LOGIC;
		student_id : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		current_state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END lab5;

ARCHITECTURE fsm OF lab5 IS
	TYPE state_type IS (s0, s1, s2, s3, s4, s5, s6, s7);
	SIGNAL yfsm : state_type;

BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF reset = '1' THEN
			yfsm <= s0;
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE yfsm IS
				WHEN s0 =>
					IF data_in = '1' THEN
						yfsm <= s5;
					ELSE
						yfsm <= s0;
					END IF;
				WHEN s1 =>
					IF data_in = '1' THEN
						yfsm <= s7;
					ELSE
						yfsm <= s1;
					END IF;
				WHEN s2 =>
					IF data_in = '1' THEN
						yfsm <= s3;
					ELSE
						yfsm <= s2;
					END IF;
				WHEN s3 =>
					IF data_in = '1' THEN
						yfsm <= s6;
					ELSE
						yfsm <= s3;
					END IF;
				WHEN s4 =>
					IF data_in = '1' THEN
						yfsm <= s1;
					ELSE
						yfsm <= s4;
					END IF;
				WHEN s5 =>
					IF data_in = '1' THEN
						yfsm <= s4;
					ELSE
						yfsm <= s5;
					END IF;
				WHEN s6 =>
					IF data_in = '1' THEN
						yfsm <= s0;
					ELSE
						yfsm <= s6;
					END IF;
				WHEN s7 =>
					IF data_in = '1' THEN
						yfsm <= s2;
					ELSE
						yfsm <= s7;
					END IF;
			END CASE;
		END IF;
	END PROCESS;
	
	PROCESS (yfsm)
	BEGIN
		CASE yfsm IS
			WHEN s0 => current_state <= "000";
				student_id <= "0000"; -- d2
			WHEN s1 => current_state <= "001";
				student_id <= "0001"; -- d3
			WHEN s2 => current_state <= "010";
				student_id <= "0010"; -- d4
			WHEN s3 => current_state <= "011";
				student_id <= "0010"; -- d5
			WHEN s4 => current_state <= "100";
				student_id <= "0110"; -- d6
			WHEN s5 => current_state <= "101";
				student_id <= "0000"; -- d7
			WHEN s6 => current_state <= "110";
				student_id <= "0000"; -- d8
			WHEN s7 => current_state <= "111";
				student_id <= "0101"; -- d9
		END CASE; -- d1 d2 d3 d4 d5 d6 d7 d8 d9
	END PROCESS; -- 5  0  1  2  2  6  0  0  5
END fsm;