// Choses which one of ALU_Result_WB and Read_Data_WB need to be writen back to register
// selection signe MemtoReg_WB is from ID_Control

module WB_MemtoReg_Mux(
		       input [31:0]  ALU_Result_WB,
		       input [31:0]  Read_Data_WB,
		       input 	     MemtoReg_WB,
		       output [31:0] Write_Data_WB
		       );

   assign Write_Data_WB = MemtoReg_WB ? Read_Data_WB : ALU_Result_WB;

endmodule // WB_MemtoReg_Mux




   
   
