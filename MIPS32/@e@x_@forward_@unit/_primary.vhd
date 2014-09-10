library verilog;
use verilog.vl_types.all;
entity EX_Forward_Unit is
    port(
        IF_ID_Reg_Rs    : in     vl_logic_vector(4 downto 0);
        IF_ID_Reg_Rt    : in     vl_logic_vector(4 downto 0);
        ID_Branch       : in     vl_logic;
        ID_EX_MemRead   : in     vl_logic;
        ID_EX_RegWrite  : in     vl_logic;
        ID_EX_MEMtoReg  : in     vl_logic;
        ID_EX_Reg_Rs    : in     vl_logic_vector(4 downto 0);
        ID_EX_Reg_Rt    : in     vl_logic_vector(4 downto 0);
        ID_EX_Reg_Rd    : in     vl_logic_vector(4 downto 0);
        EX_MEM_RegWrite : in     vl_logic;
        EX_MEM_MemWrite : in     vl_logic;
        EX_MEM_Reg_Rs   : in     vl_logic_vector(4 downto 0);
        EX_MEM_Reg_Rt   : in     vl_logic_vector(4 downto 0);
        EX_MEM_Reg_Rd   : in     vl_logic_vector(4 downto 0);
        MEM_WB_MemtoReg : in     vl_logic;
        MEM_WB_RegWrite : in     vl_logic;
        MEM_WB_Reg_Rd   : in     vl_logic_vector(4 downto 0);
        MEM_WB_Reg_Rt   : in     vl_logic_vector(4 downto 0);
        ForwardA_EX     : out    vl_logic_vector(1 downto 0);
        ForwardB_EX     : out    vl_logic_vector(1 downto 0);
        Forward_Mem_to_Mem: out    vl_logic;
        PC_Enable       : out    vl_logic;
        IF_ID_Pipeline_Enable: out    vl_logic;
        ID_Control_NOP  : out    vl_logic;
        ID_Register_Write_to_Read: out    vl_logic_vector(1 downto 0);
        ForwardC        : out    vl_logic;
        ForwardD        : out    vl_logic
    );
end EX_Forward_Unit;
