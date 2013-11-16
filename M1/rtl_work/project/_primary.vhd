library verilog;
use verilog.vl_types.all;
entity project is
    port(
        CLOCK_50_I      : in     vl_logic;
        PUSH_BUTTON_I   : in     vl_logic_vector(3 downto 0);
        SWITCH_I        : in     vl_logic_vector(17 downto 0);
        SEVEN_SEGMENT_N_O: out    vl_logic;
        LED_GREEN_O     : out    vl_logic_vector(8 downto 0);
        VGA_CLOCK_O     : out    vl_logic;
        VGA_HSYNC_O     : out    vl_logic;
        VGA_VSYNC_O     : out    vl_logic;
        VGA_BLANK_O     : out    vl_logic;
        VGA_SYNC_O      : out    vl_logic;
        VGA_RED_O       : out    vl_logic_vector(9 downto 0);
        VGA_GREEN_O     : out    vl_logic_vector(9 downto 0);
        VGA_BLUE_O      : out    vl_logic_vector(9 downto 0);
        SRAM_DATA_IO    : inout  vl_logic_vector(15 downto 0);
        SRAM_ADDRESS_O  : out    vl_logic_vector(17 downto 0);
        SRAM_UB_N_O     : out    vl_logic;
        SRAM_LB_N_O     : out    vl_logic;
        SRAM_WE_N_O     : out    vl_logic;
        SRAM_CE_N_O     : out    vl_logic;
        SRAM_OE_N_O     : out    vl_logic;
        UART_RX_I       : in     vl_logic;
        UART_TX_O       : out    vl_logic
    );
end project;
