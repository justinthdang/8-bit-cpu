library verilog;
use verilog.vl_types.all;
entity test1_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        data_in         : in     vl_logic;
        enable          : in     vl_logic;
        reset_a         : in     vl_logic;
        reset_alu       : in     vl_logic;
        reset_b         : in     vl_logic;
        reset_fsm       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end test1_vlg_sample_tst;
