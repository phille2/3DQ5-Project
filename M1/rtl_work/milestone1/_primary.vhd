library verilog;
use verilog.vl_types.all;
entity milestone1 is
    generic(
        U_OFFSET        : vl_logic_vector(0 to 17) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        V_OFFSET        : vl_logic_vector(0 to 17) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        RGB_OFFSET      : vl_logic_vector(0 to 17) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        milestone1_enable: in     vl_logic;
        milestone1_done : out    vl_logic;
        Clock_50_I      : in     vl_logic;
        Resetn          : in     vl_logic;
        SRAM_read_data  : in     vl_logic_vector(15 downto 0);
        SRAM_write_data : out    vl_logic_vector(15 downto 0);
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_we_n       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of U_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of V_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of RGB_OFFSET : constant is 1;
end milestone1;
