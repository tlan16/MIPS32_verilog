library verilog;
use verilog.vl_types.all;
entity EX_Forward_B is
    generic(
        First           : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        Second          : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        Third           : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        Read_Data_2_EX  : in     vl_logic_vector(31 downto 0);
        Write_Data_WB   : in     vl_logic_vector(31 downto 0);
        ALU_Result_MEM  : in     vl_logic_vector(31 downto 0);
        ForwardB_EX     : in     vl_logic_vector(1 downto 0);
        Read_Data_2_Mux_EX: out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of First : constant is 1;
    attribute mti_svvh_generic_type of Second : constant is 1;
    attribute mti_svvh_generic_type of Third : constant is 1;
end EX_Forward_B;
