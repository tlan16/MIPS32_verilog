library verilog;
use verilog.vl_types.all;
entity MEM_Branch_AND is
    port(
        Branch_MEM      : in     vl_logic;
        Zero_MEM        : in     vl_logic;
        PCSrc_MEM       : out    vl_logic
    );
end MEM_Branch_AND;
