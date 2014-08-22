library verilog;
use verilog.vl_types.all;
entity MIPS32_vlg_check_tst is
    port(
        ALUOp_EX        : in     vl_logic_vector(1 downto 0);
        ALUSrc_EX       : in     vl_logic;
        Branch_EX       : in     vl_logic;
        Instruction_EX  : in     vl_logic_vector(31 downto 0);
        MemRead_EX      : in     vl_logic;
        MemWrite_EX     : in     vl_logic;
        MemtoReg_EX     : in     vl_logic;
        PC_Plus_4_EX    : in     vl_logic_vector(31 downto 0);
        Read_Data_1_EX  : in     vl_logic_vector(31 downto 0);
        Read_Data_2_EX  : in     vl_logic_vector(31 downto 0);
        RegDst_EX       : in     vl_logic;
        RegWrite_EX     : in     vl_logic;
        Sign_Extend_Instruction_EX: in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end MIPS32_vlg_check_tst;
