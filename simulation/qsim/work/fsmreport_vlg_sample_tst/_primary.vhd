library verilog;
use verilog.vl_types.all;
entity fsmreport_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        data_in         : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fsmreport_vlg_sample_tst;
