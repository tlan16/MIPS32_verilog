library verilog;
use verilog.vl_types.all;
entity MIPS32_vlg_sample_tst is
    port(
        Branch_Dest_MEM : in     vl_logic_vector(31 downto 0);
        CLOCK_50        : in     vl_logic;
        PCSrc_MEM       : in     vl_logic;
        RegWrite_WB     : in     vl_logic;
        Write_Data_WB   : in     vl_logic_vector(31 downto 0);
        Write_Register_WB: in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end MIPS32_vlg_sample_tst;
