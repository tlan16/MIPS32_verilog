library verilog;
use verilog.vl_types.all;
entity MIPS32 is
    port(
        CLOCK_50        : in     vl_logic;
        PC_Plus_4_IF    : out    vl_logic_vector(31 downto 0);
        Instruction_IF  : out    vl_logic_vector(31 downto 0);
        Next_PC_IF      : out    vl_logic_vector(31 downto 0);
        PC_Enable       : out    vl_logic;
        RegDst_ID       : out    vl_logic;
        ALUOp_ID        : out    vl_logic_vector(1 downto 0);
        ALUSrc_ID       : out    vl_logic;
        Branch_ID       : out    vl_logic;
        MemRead_ID      : out    vl_logic;
        MemWrite_ID     : out    vl_logic;
        RegWrite_ID     : out    vl_logic;
        MemtoReg_ID     : out    vl_logic;
        Sign_Extend_Instruction_ID: out    vl_logic_vector(31 downto 0);
        ID_Control_NOP  : out    vl_logic;
        ID_Register_Write_to_Read: out    vl_logic_vector(1 downto 0);
        Comparetor_ID   : out    vl_logic;
        ForwardA_EX     : out    vl_logic_vector(1 downto 0);
        ForwardB_EX     : out    vl_logic_vector(1 downto 0);
        Forward_Mem_to_Mem: out    vl_logic;
        ForwardC        : out    vl_logic;
        ForwardD        : out    vl_logic;
        ALU_Data_2_EX   : out    vl_logic_vector(31 downto 0);
        ALU_Control_EX  : out    vl_logic_vector(3 downto 0);
        ALU_Result_EX   : out    vl_logic_vector(31 downto 0);
        Branch_Dest_EX  : out    vl_logic_vector(31 downto 0);
        Write_Register_EX: out    vl_logic_vector(4 downto 0);
        Zero_EX         : out    vl_logic;
        Read_Data_MEM   : out    vl_logic_vector(31 downto 0);
        PCSrc_MEM       : out    vl_logic;
        Write_Data_MUX_MEM: out    vl_logic_vector(31 downto 0);
        ALU_Result_WB   : out    vl_logic_vector(31 downto 0)
    );
end MIPS32;
