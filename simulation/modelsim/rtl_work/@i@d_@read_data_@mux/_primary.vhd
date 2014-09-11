library verilog;
use verilog.vl_types.all;
entity ID_Read_data_Mux is
    port(
        Read_Data_1_ID  : in     vl_logic_vector(31 downto 0);
        Read_Data_2_ID  : in     vl_logic_vector(31 downto 0);
        Write_Data_WB   : in     vl_logic_vector(31 downto 0);
        Forward_C_ID    : in     vl_logic;
        Forward_D_ID    : in     vl_logic;
        Comparetor_ID   : out    vl_logic
    );
end ID_Read_data_Mux;
