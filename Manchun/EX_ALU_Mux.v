// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module EX_ALU_Mux(
		 input [31:0]  Read_Data_forward_B_EX,
		 input [31:0]  Sign_Extend_Instruction_EX,
		 input  ALUSrc_EX,
		 output [31:0] ALU_Data_2_EX
		  
		 );

		assign ALU_Data_2_EX = ALUSrc_EX ? Sign_Extend_Instruction_EX : Read_Data_forward_B_EX;

endmodule // EX_ALU_Mux
