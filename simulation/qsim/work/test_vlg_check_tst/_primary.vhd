library verilog;
use verilog.vl_types.all;
entity test_vlg_check_tst is
    port(
        id              : in     vl_logic_vector(3 downto 0);
        r1              : in     vl_logic_vector(3 downto 0);
        r2              : in     vl_logic_vector(3 downto 0);
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end test_vlg_check_tst;
