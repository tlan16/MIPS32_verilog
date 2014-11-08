// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module ID_Shift_Left_2(
		       input [31:0] Sign_Extend_Instruction_ID,
		       output[31:0] Instruction_Shift_Left_2_ID
		       );

	assign    Instruction_Shift_Left_2_ID = Sign_Extend_Instruction_ID << 2;

endmodule // EX_Shift_Left_2
