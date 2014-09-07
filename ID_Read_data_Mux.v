// condition ? if true : if false

module ID_Read_data_Mux(
		       input [31:0]  Read_Data_1_ID,
				 input [31:0]	Read_Data_2_ID,
		       input [31:0]  Write_Data_WB,
		       input 	      Forward_C_ID,
				 input 	      Forward_D_ID,
		       output 		  Comparetor_ID
		       );

wire [31:0] Read_Data_1_MUX_ID;
wire [31:0] Read_Data_2_MUX_ID;
assign Read_Data_1_MUX_ID = Forward_C_ID ? Write_Data_WB : Read_Data_1_ID;
assign Read_Data_2_MUX_ID = Forward_D_ID ? Write_Data_WB : Read_Data_2_ID;

assign Comparetor_ID = (Read_Data_1_MUX_ID == Read_Data_2_MUX_ID);

endmodule // ID_Read_data_Mux




   
   
