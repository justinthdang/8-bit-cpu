library verilog;
use verilog.vl_types.all;
entity dec3to8report_vlg_sample_tst is
    port(
        enable          : in     vl_logic;
        w               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end dec3to8report_vlg_sample_tst;
