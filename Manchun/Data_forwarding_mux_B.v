module Data_forwarding_mux_B(
	input [1:0] 	Forward_B,
	input [31:0] 	Write_Data_WB,
	input [31:0] 	ALU_Result_MEM,
	input [31:0]	Read_Data_2_EX,

	output reg [31:0] Read_Data_forward_B_EX

);

parameter 	ORGINAL		= 2'b00,
				MEM_FORWARD = 2'b01,
				EX_FORWARD 	= 2'b10,
				ERROR			= 2'b11;			
				
initial Read_Data_forward_B_EX <= Read_Data_2_EX;

always @*begin
case(Forward_B)
	ORGINAL: 	Read_Data_forward_B_EX <= Read_Data_2_EX;
	EX_FORWARD:	Read_Data_forward_B_EX <= ALU_Result_MEM;
	MEM_FORWARD:Read_Data_forward_B_EX <= Write_Data_WB;
	default: 	Read_Data_forward_B_EX <= Read_Data_2_EX;

endcase
end	//end always



endmodule