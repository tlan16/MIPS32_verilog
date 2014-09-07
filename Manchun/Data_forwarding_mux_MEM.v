module Data_forwarding_mux_MEM(
	input 		 	Forward_MEM,
	input [31:0] 	Write_Data_MEM,
	input [31:0]	Read_Data_WB,

	output reg [31:0] Read_Data_forward_MEM_MEM

);

parameter 	ORGINAL		= 1'b0,
				WB_FORWARD 	= 1'b1;
							
				
initial Read_Data_forward_MEM_MEM <= Write_Data_MEM;

always @*begin
case(Forward_MEM)
	ORGINAL: 	Read_Data_forward_MEM_MEM <= Write_Data_MEM;
	WB_FORWARD: Read_Data_forward_MEM_MEM <= Read_Data_WB;
	default: 	Read_Data_forward_MEM_MEM <= Write_Data_MEM;

endcase
end	//end always



endmodule