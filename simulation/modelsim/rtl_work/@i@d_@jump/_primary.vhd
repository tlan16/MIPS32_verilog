library verilog;
use verilog.vl_types.all;
entity ID_Jump is
    port(
        Instruction_ID  : in     vl_logic_vector(31 downto 0);
        PC_Plus_4_ID    : in     vl_logic_vector(31 downto 0);
        Jump_Dest_ID    : out    vl_logic_vector(31 downto 0)
    );
end ID_Jump;
