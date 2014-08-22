library verilog;
use verilog.vl_types.all;
entity MIPS32 is
    port(
        CLOCK_50        : in     vl_logic;
        PCSrc_MEM       : in     vl_logic;
        Branch_Dest_MEM : in     vl_logic_vector(31 downto 0);
        Write_Register_WB: in     vl_logic_vector(4 downto 0);
        Write_Data_WB   : in     vl_logic_vector(31 downto 0);
        RegWrite_WB     : in     vl_logic;
        RegWrite_EX     : out    vl_logic;
        MemtoReg_EX     : out    vl_logic;
        Branch_EX       : out    vl_logic;
        MemRead_EX      : out    vl_logic;
        MemWrite_EX     : out    vl_logic;
        RegDst_EX       : out    vl_logic;
        ALUOp_EX        : out    vl_logic_vector(1 downto 0);
        ALUSrc_EX       : out    vl_logic;
        PC_Plus_4_EX    : out    vl_logic_vector(31 downto 0);
        Read_Data_1_EX  : out    vl_logic_vector(31 downto 0);
        Read_Data_2_EX  : out    vl_logic_vector(31 downto 0);
        Sign_Extend_Instruction_EX: out    vl_logic_vector(31 downto 0);
        Instruction_EX  : out    vl_logic_vector(31 downto 0)
    );
end MIPS32;
