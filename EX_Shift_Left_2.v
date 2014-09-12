// shift the sign extended instruction left by two

module EX_Shift_Left_2(
		       input [31:0] Sign_Extend_Instruction_EX,
		       output [31:0] Instruction_Shift_Left_2_EX
		       );
	assign Instruction_Shift_Left_2_EX = Sign_Extend_Instruction_EX << 2;

endmodule // EX_Shift_Left_2





   
   
