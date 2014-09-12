// add the shifted address offset and PC_Plus_4 from ID stage

module EX_PC_Add(
		 input [31:0]  PC_Plus_4_EX, // actually from ID stage
		 input [31:0]  Instruction_Shift_Left_2_EX,
		 output [31:0] Branch_Dest_EX
		 );

   assign Branch_Dest_EX = PC_Plus_4_EX + Instruction_Shift_Left_2_EX;

endmodule // EX_PC_Add





   
   
