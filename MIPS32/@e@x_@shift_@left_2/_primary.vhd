library verilog;
use verilog.vl_types.all;
entity EX_Shift_Left_2 is
    port(
        Sign_Extend_Instruction_EX: in     vl_logic_vector(31 downto 0);
        Instruction_Shift_Left_2_EX: out    vl_logic_vector(31 downto 0)
    );
end EX_Shift_Left_2;
