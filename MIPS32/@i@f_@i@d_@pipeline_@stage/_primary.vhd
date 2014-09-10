library verilog;
use verilog.vl_types.all;
entity IF_ID_Pipeline_Stage is
    port(
        Instruction_IF  : in     vl_logic_vector(31 downto 0);
        PC_Plus_4_IF    : in     vl_logic_vector(31 downto 0);
        IF_ID_Pipeline_Enable: in     vl_logic;
        Instruction_ID  : out    vl_logic_vector(31 downto 0);
        PC_Plus_4_ID    : out    vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic
    );
end IF_ID_Pipeline_Stage;
