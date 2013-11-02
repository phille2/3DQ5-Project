library verilog;
use verilog.vl_types.all;
entity UART_SRAM_interface is
    port(
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        UART_RX_I       : in     vl_logic;
        Initialize      : in     vl_logic;
        Enable          : in     vl_logic;
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_write_data : out    vl_logic_vector(15 downto 0);
        SRAM_we_n       : out    vl_logic;
        Frame_error     : out    vl_logic_vector(3 downto 0)
    );
end UART_SRAM_interface;
