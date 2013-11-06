library verilog;
use verilog.vl_types.all;
entity Clock_100_PLL is
    port(
        areset          : in     vl_logic;
        inclk0          : in     vl_logic;
        c0              : out    vl_logic;
        locked          : out    vl_logic
    );
end Clock_100_PLL;
