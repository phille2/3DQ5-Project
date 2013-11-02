library verilog;
use verilog.vl_types.all;
entity convert_hex_to_seven_segment is
    port(
        hex_value       : in     vl_logic_vector(3 downto 0);
        converted_value : out    vl_logic_vector(6 downto 0)
    );
end convert_hex_to_seven_segment;
