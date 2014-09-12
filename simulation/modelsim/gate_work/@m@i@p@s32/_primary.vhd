library verilog;
use verilog.vl_types.all;
entity MIPS32 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        Clk             : in     vl_logic;
        Instruction_IF  : out    vl_logic_vector(31 downto 0);
        Next_PC_IF      : out    vl_logic_vector(31 downto 0);
        ALU_Result_EX   : out    vl_logic_vector(31 downto 0);
        MemWrite_MEM    : out    vl_logic;
        Write_Data_MUX_MEM: out    vl_logic_vector(31 downto 0)
    );
end MIPS32;
