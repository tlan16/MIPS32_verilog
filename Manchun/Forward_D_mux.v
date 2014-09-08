// Forward_D_mux is the mux for ID Branch Forwarding


module Forward_D_mux(
		input [31:0]  Read_Data_2_ID,
		input [31:0]  ALU_Result_MEM,
		input			  Forward_D,
		output [31:0] Forward_D_out
);

assign Forward_D_out = Forward_D ? ALU_Result_MEM : Read_Data_2_ID;

endmodule