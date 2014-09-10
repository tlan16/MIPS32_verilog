library verilog;
use verilog.vl_types.all;
entity MEM_Data_Memory is
    port(
        ALU_Result_MEM  : in     vl_logic_vector(31 downto 0);
        Write_Data_MEM  : in     vl_logic_vector(31 downto 0);
        Read_Data_MEM   : out    vl_logic_vector(31 downto 0);
        MemRead_MEM     : in     vl_logic;
        MemWrite_MEM    : in     vl_logic;
        Clk             : in     vl_logic
    );
end MEM_Data_Memory;
