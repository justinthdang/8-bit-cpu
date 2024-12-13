library verilog;
use verilog.vl_types.all;
entity dec3to8report is
    port(
        y               : out    vl_logic_vector(7 downto 0);
        enable          : in     vl_logic;
        w               : in     vl_logic_vector(2 downto 0)
    );
end dec3to8report;
