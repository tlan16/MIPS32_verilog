library verilog;
use verilog.vl_types.all;
entity MEM_WB_Pipeline_Stage is
    port(
        Clk             : in     vl_logic;
        RegWrite_MEM    : in     vl_logic;
        MemtoReg_MEM    : in     vl_logic;
        Read_Data_MEM   : in     vl_logic;
        ALU_Result_MEM  : in     vl_logic_vector(31 downto 0);
        Write_Register_MEM: in     vl_logic_vector(4 downto 0);
        RegWrite_WB     : out    vl_logic;
        MemtoReg_WB     : out    vl_logic;
        Read_Data_WB    : out    vl_logic;
        ALU_Result_WB   : out    vl_logic_vector(31 downto 0);
        Write_Register_WB: out    vl_logic_vector(4 downto 0)
    );
end MEM_WB_Pipeline_Stage;
