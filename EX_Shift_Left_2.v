// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module EX_Shift_Left_2(
		       input [31:0] Sign_Extend_Instruction_EX,
		       output [31:0] Instruction_Shift_Left_2_EX
		       );
	assign Instruction_Shift_Left_2_EX = Sign_Extend_Instruction_EX << 2;

endmodule // EX_Shift_Left_2





   
   
