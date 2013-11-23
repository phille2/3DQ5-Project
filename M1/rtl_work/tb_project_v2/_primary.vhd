library verilog;
use verilog.vl_types.all;
entity tb_project_v2 is
    generic(
        VIEW_AREA_LEFT  : integer := 160;
        VIEW_AREA_RIGHT : integer := 480;
        VIEW_AREA_TOP   : integer := 120;
        VIEW_AREA_BOTTOM: integer := 360
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of VIEW_AREA_LEFT : constant is 1;
    attribute mti_svvh_generic_type of VIEW_AREA_RIGHT : constant is 1;
    attribute mti_svvh_generic_type of VIEW_AREA_TOP : constant is 1;
    attribute mti_svvh_generic_type of VIEW_AREA_BOTTOM : constant is 1;
end tb_project_v2;
