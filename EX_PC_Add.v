// Note this module is relocated from EX stage to ID stage,
// PC_Plus_4_EX is actually connected to PC_Plus_4_ID in top module.
// The output Branch_Dest_EX is feed to IF_PC_Mux to help handling branch hazard.
// EX_PC_Add add the shifted sign extended instruction immediate part and PC_Plus_4_ID.


module EX_PC_Add(
		 input [31:0]  PC_Plus_4_EX, // actually from ID stage
		 input [31:0]  Instruction_Shift_Left_2_EX,
		 output [31:0] Branch_Dest_EX
		 );

   assign Branch_Dest_EX = PC_Plus_4_EX + Instruction_Shift_Left_2_EX;

endmodule // EX_PC_Add





   
   
