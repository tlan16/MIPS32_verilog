library verilog;
use verilog.vl_types.all;
entity IF_PC_Mux is
    port(
        PC_Plus_4_IF    : in     vl_logic_vector(31 downto 0);
        Branch_Dest_MEM : in     vl_logic_vector(31 downto 0);
        PCSrc_MEM       : in     vl_logic;
        Next_PC_IF      : out    vl_logic_vector(31 downto 0)
    );
end IF_PC_Mux;
