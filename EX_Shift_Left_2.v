// Note this module is reloacated from EX stage to ID stage,
// Input Sign_Extend_Instruction_EX  is feed as Sign_Extend_Instruction_ID in top module.
// output Instruction_Shift_Left_2_EX is actual offset need to be added to PC.
// EX_Shift_Left_2 shift the input left by two.


module EX_Shift_Left_2(
		       input [31:0] Sign_Extend_Instruction_EX,
		       output [31:0] Instruction_Shift_Left_2_EX
		       );
	assign Instruction_Shift_Left_2_EX = Sign_Extend_Instruction_EX << 2;

endmodule // EX_Shift_Left_2





   
   
