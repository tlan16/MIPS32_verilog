// The IF_PC_Mux chooses what is next pc, normally pc_plus_4 is outputted to be next_pc_if, but in case of branch and jump, and corresponding next_pc_if is passed over.
// PCSrc_MEM triggers the branch response, forwarding Branch_Dest_MEM to Next_PC_IF.
// PCSrc_MEM is from MEM_Branch_AND, Branch_Dest_MEM is from EX_PC_Add
// Note PCSrc_MEM, MEM_Branch_AND,  Branch_Dest_MEM and EX_PC_Add is actually been 
// relocated from MEM stage to ID stage.
// Jump_Control_ID triggers the jump response, forwarding Jump_Dest_ID  to Next_PC_IF.
// Jump_Control_ID is from ID_Control, Jump_Dest_ID  is from ID_Jump.


module IF_PC_Mux(
		 input [31:0] PC_Plus_4_IF,
		 input [31:0] Branch_Dest_MEM,
		 input [31:0] Jump_Dest_ID,
		 input 		  PCSrc_MEM, // actually ID stage
		 input 		  Jump_Control_ID,
		 output [31:0]Next_PC_IF
		 );
	
   assign Next_PC_IF = Jump_Control_ID ? Jump_Dest_ID : (PCSrc_MEM ? Branch_Dest_MEM : PC_Plus_4_IF);

endmodule // IF_PC_Mux


   
   
