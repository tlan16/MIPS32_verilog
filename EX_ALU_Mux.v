// EX_ALU_Mux choses what data feed into ALU_Data_2_EX
// used when doing lw,sw, sign extended offset need to be feeded in, instead of Read_Data_2 from register.

module EX_ALU_Mux(
		 input [31:0]  Read_Data_2_EX,
		 input [31:0]  Sign_Extend_Instruction_EX,
		 input 			ALUSrc_EX,
		 output [31:0] ALU_Data_2_EX
		  
		 );

   assign ALU_Data_2_EX = ALUSrc_EX ? Sign_Extend_Instruction_EX : Read_Data_2_EX;

endmodule // EX_ALU_Mux




   
   
