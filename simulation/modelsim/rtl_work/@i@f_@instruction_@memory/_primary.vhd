library verilog;
use verilog.vl_types.all;
entity IF_Instruction_Memory is
    port(
        PC_IF           : in     vl_logic_vector(31 downto 0);
        IF_Flush        : in     vl_logic;
        Jump_Control_ID : in     vl_logic;
        Instruction_IF  : out    vl_logic_vector(31 downto 0)
    );
end IF_Instruction_Memory;
