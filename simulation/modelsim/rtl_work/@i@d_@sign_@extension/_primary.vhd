library verilog;
use verilog.vl_types.all;
entity ID_Sign_Extension is
    port(
        Instruction_ID  : in     vl_logic_vector(15 downto 0);
        Sign_Extend_Instruction_ID: out    vl_logic_vector(31 downto 0)
    );
end ID_Sign_Extension;
