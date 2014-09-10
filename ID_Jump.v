// condition ? if true : if false

module ID_Jump(
		input [31:0]  		Instruction_ID,
		input [31:0]	   PC_Plus_4_ID,
		
		output[31:0] 		Jump_Dest_ID
		);
	
   assign Jump_Dest_ID = {{PC_Plus_4_ID[31:28]},{Instruction_ID[27:0] << 2}};

endmodule // IF_PC_Mux


   
   
