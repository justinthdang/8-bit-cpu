library verilog;
use verilog.vl_types.all;
entity fsmreport_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(2 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end fsmreport_vlg_check_tst;
