library verilog;
use verilog.vl_types.all;
entity MEM_Data_Memory is
    generic(
        BASE_ADDRESS    : vl_logic_vector(0 to 24) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        ALU_Result_MEM  : in     vl_logic_vector(31 downto 0);
        Write_Data_MEM  : in     vl_logic;
        Read_Data_MEM   : out    vl_logic_vector(31 downto 0);
        MemRead_MEM     : in     vl_logic;
        MemWrite_MEM    : in     vl_logic;
        Clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BASE_ADDRESS : constant is 1;
end MEM_Data_Memory;
