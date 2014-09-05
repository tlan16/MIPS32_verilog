// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module MEM_WB_Pipeline_Stage(
			     input 	  Clk,
			    
			     input 	  RegWrite_MEM,
			     input 	  MemtoReg_MEM,
			     input [31:0]	Read_Data_MEM, 
			     input [31:0] ALU_Result_MEM,
			     input [4:0]  Write_Register_MEM,
				  
				  input [4:0]	Instruction_Rd_MEM,

			     output reg 	  RegWrite_WB,
			     output reg 	  MemtoReg_WB,
			     output reg [31:0] Read_Data_WB, 
			     output reg [31:0] ALU_Result_WB,
			     output reg [4:0]  Write_Register_WB,
				  
				  output reg [4:0]	Instruction_Rd_WB
			     );
				  
   
   always@(posedge Clk) begin
		RegWrite_WB 		<= RegWrite_MEM;
		MemtoReg_WB 		<= MemtoReg_MEM;
		Read_Data_WB 		<= Read_Data_MEM;
		ALU_Result_WB		<= ALU_Result_MEM;
		Write_Register_WB	<= Write_Register_MEM;
		
		Instruction_Rd_WB <= Instruction_Rd_MEM;
	end //always

endmodule // MEM_WB_Pipeline_Stage
