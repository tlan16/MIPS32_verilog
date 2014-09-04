// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module EX_MEM_Pipeline_Stage(
			     input 	   RegWrite_EX,
			     input 	   MemtoReg_EX,
		  
			     input 	   Branch_EX,
			     input 	   MemRead_EX,
			     input 	   MemWrite_EX,
		  
			     input [31:0]  Branch_Dest_EX,

			     input 	   Zero_EX, 
			     input [31:0]  ALU_Result_EX,
			     input 	   Read_Data_2_EX,
			     input [4:0]   Write_Register_EX,

			     
			    
			     input 	   Clk,
			    
			     output reg	   RegWrite_MEM,
			     output reg	   MemtoReg_MEM,
		  
			     output reg	   Branch_MEM,
			     output reg	   MemRead_MEM,
			     output reg	   MemWrite_MEM,
		  
			     output reg[31:0] Branch_Dest_MEM,
			     
			     output reg	   Zero_MEM,
			     output reg[31:0] ALU_Result_MEM,
			     output reg	   Write_Data_MEM,
			     output reg[4:0]  Write_Register_MEM
			     );
   
   always@(posedge Clk)
	begin
	RegWrite_MEM 	<= RegWrite_EX;
	MemtoReg_MEM 	<= MemtoReg_EX;
	Branch_MEM 		<= Branch_EX;
	MemRead_MEM 	<= MemRead_EX;
	MemWrite_MEM 	<= MemWrite_EX;
	Branch_Dest_MEM <= Branch_Dest_EX;
	Zero_MEM			<= Zero_EX;
	ALU_Result_MEM <= ALU_Result_EX;
	Write_Data_MEM <= Read_Data_2_EX;
	Write_Register_MEM <= Write_Register_EX;
	
	end

endmodule // EX_MEM_Pipeline_Stage
