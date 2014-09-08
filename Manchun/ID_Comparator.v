//ID_Comparator is used to replace the function calculated by ALU before ID branch forwarding

module ID_Comparator(
				input [31:0] 	Forward_C_out,
				input [31:0]	Forward_D_out,
				output			Zero_ID

);

assign Zero_ID = (Forward_C_out == Forward_D_out);

endmodule