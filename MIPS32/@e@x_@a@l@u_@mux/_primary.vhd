library verilog;
use verilog.vl_types.all;
entity EX_ALU_Mux is
    port(
        Read_Data_2_EX  : in     vl_logic_vector(31 downto 0);
        Sign_Extend_Instruction_EX: in     vl_logic_vector(31 downto 0);
        ALUSrc_EX       : in     vl_logic;
        ALU_Data_2_EX   : out    vl_logic_vector(31 downto 0)
    );
end EX_ALU_Mux;
