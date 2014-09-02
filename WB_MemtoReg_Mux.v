// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

// condition ? if true : if false

module WB_MemtoReg_Mux(
				 input Clk,
		       input [31:0]  ALU_Result_WB,
		       input [31:0]  Read_Data_WB,
		       input 	     MemtoReg_WB,
		       output reg [31:0] Write_Data_WB
		       );

always@(posedge Clk)
   Write_Data_WB = MemtoReg_WB ? Read_Data_WB : ALU_Result_WB;

endmodule // WB_MemtoReg_Mux




   
   
