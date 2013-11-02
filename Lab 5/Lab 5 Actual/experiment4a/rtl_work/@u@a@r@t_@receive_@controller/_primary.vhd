library verilog;
use verilog.vl_types.all;
entity UART_Receive_Controller is
    port(
        Clock_50        : in     vl_logic;
        Resetn          : in     vl_logic;
        Enable          : in     vl_logic;
        Unload_data     : in     vl_logic;
        RX_data         : out    vl_logic_vector(7 downto 0);
        Empty           : out    vl_logic;
        Overrun         : out    vl_logic;
        Frame_error     : out    vl_logic_vector(3 downto 0);
        UART_RX_I       : in     vl_logic
    );
end UART_Receive_Controller;
