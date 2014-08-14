library verilog;
use verilog.vl_types.all;
entity EX_MEM_Pipeline_Stage is
    port(
        RegWrite_EX     : in     vl_logic;
        MemtoReg_EX     : in     vl_logic;
        Branch_EX       : in     vl_logic;
        MemRead_EX      : in     vl_logic;
        MemWrite_EX     : in     vl_logic;
        Branch_Dest_EX  : in     vl_logic_vector(31 downto 0);
        Zero_EX         : in     vl_logic;
        ALU_Result_EX   : in     vl_logic_vector(31 downto 0);
        Read_Data_2_EX  : in     vl_logic;
        Write_Register_EX: in     vl_logic_vector(4 downto 0);
        Clk             : in     vl_logic;
        RegWrite_MEM    : out    vl_logic;
        MemtoReg_MEM    : out    vl_logic;
        Branch_MEM      : out    vl_logic;
        MemRead_MEM     : out    vl_logic;
        MemWrite_MEM    : out    vl_logic;
        Branch_Dest_MEM : out    vl_logic_vector(31 downto 0);
        Zero_MEM        : out    vl_logic;
        ALU_Result_MEM  : out    vl_logic_vector(31 downto 0);
        Write_Data_MEM  : out    vl_logic;
        Write_Register_MEM: out    vl_logic_vector(4 downto 0)
    );
end EX_MEM_Pipeline_Stage;
