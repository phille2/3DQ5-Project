library verilog;
use verilog.vl_types.all;
entity VGA_SRAM_interface is
    generic(
        VIEW_AREA_LEFT  : integer := 160;
        VIEW_AREA_RIGHT : integer := 480;
        VIEW_AREA_TOP   : integer := 120;
        VIEW_AREA_BOTTOM: integer := 360
    );
    port(
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        VGA_enable      : in     vl_logic;
        SRAM_base_address: in     vl_logic_vector(17 downto 0);
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_read_data  : in     vl_logic_vector(15 downto 0);
        VGA_CLOCK_O     : out    vl_logic;
        VGA_HSYNC_O     : out    vl_logic;
        VGA_VSYNC_O     : out    vl_logic;
        VGA_BLANK_O     : out    vl_logic;
        VGA_SYNC_O      : out    vl_logic;
        VGA_RED_O       : out    vl_logic_vector(9 downto 0);
        VGA_GREEN_O     : out    vl_logic_vector(9 downto 0);
        VGA_BLUE_O      : out    vl_logic_vector(9 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of VIEW_AREA_LEFT : constant is 1;
    attribute mti_svvh_generic_type of VIEW_AREA_RIGHT : constant is 1;
    attribute mti_svvh_generic_type of VIEW_AREA_TOP : constant is 1;
    attribute mti_svvh_generic_type of VIEW_AREA_BOTTOM : constant is 1;
end VGA_SRAM_interface;
