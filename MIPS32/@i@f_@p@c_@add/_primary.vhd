library verilog;
use verilog.vl_types.all;
entity IF_PC_Add is
    port(
        PC_IF           : in     vl_logic_vector(31 downto 0);
        PC_Plus_4_IF    : out    vl_logic_vector(31 downto 0)
    );
end IF_PC_Add;
