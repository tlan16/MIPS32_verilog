library verilog;
use verilog.vl_types.all;
entity IF_PC_Reg is
    port(
        Next_PC_IF      : in     vl_logic_vector(31 downto 0);
        PC_IF           : out    vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic
    );
end IF_PC_Reg;
