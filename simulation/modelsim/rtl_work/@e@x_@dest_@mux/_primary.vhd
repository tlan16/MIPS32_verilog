library verilog;
use verilog.vl_types.all;
entity EX_Dest_Mux is
    port(
        Instruction_EX  : in     vl_logic_vector(31 downto 0);
        RegDst_EX       : in     vl_logic;
        Write_Register_EX: out    vl_logic_vector(4 downto 0)
    );
end EX_Dest_Mux;
