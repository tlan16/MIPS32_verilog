// ID_Sign_Extension sign extend the immediate part of Instruction_ID

module ID_Sign_Extension(
		    input [15:0] Instruction_ID,
		    output [31:0] Sign_Extend_Instruction_ID
		    );

	assign Sign_Extend_Instruction_ID = {{16{Instruction_ID[15]}},Instruction_ID[15:0]};

endmodule // ID_Sign_Extension



   
   
