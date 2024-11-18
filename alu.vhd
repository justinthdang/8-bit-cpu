LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY alu IS
	PORT (
		clk, res : IN STD_LOGIC;
		reg1, reg2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		opcode : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END alu;

ARCHITECTURE behaviour OF alu IS
BEGIN
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
               result <= reg1 NAND reg2;
				WHEN "00010000" =>
               result <= reg1 NOR reg2;
				WHEN "00100000" =>
               result <= reg1 AND reg2;
				WHEN "01000000" =>
               result <= reg1 XOR reg2;
				WHEN "10000000" =>
               result <= reg1 OR reg2;
				WHEN OTHERS =>
               result <= "XXXXXXXX";
			END CASE;
		END IF;
	END PROCESS;
END behaviour;