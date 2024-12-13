library verilog;
use verilog.vl_types.all;
entity ssegreport is
    port(
        led1            : out    vl_logic_vector(1 to 7);
        sign            : in     vl_logic;
        bcd             : in     vl_logic_vector(3 downto 0);
        led2            : out    vl_logic_vector(1 to 7)
    );
end ssegreport;
