module Data_forwarding_mux_A(
	input [1:0] 	Forward_A,
	input [31:0] 	Write_Data_WB,
	input [31:0] 	ALU_Result_MEM,
	input [31:0]	Read_Data_1_EX,

	output reg [31:0] Read_Data_forward_A_EX

);

parameter 	ORGINAL		= 2'b00,
				MEM_FORWARD = 2'b01,
				EX_FORWARD 	= 2'b10,
				ERROR			= 2'b11;			
				
initial Read_Data_forward_A_EX <= Read_Data_1_EX;

always @*begin
case(Forward_A)
	ORGINAL: 	Read_Data_forward_A_EX <= Read_Data_1_EX;
	EX_FORWARD:	Read_Data_forward_A_EX <= ALU_Result_MEM;
	MEM_FORWARD:Read_Data_forward_A_EX <= Write_Data_WB;
	default: 	Read_Data_forward_A_EX <= Read_Data_1_EX;

endcase
end	//end always



endmodule