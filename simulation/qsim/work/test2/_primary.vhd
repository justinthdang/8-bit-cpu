library verilog;
use verilog.vl_types.all;
entity test2 is
    port(
        s2              : out    vl_logic;
        clock           : in     vl_logic;
        reset_alu       : in     vl_logic;
        reset_a         : in     vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        reset_b         : in     vl_logic;
        b               : in     vl_logic_vector(7 downto 0);
        enable          : in     vl_logic;
        data_in         : in     vl_logic;
        reset_fsm       : in     vl_logic;
        s1              : out    vl_logic;
        id              : out    vl_logic_vector(3 downto 0);
        r1              : out    vl_logic_vector(3 downto 0);
        r2              : out    vl_logic_vector(3 downto 0)
    );
end test2;
