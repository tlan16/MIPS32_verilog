library verilog;
use verilog.vl_types.all;
entity MIPS_Top is
    port(
        CLOCK_50        : in     vl_logic;
        Registers_Write_Data_WB: out    vl_logic_vector(31 downto 0)
    );
end MIPS_Top;
