library verilog;
use verilog.vl_types.all;
entity test3_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        data_in         : in     vl_logic;
        enable          : in     vl_logic;
        reset_alu       : in     vl_logic;
        reset_fsm       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end test3_vlg_sample_tst;
