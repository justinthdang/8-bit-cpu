library verilog;
use verilog.vl_types.all;
entity test3_vlg_check_tst is
    port(
        answer          : in     vl_logic;
        id              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end test3_vlg_check_tst;
