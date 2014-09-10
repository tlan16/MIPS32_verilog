library verilog;
use verilog.vl_types.all;
entity MEM_to_MEM_Forward is
    generic(
        First           : integer := 0;
        Second          : integer := 1
    );
    port(
        Write_Data_MEM  : in     vl_logic_vector(31 downto 0);
        Read_Data_WB    : in     vl_logic_vector(31 downto 0);
        Forward_Mem_to_Mem: in     vl_logic;
        Write_Data_MUX_MEM: out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of First : constant is 1;
    attribute mti_svvh_generic_type of Second : constant is 1;
end MEM_to_MEM_Forward;
