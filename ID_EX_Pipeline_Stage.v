// Instruction decode stage to execution stage pipeline, passing data on positive edge of global clock

module ID_EX_Pipeline_Stage(


			     input 	   RegWrite_ID,
			     input 	   MemtoReg_ID,
		  
			     input 	   Branch_ID,
			     input 	   MemRead_ID,
			     input 	   MemWrite_ID,
		  
			     input 	   RegDst_ID,
			     input [1:0]   ALUOp_ID,
			     input 	   ALUSrc_ID, 

			     input [31:0]  PC_Plus_4_ID,
			    
			     input [31:0]  Read_Data_1_ID,
			     input [31:0]  Read_Data_2_ID,
			    
			     input [31:0]  Sign_Extend_Instruction_ID,

			     input [31:0]  Instruction_ID,

			     output reg 	   RegWrite_EX,
			     output reg 	   MemtoReg_EX,
		  
			     output reg 	   Branch_EX,
			     output reg 	   MemRead_EX,
			     output reg 	   MemWrite_EX,
		  
			     output reg 	   RegDst_EX,
			     output reg [1:0]  ALUOp_EX,
			     output reg 	   ALUSrc_EX, 

			     output reg [31:0] PC_Plus_4_EX,
			    
			     output reg [31:0] Read_Data_1_EX,
			     output reg [31:0] Read_Data_2_EX,
			    
			     output reg [31:0] Sign_Extend_Instruction_EX,

			     output reg [31:0] Instruction_EX,
			    
			    
			     input 	   Clk
			     );
   
	initial 
	begin
		RegWrite_EX 	<= 0;
		MemtoReg_EX 	<= 0;
		
		Branch_EX		<= 0;
		MemRead_EX		<= 0;
		MemWrite_EX		<= 0;
		
		RegDst_EX		<= 0;
		ALUOp_EX			<= 2'd0;
		ALUSrc_EX		<= 0;
		
		PC_Plus_4_EX	<= 32'd0;
		
		Read_Data_1_EX	<= 32'd0;
		Read_Data_2_EX	<= 32'd0;
		
		Sign_Extend_Instruction_EX <= 32'd0;
		
		Instruction_EX	<= 32'd0;
	end
	
   always@(posedge Clk) begin
		RegWrite_EX 	<= RegWrite_ID;
		MemtoReg_EX 	<= MemtoReg_ID;
		
		Branch_EX		<= Branch_ID;
		MemRead_EX		<= MemRead_ID;
		MemWrite_EX		<= MemWrite_ID;
		
		RegDst_EX		<= RegDst_ID;
		ALUOp_EX			<= ALUOp_ID;
		ALUSrc_EX		<= ALUSrc_ID;
		
		PC_Plus_4_EX	<= PC_Plus_4_ID;
		
		Read_Data_1_EX	<= Read_Data_1_ID;
		Read_Data_2_EX	<= Read_Data_2_ID;
		
		Sign_Extend_Instruction_EX <= Sign_Extend_Instruction_ID;
		
		Instruction_EX	<= Instruction_ID;
	end //always

endmodule // ID_EX_Pipeline_Stage






   
   
