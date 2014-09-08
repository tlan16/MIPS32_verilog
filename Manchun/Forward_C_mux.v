// Forward_C_mux is the mux for ID Branch Forwarding


module Forward_C_mux(
		input [31:0]  Read_Data_1_ID,
		input [31:0]  ALU_Result_MEM,
		input			  Forward_C,
		output [31:0] Forward_C_out
);

assign Forward_C_out = Forward_C ? ALU_Result_MEM : Read_Data_1_ID;

endmodule