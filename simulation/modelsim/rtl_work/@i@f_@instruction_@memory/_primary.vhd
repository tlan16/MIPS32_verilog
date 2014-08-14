library verilog;
use verilog.vl_types.all;
entity IF_Instruction_Memory is
    port(
        PC_IF           : in     vl_logic_vector(31 downto 0);
        Instruction_IF  : out    vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic
    );
end IF_Instruction_Memory;
