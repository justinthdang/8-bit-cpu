library verilog;
use verilog.vl_types.all;
entity regreport is
    port(
        q               : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        d               : in     vl_logic_vector(7 downto 0)
    );
end regreport;
