library verilog;
use verilog.vl_types.all;
entity ID_Registers is
    port(
        Read_Address_1_ID: in     vl_logic_vector(4 downto 0);
        Read_Address_2_ID: in     vl_logic_vector(4 downto 0);
        Write_Register_WB: in     vl_logic_vector(4 downto 0);
        Write_Data_WB   : in     vl_logic_vector(31 downto 0);
        Read_Data_1_ID  : out    vl_logic_vector(31 downto 0);
        Read_Data_2_ID  : out    vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic;
        RegWrite_WB     : in     vl_logic
    );
end ID_Registers;
