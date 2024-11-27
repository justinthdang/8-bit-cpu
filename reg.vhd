LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg IS
    PORT (
        d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        res, clk : IN STD_LOGIC;
        q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END reg;

ARCHITECTURE behaviour OF reg IS
BEGIN
    PROCESS (res, clk)
	 BEGIN
        IF res = '1' THEN
            q <= "00000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            q <= d;
        END IF;
    END PROCESS;
END behaviour;