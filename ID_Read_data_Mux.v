// ID_Read_data_Mux helps handling branch hazard. 
// Since the branch unit is relocated from MEM stage to ID stage, the output Comparator_ID is the equivalent of EX_zero signal
// Firstly, Forward_C_ID and Forward_D_ID are the select signal of two mux, selecting which of Read_Data_ID or ALU_Result_MEM is feed to comparator.
// Forward_C_ID and Forward_D_ID are from Hazard handling unit.
// Secondly, the comparator outputs logic high when two inputs are identical


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




   
   
