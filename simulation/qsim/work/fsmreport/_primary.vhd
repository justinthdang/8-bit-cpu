library verilog;
use verilog.vl_types.all;
entity fsmreport is
    port(
        current_state   : out    vl_logic_vector(2 downto 0);
        data_in         : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        student_id      : out    vl_logic_vector(3 downto 0)
    );
end fsmreport;
