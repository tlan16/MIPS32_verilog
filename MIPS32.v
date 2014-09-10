// Module Name: MIPS32
// Author: Tianxiang Lan
// Date: 12 Sept 2014
// Lecturer: Damien Browne
//	Description: This is a five stage pipelined 32 bit Mips. 
//	Instruction set:
//		R type: add, sub, and, or, slt, mul
//		I type: lw, sw, beq
//		J type: j
//	Hazard handled: Data hazard, Mem-to-mem copy, Load-use hazard, branch hazard, jump hazard
//	Functional aim: Successfully and efficiently perform 15-by-15 matrix integer multiplication

//	This is the top module of MIPS32

module MIPS32(
		input CLOCK_50, // Global clock
		
	  // probed output
	  output [31:0]   PC_Plus_4_IF,
	  output [31:0]   Instruction_IF,
	  output [31:0] 	Next_PC_IF,
	  output				PC_Enable,
	  
	  //output [31:0]   Instruction_ID,
	  //output [4:0]		Read_Address_1_ID,
	  //output [4:0]		Read_Address_2_ID,
	  //output [31:0]	Read_Data_1_ID,
	  //output [31:0]	Read_Data_2_ID,
	  output 			RegDst_ID,
	  output	[1:0]		ALUOp_ID,
	  output 			ALUSrc_ID,
	  output				Branch_ID,
	  output				MemRead_ID,
	  output				MemWrite_ID,
	  output				RegWrite_ID,
	  output				MemtoReg_ID,
	  output [31:0] 	Sign_Extend_Instruction_ID,
	  output				ID_Control_NOP,
	  output [1:0]		ID_Register_Write_to_Read,
	  output				Comparetor_ID,
	  
	  output [1:0]		ForwardA_EX,
	  output [1:0]		ForwardB_EX,
	  output				Forward_Mem_to_Mem,
	  output				ForwardC,
	  output				ForwardD,
	  output [31:0]	ALU_Data_2_EX,
	  output [3:0]		ALU_Control_EX,
	  output [31:0]	ALU_Result_EX,
	  output [31:0]	Branch_Dest_EX,
	  output [4:0]		Write_Register_EX,
	  output 			Zero_EX,
	  
	  //output [31:0]	ALU_Result_MEM,
	  //output [31:0]	Write_Data_MEM,
	  output [31:0]	Read_Data_MEM,
	  output				PCSrc_MEM,
	  output [31:0]	Write_Data_MUX_MEM,
	  
	  //output [31:0]	Read_Data_WB,
	  output [31:0]	ALU_Result_WB
	  //output [31:0]	Write_Data_WB,
	  //output [4:0]		Write_Register_WB
	  
		);
wire Clk;
assign Clk = CLOCK_50;
   // IF Origin Variables:
		// probed wire [31:0] 	Instruction_IF;		// From IF_Instruction_Memory of IF_Instruction_Memory.v
		// probed wire [31:0] 	Next_PC_IF;		// From IF_PC_Mux of IF_PC_Mux.v
		// probed wire [31:0] 	PC_Plus_4_IF;		// From IF_PC_Add of IF_PC_Add.v
		wire [31:0]		   PC_IF;			// From IF_PC_Reg of IF_PC_Reg.v
		// probed wire				PC_Enable;
		wire					IF_ID_Pipeline_Enable;
   
   // ID Origin Variables:
		// probed wire				ID_Control_NOP;
		// probed wire	[1:0]		ID_Register_Write_to_Read;
		// probed wire				Comparetor_ID;
		// probed wire [1:0]		ALUOp_ID;		// From ID_Control of ID_Control.v
		// probed wire				ALUSrc_ID;		// From ID_Control of ID_Control.v
		// probed wire				Branch_ID;		// From ID_Control of ID_Control.v
		wire [31:0]	Instruction_ID;		// From IF_ID_Pipeline_Stage of IF_ID_Pipeline_Stage.v
		// probed wire				MemRead_ID;		// From ID_Control of ID_Control.v
		// probed wire				MemWrite_ID;		// From ID_Control of ID_Control.v
		// probed wire				MemtoReg_ID;		// From ID_Control of ID_Control.v
		wire [31:0]	PC_Plus_4_ID;		// From IF_ID_Pipeline_Stage of IF_ID_Pipeline_Stage.v
		wire [4:0]		Read_Address_1_ID;	// To ID_Registers of ID_Registers.v
		wire [4:0]		Read_Address_2_ID;	// To ID_Registers of ID_Registers.v
		wire [31:0] 	Read_Data_1_ID;		// From ID_Registers of ID_Registers.v
		wire [31:0]		Read_Data_2_ID;		// From ID_Registers of ID_Registers.v
		// probed wire				RegDst_ID;		// From ID_Control of ID_Control.v
		// probed wire				RegWrite_ID;		// From ID_Control of ID_Control.v
		// probed wire [31:0] 	Sign_Extend_Instruction_ID;// From ID_Sign_Extension of ID_Sign_Extension.v
		wire [31:0] Jump_Dest_ID;
		wire			Jump_Control_ID;
   // EX origin variables:
		// probed wire [1:0]		ForwardA_EX;
		// probed wire [1:0]		ForwardB_EX;
		// probed wire				Forward_Mem_to_Mem;
		// probed wire				ForwardC;
		// probed wire				ForwardD;
		wire [31:0]	Read_Data_1_Mux_EX;
		wire [31:0]	Read_Data_2_Mux_EX;
		wire [1:0]		ALUOp_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire				ALUSrc_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		// probed wire [3:0]			ALU_Control_EX;		// From EX_ALU_Control of EX_ALU_Control.v
		// probed wire [31:0]		ALU_Data_2_EX;		// From EX_ALU_Mux of EX_ALU_Mux.v
		// probed wire [31:0]		ALU_Result_EX;		// From EX_ALU of EX_ALU.v   
		// probed wire [31:0]		Branch_Dest_EX;		// From EX_PC_Add of EX_PC_Add.v
		wire				Branch_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire [31:0] 		Instruction_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire [31:0]		Instruction_Shift_Left_2_EX;// From EX_Shift_Left_2 of EX_Shift_Left_2.v
		wire				MemRead_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire				MemWrite_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire				MemtoReg_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire [31:0]		PC_Plus_4_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire [31:0]		Read_Data_1_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire [31:0]		Read_Data_2_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire				RegDst_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire				RegWrite_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire [31:0] 	Sign_Extend_Instruction_EX;// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v   
		// probed wire [4:0]			Write_Register_EX;	// To EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		// probed wire					Zero_EX;		// From EX_ALU of EX_ALU.v

   // MEM Origin Variables:
		//probed wire [31:0]		Write_Data_MUX_MEM;
		wire [31:0]		Instruction_MEM;
		wire [31:0]		ALU_Result_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire [31:0]		Branch_Dest_MEM;	// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				Branch_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				MemRead_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				MemWrite_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				MemtoReg_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		// probed wire					PCSrc_MEM;		// From MEM_Branch_AND of MEM_Branch_AND.v
		// probed wire [31:0]		Read_Data_MEM;		// From MEM_Data_Memory of MEM_Data_Memory.v
		wire				RegWrite_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire [31:0]		Write_Data_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire [4:0]		Write_Register_MEM;	// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				Zero_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v

   // WB Origin Variables:
		wire [31:0]		Instruction_WB;
		// probed wire [31:0]		ALU_Result_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		wire				MemtoReg_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		wire				RegWrite_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		wire [31:0]		Read_Data_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		wire [31:0]		Write_Data_WB;		// From WB_MemtoReg_Mux of WB_MemtoReg_Mux.v
		wire [4:0]		Write_Register_WB;	// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v

   

   // IF_PC_Mux
   IF_PC_Mux IF_PC_Mux(
		       // Outputs
		       .Next_PC_IF	(Next_PC_IF[31:0]),
		       // Inputs
		       .PC_Plus_4_IF	(PC_Plus_4_IF[31:0]),
		       .Branch_Dest_MEM	(Branch_Dest_EX[31:0]),
				 .Jump_Dest_ID(Jump_Dest_ID[31:0]),
		       .PCSrc_MEM	(PCSrc_MEM),
				 .Jump_Control_ID(Jump_Control_ID));
   
   

   // IF_PC_Reg
   IF_PC_Reg IF_PC_Reg(
		       // Outputs
		       .PC_IF		(PC_IF[31:0]),
		       // Inputs
		       .Next_PC_IF	(Next_PC_IF[31:0]),
				 .PC_Enable		(PC_Enable),
		       .Clk		(Clk));
   

   // IF_PC_Add

   IF_PC_Add IF_PC_Add(
		       // Outputs
		       .PC_Plus_4_IF	(PC_Plus_4_IF[31:0]),
		       // Inputs
		       .PC_IF		(PC_IF[31:0]));
   
   

   // IF_Instruction_Memory
   IF_Instruction_Memory IF_Instruction_Memory(
					       // Outputs
					       .Instruction_IF	(Instruction_IF[31:0]),
					       // Inputs
					       .PC_IF		(PC_IF[31:0]),
							 .Jump_Control_ID(Jump_Control_ID),
							 .IF_Flush	(PCSrc_MEM),);
   
   

   // IF_ID_Pipeline_Stage
   IF_ID_Pipeline_Stage IF_ID_Pipeline_Stage(
					     // Outputs
					     .Instruction_ID	(Instruction_ID[31:0]),
					     .PC_Plus_4_ID	(PC_Plus_4_ID),
					     // Inputs
					     .Instruction_IF	(Instruction_IF[31:0]),
					     .PC_Plus_4_IF	(PC_Plus_4_IF),
						  .IF_ID_Pipeline_Enable (IF_ID_Pipeline_Enable),
					     .Clk		(Clk));
   
   // ID_Registers

   // TODO by student: Assignment Partial Select from Instruction to Read_Address_1_ID and Read_Address_2_ID
	assign Read_Address_1_ID = Instruction_ID[25:21];
	assign Read_Address_2_ID = Instruction_ID[20:16];
	
	ID_Jump ID_Jump(
					// Outputs
					.Jump_Dest_ID(Jump_Dest_ID),
					// Inputs
					.Instruction_ID(Instruction_ID[31:0]),
					.PC_Plus_4_ID(PC_Plus_4_ID));
	
	ID_Read_data_Mux ID_Read_data_Mux(
					// Outputs
					.Comparetor_ID(Comparetor_ID),
					// Inputs
					.Read_Data_1_ID(Read_Data_1_ID[31:0]),
					.Read_Data_2_ID(Read_Data_2_ID[31:0]),
					.Write_Data_WB(Write_Data_WB[31:0]),
					.Forward_C_ID(ForwardC),
					.Forward_D_ID(ForwardD));
	
   ID_Registers ID_Registers (
			      // Outputs
			      .Read_Data_1_ID	(Read_Data_1_ID[31:0]),
			      .Read_Data_2_ID	(Read_Data_2_ID[31:0]),
			      // Inputs
			      .Read_Address_1_ID(Read_Address_1_ID),
			      .Read_Address_2_ID(Read_Address_2_ID),
			      .Write_Register_WB(Write_Register_WB[4:0]),
			      .Write_Data_WB	(Write_Data_WB[31:0]),
			      .Clk		(Clk),
			      .RegWrite_WB	(RegWrite_WB),
					.ID_Register_Write_to_Read(ID_Register_Write_to_Read[1:0]));
   

   // ID_Sign_Extension
   ID_Sign_Extension ID_Sign_Extension(
				       // Outputs
				       .Sign_Extend_Instruction_ID(Sign_Extend_Instruction_ID[31:0]),
				       // Inputs
				       .Instruction_ID	(Instruction_ID[15:0]));
   

   // ID_Control
   ID_Control ID_Control(
			 // Outputs
			 .RegWrite_ID		(RegWrite_ID),
			 .MemtoReg_ID		(MemtoReg_ID),
			 .Branch_ID		(Branch_ID),
			 .Jump_Control_ID(Jump_Control_ID),
			 .MemRead_ID		(MemRead_ID),
			 .MemWrite_ID		(MemWrite_ID),
			 .RegDst_ID		(RegDst_ID),
			 .ALUOp_ID		(ALUOp_ID[1:0]),
			 .ALUSrc_ID		(ALUSrc_ID),
			 // Inputs
			 .Instruction_ID	(Instruction_ID[31:26]),
			 .ID_Control_NOP  (ID_Control_NOP));

   // ID_EX_Pipeline_Stage

   ID_EX_Pipeline_Stage ID_EX_Pipeline_Stage(
		  // Outputs
		  .RegWrite_EX	(RegWrite_EX),
		  .MemtoReg_EX	(MemtoReg_EX),
		  .Branch_EX		(Branch_EX),
		  .MemRead_EX	(MemRead_EX),
		  .MemWrite_EX	(MemWrite_EX),
		  .RegDst_EX		(RegDst_EX),
		  .ALUOp_EX		(ALUOp_EX[1:0]),
		  .ALUSrc_EX		(ALUSrc_EX),
		  .PC_Plus_4_EX	(PC_Plus_4_EX[31:0]),
		  .Read_Data_1_EX	(Read_Data_1_EX[31:0]),
		  .Read_Data_2_EX	(Read_Data_2_EX[31:0]),
		  .Sign_Extend_Instruction_EX(Sign_Extend_Instruction_EX[31:0]),
		  .Instruction_EX	(Instruction_EX[31:0]),
		  // Inputs
		  .RegWrite_ID	(RegWrite_ID),
		  .MemtoReg_ID	(MemtoReg_ID),
		  .Branch_ID		(Branch_ID),
		  .MemRead_ID	(MemRead_ID),
		  .MemWrite_ID	(MemWrite_ID),
		  .RegDst_ID		(RegDst_ID),
		  .ALUOp_ID		(ALUOp_ID[1:0]),
		  .ALUSrc_ID		(ALUSrc_ID),
		  .PC_Plus_4_ID	(PC_Plus_4_ID[31:0]),
		  .Read_Data_1_ID	(Read_Data_1_ID[31:0]),
		  .Read_Data_2_ID	(Read_Data_2_ID[31:0]),
		  .Sign_Extend_Instruction_ID(Sign_Extend_Instruction_ID[31:0]),
		  .Instruction_ID	(Instruction_ID[31:0]),
		  .Clk		(Clk));

	// EX_Forward_Unit
	EX_Forward_Unit EX_Forward_Unit(
			// Outputs
			.ForwardA_EX(ForwardA_EX[1:0]),
			.ForwardB_EX(ForwardB_EX[1:0]),
			.Forward_Mem_to_Mem(Forward_Mem_to_Mem),
			.PC_Enable(PC_Enable),
			.IF_ID_Pipeline_Enable(IF_ID_Pipeline_Enable),
			.ID_Control_NOP(ID_Control_NOP),
			.ID_Register_Write_to_Read(ID_Register_Write_to_Read[1:0]),
			.ForwardC(ForwardC),
			.ForwardD(ForwardD),
			// Inputs
			.IF_ID_Reg_Rs(Instruction_ID[25:21]),
			.IF_ID_Reg_Rt(Instruction_ID[20:16]),
			.ID_Branch(Branch_ID),
			.ID_EX_MemRead(MemRead_EX),
			.ID_EX_RegWrite(RegWrite_EX),
			.ID_EX_Reg_Rs(Instruction_EX[25:21]),
			.ID_EX_Reg_Rt(Instruction_EX[20:16]),
			.ID_EX_Reg_Rd(Instruction_EX[15:11]),
			.EX_MEM_RegWrite(RegWrite_MEM),
			.EX_MEM_MemWrite(MemWrite_MEM),
			.ID_EX_MEMtoReg(MemtoReg_EX),
			.EX_MEM_Reg_Rs(Instruction_MEM[25:21]),
			.EX_MEM_Reg_Rt(Instruction_MEM[20:16]),
			.EX_MEM_Reg_Rd(Instruction_MEM[15:11]),
			.MEM_WB_RegWrite(RegWrite_WB),
			.MEM_WB_MemtoReg(MemtoReg_WB),
			.MEM_WB_Reg_Rt(Instruction_WB[20:16]),
			.MEM_WB_Reg_Rd(Instruction_WB[15:11]));
						  
   // EX_Forward_A_MUX
	EX_Forward_A EX_Forward_A(
			// Outputs
			.Read_Data_1_Mux_EX(Read_Data_1_Mux_EX[31:0]),
			// Inputs
			.Read_Data_1_EX(Read_Data_1_EX[31:0]),
			.Write_Data_WB(Write_Data_WB[31:0]),
			.ALU_Result_MEM(ALU_Result_MEM[31:0]),
			.ForwardA_EX(ForwardA_EX[1:0]));
   // EX_Forward_B_MUX using dummy of A
	EX_Forward_A EX_Forward_B(
			// Outputs
			.Read_Data_1_Mux_EX(Read_Data_2_Mux_EX[31:0]),
			// Inputs
			.Read_Data_1_EX(Read_Data_2_EX[31:0]),
			.Write_Data_WB(Write_Data_WB[31:0]),
			.ALU_Result_MEM(ALU_Result_MEM[31:0]),
			.ForwardA_EX(ForwardB_EX[1:0]));
/*	
   // EX_Forward_B_MUX
	EX_Forward_B EX_Forward_B(
			// Outputs
			.Read_Data_2_Mux_EX(Read_Data_2_Mux_EX[31:0]),
			// Inputs
			.Read_Data_2_EX(Read_Data_2_EX[31:0]),
			.Write_Data_WB(Write_Data_WB[31:0]),
			.ALU_Result_MEM(ALU_Result_MEM[31:0]),
			.ForwardB_EX(ForwardB_EX[1:0]));
*/
   // EX_Shift_Left_2
   EX_Shift_Left_2 EX_Shift_Left_2(
			// Outputs
			.Instruction_Shift_Left_2_EX(Instruction_Shift_Left_2_EX[31:0]),
			// Inputs
			.Sign_Extend_Instruction_EX(Sign_Extend_Instruction_ID[31:0]));

   // EX_PC_Add
   EX_PC_Add EX_PC_Add (
			// Outputs
			.Branch_Dest_EX	(Branch_Dest_EX[31:0]),
			// Inputs
			.PC_Plus_4_EX	(PC_Plus_4_ID[31:0]),
			.Instruction_Shift_Left_2_EX(Instruction_Shift_Left_2_EX[31:0]));
   
   

   // EX_ALU_Mux
   EX_ALU_Mux EX_ALU_Mux(
			 // Outputs
			 .ALU_Data_2_EX		(ALU_Data_2_EX[31:0]),
			 // Inputs
			 .Read_Data_2_EX	(Read_Data_2_Mux_EX[31:0]),
			 .Sign_Extend_Instruction_EX(Sign_Extend_Instruction_EX[31:0]),
			 .ALUSrc_EX		(ALUSrc_EX));

   // EX_ALU
   EX_ALU EX_ALU(
		 // Outputs
		 .ALU_Result_EX		(ALU_Result_EX[31:0]),
		 .Zero_EX		(Zero_EX),
		 // Inputs
		 .Read_Data_1_EX	(Read_Data_1_Mux_EX[31:0]),
		 .ALU_Data_2_EX		(ALU_Data_2_EX[31:0]),
		 .ALU_Control_EX	(ALU_Control_EX[3:0]));
   

   // EX_ALU_Control
   EX_ALU_Control EX_ALU_Control(
				 // Outputs
				 .ALU_Control_EX	(ALU_Control_EX[3:0]),
				 // Inputs
				 .Sign_Extend_Instruction_EX(Sign_Extend_Instruction_EX[5:0]),
				 .ALUOp_EX		(ALUOp_EX[1:0]));
   
   

   // EX_Dest_Mux
   EX_Dest_Mux EX_Dest_Mux(
			   // Outputs
			   .Write_Register_EX	(Write_Register_EX[4:0]),
			   // Inputs
			   .Instruction_EX	(Instruction_EX[20:0]),
			   .RegDst_EX		(RegDst_EX));
      

   // EX_MEM_Pipeline_Stage

   EX_MEM_Pipeline_Stage EX_MEM_Pipeline_Stage(
					       // Outputs
							 .Instruction_MEM (Instruction_MEM),
					       .RegWrite_MEM	(RegWrite_MEM),
					       .MemtoReg_MEM	(MemtoReg_MEM),
					       .Branch_MEM	(Branch_MEM),
					       .MemRead_MEM	(MemRead_MEM),
					       .MemWrite_MEM	(MemWrite_MEM),
					       //.Branch_Dest_MEM	(Branch_Dest_MEM[31:0]),
					       .Zero_MEM	(Zero_MEM),
					       .ALU_Result_MEM	(ALU_Result_MEM[31:0]),
					       .Write_Data_MEM	(Write_Data_MEM),
					       .Write_Register_MEM(Write_Register_MEM[4:0]),
					       // Inputs
							 .Instruction_EX (Instruction_EX[31:0]),
					       .RegWrite_EX	(RegWrite_EX),
					       .MemtoReg_EX	(MemtoReg_EX),
					       .Branch_EX	(Branch_EX),
					       .MemRead_EX	(MemRead_EX),
					       .MemWrite_EX	(MemWrite_EX),
					       //.Branch_Dest_EX	(Branch_Dest_EX[31:0]),
					       .Zero_EX		(Zero_EX),
					       .ALU_Result_EX	(ALU_Result_EX[31:0]),
					       .Read_Data_2_EX	(Read_Data_2_EX),
					       .Write_Register_EX(Write_Register_EX[4:0]),
					       .Clk		(Clk));
   

   // MEM_Branch_AND
	MEM_to_MEM_Forward MEM_to_MEM_Forward(
				// Outputs
				.Write_Data_MUX_MEM(Write_Data_MUX_MEM[31:0]),
				// Inputs
				.Write_Data_MEM(Write_Data_MEM[31:0]),
				.Read_Data_WB(Read_Data_WB[31:0]),
				.Forward_Mem_to_Mem(Forward_Mem_to_Mem));
	
   MEM_Branch_AND MEM_Branch_AND(
				 // Outputs
				 .PCSrc_MEM		(PCSrc_MEM),
				 // Inputs
				 .Branch_MEM		(Branch_ID),
				 .Zero_MEM		(Comparetor_ID));
   

   // MEM_Data_Memory
   MEM_Data_Memory MEM_Data_Memory(
				   // Outputs
				   .Read_Data_MEM	(Read_Data_MEM[31:0]),
				   // Inputs
				   .ALU_Result_MEM	(ALU_Result_MEM[31:0]),
				   .Write_Data_MEM	(Write_Data_MUX_MEM[31:0]),
				   .MemRead_MEM		(MemRead_MEM),
				   .MemWrite_MEM	(MemWrite_MEM),
				   .Clk			(Clk));
   
   

   // MEM_WB_Pipeline_Stage
   MEM_WB_Pipeline_Stage MEM_WB_Pipeline_Stage(
					       // Outputs
							 .Instruction_WB (Instruction_WB[31:0]),
					       .RegWrite_WB	(RegWrite_WB),
					       .MemtoReg_WB	(MemtoReg_WB),
					       .Read_Data_WB	(Read_Data_WB),
					       .ALU_Result_WB	(ALU_Result_WB[31:0]),
					       .Write_Register_WB(Write_Register_WB[4:0]),
					       // Inputs
							 .Instruction_MEM (Instruction_MEM[31:0]),
					       .Clk		(Clk),
					       .RegWrite_MEM	(RegWrite_MEM),
					       .MemtoReg_MEM	(MemtoReg_MEM),
					       .Read_Data_MEM	(Read_Data_MEM),
					       .ALU_Result_MEM	(ALU_Result_MEM[31:0]),
					       .Write_Register_MEM(Write_Register_MEM[4:0]));

   // WB_MemtoReg_Mux
   WB_MemtoReg_Mux WB_MemtoReg_Mux(
				   // Outputs
				   .Write_Data_WB	(Write_Data_WB[31:0]),
				   // Inputs
				   .ALU_Result_WB	(ALU_Result_WB[31:0]),
				   .Read_Data_WB	(Read_Data_WB),
				   .MemtoReg_WB		(MemtoReg_WB));
   

endmodule // MIPS_Top
