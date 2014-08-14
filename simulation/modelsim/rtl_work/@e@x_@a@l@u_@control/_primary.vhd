library verilog;
use verilog.vl_types.all;
entity EX_ALU_Control is
    generic(
        Rtype           : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        Radd            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        Rsub            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi0);
        Rand            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        \Ror\           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi1);
        Rslt            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi0);
        lwsw            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        Itype           : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        xis             : vl_logic_vector(0 to 5) := (HiX, HiX, HiX, HiX, HiX, HiX);
        ALUadd          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        ALUsub          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        ALUand          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        ALUor           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        ALUslt          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        unknown         : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        ALUx            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1)
    );
    port(
        Sign_Extend_Instruction_EX: in     vl_logic_vector(31 downto 0);
        ALUOp_EX        : in     vl_logic_vector(1 downto 0);
        ALU_Control_EX  : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Rtype : constant is 1;
    attribute mti_svvh_generic_type of Radd : constant is 1;
    attribute mti_svvh_generic_type of Rsub : constant is 1;
    attribute mti_svvh_generic_type of Rand : constant is 1;
    attribute mti_svvh_generic_type of \Ror\ : constant is 1;
    attribute mti_svvh_generic_type of Rslt : constant is 1;
    attribute mti_svvh_generic_type of lwsw : constant is 1;
    attribute mti_svvh_generic_type of Itype : constant is 1;
    attribute mti_svvh_generic_type of xis : constant is 1;
    attribute mti_svvh_generic_type of ALUadd : constant is 1;
    attribute mti_svvh_generic_type of ALUsub : constant is 1;
    attribute mti_svvh_generic_type of ALUand : constant is 1;
    attribute mti_svvh_generic_type of ALUor : constant is 1;
    attribute mti_svvh_generic_type of ALUslt : constant is 1;
    attribute mti_svvh_generic_type of unknown : constant is 1;
    attribute mti_svvh_generic_type of ALUx : constant is 1;
end EX_ALU_Control;
