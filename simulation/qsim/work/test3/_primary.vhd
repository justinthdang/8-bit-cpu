library verilog;
use verilog.vl_types.all;
entity test3 is
    port(
        answer          : out    vl_logic;
        clock           : in     vl_logic;
        reset_alu       : in     vl_logic;
        enable          : in     vl_logic;
        data_in         : in     vl_logic;
        reset_fsm       : in     vl_logic;
        id              : out    vl_logic_vector(3 downto 0)
    );
end test3;
