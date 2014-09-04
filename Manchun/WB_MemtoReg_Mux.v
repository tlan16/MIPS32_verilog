// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module WB_MemtoReg_Mux(
		       input [31:0]  ALU_Result_WB,
		       input [31:0]	     Read_Data_WB,
		       input 	     MemtoReg_WB,
		       output [31:0] Write_Data_WB
		       );

   assign Write_Data_WB = MemtoReg_WB? Read_Data_WB : ALU_Result_WB;

endmodule // WB_MemtoReg_Mux




   
   
