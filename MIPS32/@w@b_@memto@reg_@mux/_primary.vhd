library verilog;
use verilog.vl_types.all;
entity WB_MemtoReg_Mux is
    port(
        ALU_Result_WB   : in     vl_logic_vector(31 downto 0);
        Read_Data_WB    : in     vl_logic_vector(31 downto 0);
        MemtoReg_WB     : in     vl_logic;
        Write_Data_WB   : out    vl_logic_vector(31 downto 0)
    );
end WB_MemtoReg_Mux;
