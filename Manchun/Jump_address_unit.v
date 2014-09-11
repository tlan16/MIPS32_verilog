// Jump_address_unit to generate the destination of the jump

module Jump_address_unit(
				input [31:0]  		Instruction_ID,
			   input [31:0]	   PC_Plus_4_ID,
				
				output [31:0] 		Jump_dst_ID
);

assign Jump_dst_ID = {{PC_Plus_4_ID[31:28]},{Instruction_ID[27:0] << 2}};

endmodule