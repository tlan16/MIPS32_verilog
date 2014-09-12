// Comparator ourputs the equivalent EX_zero signal
// contains a mux, then a conparator
// mux chode data from ALU_Result_MEM and read_data from register, then feed output to comparator
// comparator outputs high when two data are identical
// selection signal Forward_C_ID and Forward_D_ID are from Hazard handling unit

module ID_Read_data_Mux(
		       input [31:0]  Read_Data_1_ID,
				 input [31:0]	Read_Data_2_ID,
		       input [31:0]  ALU_Result_MEM,
		       input 	      Forward_C_ID,
				 input 	      Forward_D_ID,
		       output 		  Comparetor_ID
		       );

wire [31:0] Read_Data_1_MUX_ID;
wire [31:0] Read_Data_2_MUX_ID;
assign Read_Data_1_MUX_ID = Forward_C_ID ? ALU_Result_MEM : Read_Data_1_ID;
assign Read_Data_2_MUX_ID = Forward_D_ID ? ALU_Result_MEM : Read_Data_2_ID;

assign Comparetor_ID = (Read_Data_1_MUX_ID == Read_Data_2_MUX_ID);

endmodule // ID_Read_data_Mux




   
   
