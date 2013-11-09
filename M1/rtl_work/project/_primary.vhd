library verilog;
use verilog.vl_types.all;
entity project is
    generic(
        U_OFFSET        : vl_logic_vector(0 to 17) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        V_OFFSET        : vl_logic_vector(0 to 17) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        RGB_OFFSET      : vl_logic_vector(0 to 17) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        CLOCK_50_I      : in     vl_logic;
        PUSH_BUTTON_I   : in     vl_logic_vector(3 downto 0);
        SWITCH_I        : in     vl_logic_vector(17 downto 0);
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
        SRAM_OE_N_O     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of U_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of V_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of RGB_OFFSET : constant is 1;
end project;
