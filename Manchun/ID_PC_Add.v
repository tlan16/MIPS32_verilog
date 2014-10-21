// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module ID_PC_Add(
		 input [31:0]  PC_Plus_4_ID,
		 input [31:0]  Instruction_Shift_Left_2_ID,
		 output [31:0] Branch_Dest_ID
		 );

   assign Branch_Dest_ID = PC_Plus_4_ID + Instruction_Shift_Left_2_ID;

endmodule // ID_PC_Add