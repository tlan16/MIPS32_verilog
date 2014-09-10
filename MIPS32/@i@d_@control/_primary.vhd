library verilog;
use verilog.vl_types.all;
entity ID_Control is
    generic(
        RTYPE           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        LW              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        SW              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi1);
        BEQ             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        NOP             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        JUMP            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0)
    );
    port(
        Instruction_ID  : in     vl_logic_vector(5 downto 0);
        ID_Control_NOP  : in     vl_logic;
        RegWrite_ID     : out    vl_logic;
        MemtoReg_ID     : out    vl_logic;
        Branch_ID       : out    vl_logic;
        Jump_Control_ID : out    vl_logic;
        MemRead_ID      : out    vl_logic;
        MemWrite_ID     : out    vl_logic;
        RegDst_ID       : out    vl_logic;
        ALUOp_ID        : out    vl_logic_vector(1 downto 0);
        ALUSrc_ID       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of RTYPE : constant is 1;
    attribute mti_svvh_generic_type of LW : constant is 1;
    attribute mti_svvh_generic_type of SW : constant is 1;
    attribute mti_svvh_generic_type of BEQ : constant is 1;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of JUMP : constant is 1;
end ID_Control;
