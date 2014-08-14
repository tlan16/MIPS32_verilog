library verilog;
use verilog.vl_types.all;
entity EX_ALU is
    generic(
        ALUadd          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        ALUsub          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        ALUand          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        ALUor           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        ALUslt          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1)
    );
    port(
        Read_Data_1_EX  : in     vl_logic_vector(31 downto 0);
        ALU_Data_2_EX   : in     vl_logic_vector(31 downto 0);
        ALU_Control_EX  : in     vl_logic_vector(3 downto 0);
        ALU_Result_EX   : out    vl_logic_vector(31 downto 0);
        Zero_EX         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ALUadd : constant is 1;
    attribute mti_svvh_generic_type of ALUsub : constant is 1;
    attribute mti_svvh_generic_type of ALUand : constant is 1;
    attribute mti_svvh_generic_type of ALUor : constant is 1;
    attribute mti_svvh_generic_type of ALUslt : constant is 1;
end EX_ALU;
