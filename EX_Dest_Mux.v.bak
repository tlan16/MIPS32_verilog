// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

// condition ? if true : if false

module EX_Dest_Mux(
		 input [31:0] Instruction_EX,
		 input RegDst_EX,
		 output [4:0] Write_Register_EX
		 );

   assign Write_Register_EX = RegDst_EX ? Instruction_EX[15:11] : Instruction_EX[20:16];

endmodule // EX_Dest_Mux



   
   
