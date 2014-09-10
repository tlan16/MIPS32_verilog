library verilog;
use verilog.vl_types.all;
entity EX_PC_Add is
    port(
        PC_Plus_4_EX    : in     vl_logic_vector(31 downto 0);
        Instruction_Shift_Left_2_EX: in     vl_logic_vector(31 downto 0);
        Branch_Dest_EX  : out    vl_logic_vector(31 downto 0)
    );
end EX_PC_Add;
