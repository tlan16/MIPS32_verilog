library verilog;
use verilog.vl_types.all;
entity ID_EX_Pipeline_Stage is
    port(
        RegWrite_ID     : in     vl_logic;
        MemtoReg_ID     : in     vl_logic;
        Branch_ID       : in     vl_logic;
        MemRead_ID      : in     vl_logic;
        MemWrite_ID     : in     vl_logic;
        RegDst_ID       : in     vl_logic;
        ALUOp_ID        : in     vl_logic_vector(1 downto 0);
        ALUSrc_ID       : in     vl_logic;
        PC_Plus_4_ID    : in     vl_logic_vector(31 downto 0);
        Read_Data_1_ID  : in     vl_logic_vector(31 downto 0);
        Read_Data_2_ID  : in     vl_logic_vector(31 downto 0);
        Sign_Extend_Instruction_ID: in     vl_logic_vector(31 downto 0);
        Instruction_ID  : in     vl_logic_vector(31 downto 0);
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
        Instruction_EX  : out    vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic
    );
end ID_EX_Pipeline_Stage;
