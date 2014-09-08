// Module Name: MIPS_Top
// Author: Damien Browne
// Description: This is a template module for use in ECE4074 to help students get started and manage their assignment.
// The connectivity and sub modules described below are based on the architechture presented in "Computer Organization and Design" by Patterson and Hennsey, page 362.
// This does not include advanced structures such as (but not limited to) branch prediction, data forwarding, stalling and pipline flushing.
// The student will decide on the appropriate location of HI and LO registers for multiplication.
// Warning: Placement of these registers (HI and/Or LO) is usually critical to a high clock frequency design, you should spend some time thinkings about the implications of your placement.
// The design assumes a single common clock that drives all syncrhonous components. Variable names are suffixed with the pipeline stage that is their origin. Modules are prefixed with their pipeline stage.
// This is not intended to be used as a complete architectural solution. Add all template files to your project to get started.
// Partial selection of many muti-bit variables will need to be updated manually by the student.
// The architecture presented here will require the executed code to contain many no-ops and hence may be very ineffecient.
// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.
// Advice: Keep it simple, divide and conquer.
// Use the verilog crash course lecture slides.
// Simulate each module as you write them.
// Memory described below is asynchronous, you should use synchronous memory as the FPGAs will then operate faster (See verilog crash course lecture slides).
// Using synchronous memory will mean you will need the memory address/addresses one clock cycle earlier and data may be availiable one clock cycle late. (Hint: A pipline stage delays bits in the same way)


module Mips(
		input Clk, // Global clock
	  // probed output
	  output [31:0]   PC_Plus_4_IF,
	  output [31:0]   Instruction_IF,
	  output [31:0] 	Next_PC_IF,
	  
//	  output [31:0]   Instruction_ID,
//	  output [4:0]		Read_Address_1_ID,
//	  output [4:0]		Read_Address_2_ID,
	  output [31:0]	Read_Data_1_ID,
//	  output [31:0]	Read_Data_2_ID,
//	  output 			RegDst_ID,
	  output	[1:0]		ALUOp_ID,
	  output 			ALUSrc_ID,
	  output				Branch_ID,
	  output				MemRead_ID,
	  output				MemWrite_ID,
//	  output				RegWrite_ID,
	  output				MemtoReg_ID,
//	  output [31:0] 	Sign_Extend_Instruction_ID,
	  output				PCSrc_ID,
	  
	  output [31:0]   Instruction_EX,
	  output [31:0]	ALU_Data_2_EX,
	  output [3:0]		ALU_Control_EX,
	  output [31:0]	ALU_Result_EX,
	  output [31:0]	Branch_Dest_EX,
	  output [4:0]		Write_Register_EX,
	  output 			Zero_EX,
	  
	  output [31:0]	ALU_Result_MEM,
	  output [31:0]	Write_Data_MEM,
	  output [31:0]	Read_Data_MEM,
//	  output				PCSrc_MEM,	//Deleted because moved to ID stage
	  
	  output [31:0]	Read_Data_WB,
	  output [31:0]	ALU_Result_WB,
	  output [31:0]	Write_Data_WB,
//hazard handle	  
	  output [1:0]		Forward_A,
	  output [1:0]		Forward_B,
	  output 			Forward_MEM,
	  output [31:0]	Read_Data_forward_MEM_MEM,
	  output				IF_ID_pipeline_stall,
	  output				pc_stall,
	  output				ID_Control_Noop,
	  output [1:0]		Forward_Reg_Delay,
	  output				Forward_C,
	  output				Forward_D,
	  output	[31:0]	Forward_C_out,
	  output [31:0]	Forward_D_out,
	  output				Zero_ID
		);

   // IF Origin Variables:
		// probed wire [31:0] 	Instruction_IF;		// From IF_Instruction_Memory of IF_Instruction_Memory.v
		// probed wire [31:0] 	Next_PC_IF;		// From IF_PC_Mux of IF_PC_Mux.v
		// probed wire [31:0] 	PC_Plus_4_IF;		// From IF_PC_Add of IF_PC_Add.v
		wire [31:0]		   PC_IF;			// From IF_PC_Reg of IF_PC_Reg.v
   
   // ID Origin Variables:
//		wire [1:0]		ALUOp_ID;		// From ID_Control of ID_Control.v
//		wire				ALUSrc_ID;		// From ID_Control of ID_Control.v
//	   wire				Branch_ID;		// From ID_Control of ID_Control.v
		wire [31:0]	Instruction_ID;		// From IF_ID_Pipeline_Stage of IF_ID_Pipeline_Stage.v
//		wire				MemRead_ID;		// From ID_Control of ID_Control.v
//		wire				MemWrite_ID;		// From ID_Control of ID_Control.v
//		wire				MemtoReg_ID;		// From ID_Control of ID_Control.v
		wire [31:0]	PC_Plus_4_ID;		// From IF_ID_Pipeline_Stage of IF_ID_Pipeline_Stage.v
		wire [4:0]		Read_Address_1_ID;	// To ID_Registers of ID_Registers.v
		wire [4:0]		Read_Address_2_ID;	// To ID_Registers of ID_Registers.v
//		wire [31:0] 	Read_Data_1_ID;		// From ID_Registers of ID_Registers.v
		wire [31:0]		Read_Data_2_ID;		// From ID_Registers of ID_Registers.v
		wire				RegDst_ID;		// From ID_Control of ID_Control.v
		wire				RegWrite_ID;		// From ID_Control of ID_Control.v
		wire [31:0] 	Sign_Extend_Instruction_ID;// From ID_Sign_Extension of ID_Sign_Extension.v
//		wire 				PCSrc_ID;				// From ID_Branch_AND
//		wire [31:0]		Forward_C_out;			// From Forward_C
//		wire [31:0]		Forward_D_out;			// From Forward_D
//		wire 				Zero_ID;

   
   // EX origin variables:
		wire [1:0]		ALUOp_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		wire				ALUSrc_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		// probed wire [3:0]			ALU_Control_EX;		// From EX_ALU_Control of EX_ALU_Control.v
		// probed wire [31:0]		ALU_Data_2_EX;		// From EX_ALU_Mux of EX_ALU_Mux.v
		// probed wire [31:0]		ALU_Result_EX;		// From EX_ALU of EX_ALU.v   
		// probed wire [31:0]		Branch_Dest_EX;		// From EX_PC_Add of EX_PC_Add.v
		wire				Branch_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
		// probed wire [31:0] 		Instruction_EX;		// From ID_EX_Pipeline_Stage of ID_EX_Pipeline_Stage.v
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
		wire [31:0]		Read_Data_forward_A_EX;
		wire [31:0]		Read_Data_forward_B_EX;
		
		//wire [1:0]		Forward_A;
		//wire [1:0]		Forward_B;

   // MEM Origin Variables:
		// probed wire [31:0]		ALU_Result_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire [31:0]		Branch_Dest_MEM;	// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				Branch_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				MemRead_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				MemWrite_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				MemtoReg_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		// probed wire					PCSrc_MEM;		// From MEM_Branch_AND of MEM_Branch_AND.v
		// probed wire [31:0]		Read_Data_MEM;		// From MEM_Data_Memory of MEM_Data_Memory.v
		wire				RegWrite_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		// probed wire [31:0]		Write_Data_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire [4:0]		Write_Register_MEM;	// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire				Zero_MEM;		// From EX_MEM_Pipeline_Stage of EX_MEM_Pipeline_Stage.v
		wire [31:0]		Instruction_MEM;
   // WB Origin Variables:

		// probed wire [31:0]		ALU_Result_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		wire				MemtoReg_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		wire				RegWrite_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		// probed wire [31:0]		Read_Data_WB;		// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		// probed wire [31:0]		Write_Data_WB;		// From WB_MemtoReg_Mux of WB_MemtoReg_Mux.v
		wire [4:0]		Write_Register_WB;	// From MEM_WB_Pipeline_Stage of MEM_WB_Pipeline_Stage.v
		wire [31:0]		Instruction_WB;
//hazard handle	  
//	  wire [1:0]		Forward_A;
//	  wire [1:0]		Forward_B;
//	  wire 			Forward_MEM;
//	  wire [31:0]	Read_Data_forward_MEM_MEM;
//	  wire				IF_ID_pipeline_stall;
//	  wire				pc_stall;

   // IF_PC_Mux
   IF_PC_Mux IF_PC_Mux(
		       // Outputs
		       .Next_PC_IF	(Next_PC_IF[31:0]),
		       // Inputs
		       .PC_Plus_4_IF	(PC_Plus_4_IF[31:0]),
		       .Branch_Dest_MEM	(Branch_Dest_MEM[31:0]),
		       .PCSrc_ID	(PCSrc_ID));
   
   

   // IF_PC_Reg
   IF_PC_Reg IF_PC_Reg(
		       // Outputs
		       .PC_IF		(PC_IF[31:0]),
		       // Inputs
				 .pc_stall	(pc_stall),
		       .Next_PC_IF	(Next_PC_IF[31:0]),
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
					       .Clk		(Clk));
   
   

   // IF_ID_Pipeline_Stage
   IF_ID_Pipeline_Stage IF_ID_Pipeline_Stage(
					     // Outputs
					     .Instruction_ID	(Instruction_ID[31:0]),
					     .PC_Plus_4_ID	(PC_Plus_4_ID),
					     // Inputs
						  .IF_ID_pipeline_stall (IF_ID_pipeline_stall),
					     .Instruction_IF	(Instruction_IF[31:0]),
					     .PC_Plus_4_IF	(PC_Plus_4_IF),
					     .Clk		(Clk));
   
   // ID_Registers

   // TODO by student: Assignment Partial Select from Instruction to Read_Address_1_ID and Read_Address_2_ID
	assign Read_Address_1_ID = Instruction_ID[25:21];
	assign Read_Address_2_ID = Instruction_ID[20:16];
	
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
					.Forward_Reg_Delay  (Forward_Reg_Delay));
   

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
			 .MemRead_ID		(MemRead_ID),
			 .MemWrite_ID		(MemWrite_ID),
			 .RegDst_ID		(RegDst_ID),
			 .ALUOp_ID		(ALUOp_ID[1:0]),
			 .ALUSrc_ID		(ALUSrc_ID),
			 // Inputs
			 .Instruction_ID	(Instruction_ID[31:0]),
			 .ID_Control_Noop	(ID_Control_Noop));
			 
	// ID_Branch_AND
   ID_Branch_AND ID_Branch_AND(
				 // Outputs
				 .PCSrc_ID		(PCSrc_ID),
				 // Inputs
				 .Branch_ID		(Branch_ID),
				 .Zero_ID		(Zero_ID));
				 
				 
	// ID_Comparator
	ID_Comparator ID_Comparator(
				// Outputs
				.Zero_ID		(Zero_ID),
				// Inputs
				.Forward_C_out		(Forward_C_out),
				.Forward_D_out		(Forward_D_out));
				
				
	//Forward_C_mux
	Forward_C_mux Forward_C_mux(
				// Outputs
				.Forward_C_out			(Forward_C_out),
				// Inputs	
				.Forward_C				(Forward_C),
				.ALU_Result_MEM		(ALU_Result_MEM),
				.Read_Data_1_ID		(Read_Data_1_ID)
	);

	//Forward_D_mux
	Forward_D_mux Forward_D_mux(
				// Outputs
				.Forward_D_out			(Forward_D_out),
				// Inputs	
				.Forward_D				(Forward_D),
				.ALU_Result_MEM		(ALU_Result_MEM),
				.Read_Data_2_ID		(Read_Data_2_ID)
	);

	
	
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

   
   // EX_Shift_Left_2
   EX_Shift_Left_2 EX_Shift_Left_2(
				   // Outputs
				   .Instruction_Shift_Left_2_EX(Instruction_Shift_Left_2_EX[31:0]),
				   // Inputs
				   .Sign_Extend_Instruction_EX(Sign_Extend_Instruction_EX[31:0]));
   
   // EX_PC_Add
   EX_PC_Add EX_PC_Add (
			// Outputs
			.Branch_Dest_EX	(Branch_Dest_EX[31:0]),
			// Inputs
			.PC_Plus_4_EX	(PC_Plus_4_EX[31:0]),
			.Instruction_Shift_Left_2_EX(Instruction_Shift_Left_2_EX[31:0]));
   
   

   // EX_ALU_Mux
   EX_ALU_Mux EX_ALU_Mux(
			 // Outputs
			 .ALU_Data_2_EX		(ALU_Data_2_EX[31:0]),
			 // Inputs
			 .Read_Data_forward_B_EX	(Read_Data_forward_B_EX[31:0]),
			 .Sign_Extend_Instruction_EX(Sign_Extend_Instruction_EX[31:0]),
			 .ALUSrc_EX		(ALUSrc_EX));

   // EX_ALU
   EX_ALU EX_ALU(
		 // Outputs
		 .ALU_Result_EX		(ALU_Result_EX[31:0]),
		 .Zero_EX		(Zero_EX),
		 // Inputs
		 .Read_Data_forward_A_EX	(Read_Data_forward_A_EX[31:0]),
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
      
	//	Data_Forwarding_unit
	Data_Forwarding_unit Data_Forwarding_unit(
	// Outputs
	.Forward_A	(Forward_A[1:0]),
	.Forward_B  (Forward_B[1:0]),
	.Forward_MEM (Forward_MEM),
	.pc_stall		(pc_stall),
	.IF_ID_pipeline_stall	(IF_ID_pipeline_stall),
	.ID_Control_Noop			(ID_Control_Noop),
	.Forward_Reg_Delay	(Forward_Reg_Delay),
	.Forward_C				(Forward_C),
	.Forward_D				(Forward_D),
	// Inputs
	 .Instruction_MEM  	(Instruction_MEM),
	 .Instruction_EX		(Instruction_EX),
	 .Instruction_WB		(Instruction_WB),
	 .Instruction_ID		(Instruction_ID),
	 .RegWrite_MEM			(RegWrite_MEM),
	 .RegWrite_WB			(RegWrite_WB),
	 .RegWrite_EX			(RegWrite_EX),
	 .MemWrite_MEM			(MemWrite_MEM),
	 .MemtoReg_WB			(MemtoReg_WB),
	 .MemtoReg_EX			(MemtoReg_EX),
	 .MemRead_EX			(MemRead_EX),
	 .Branch_ID				(Branch_ID)
	);
		
	// Data_forwarding_mux_A
	Data_forwarding_mux_A Data_forwarding_mux_A(
	// Outputs
	.Read_Data_forward_A_EX	(Read_Data_forward_A_EX[31:0]),

	// Inputs
	.Forward_A			(Forward_A[1:0]),
	.Write_Data_WB		(Write_Data_WB[31:0]),
	.ALU_Result_MEM	(ALU_Result_MEM[31:0]),
	.Read_Data_1_EX	(Read_Data_1_EX[31:0])
	);
	
	// Data_forwarding_mux_B
	Data_forwarding_mux_B Data_forwarding_mux_B(
	// Outputs
	.Read_Data_forward_B_EX	(Read_Data_forward_B_EX[31:0]),

	// Inputs
	.Forward_B			(Forward_B[1:0]),
	.Write_Data_WB		(Write_Data_WB[31:0]),
	.ALU_Result_MEM	(ALU_Result_MEM[31:0]),
	.Read_Data_2_EX	(Read_Data_2_EX[31:0])
	);
	
   // EX_MEM_Pipeline_Stage

   EX_MEM_Pipeline_Stage EX_MEM_Pipeline_Stage(
					       // Outputs
					       .RegWrite_MEM	(RegWrite_MEM),
					       .MemtoReg_MEM	(MemtoReg_MEM),
					       .Branch_MEM	(Branch_MEM),
					       .MemRead_MEM	(MemRead_MEM),
					       .MemWrite_MEM	(MemWrite_MEM),
					       .Branch_Dest_MEM	(Branch_Dest_MEM[31:0]),
					       .Zero_MEM	(Zero_MEM),
					       .ALU_Result_MEM	(ALU_Result_MEM[31:0]),
					       .Write_Data_MEM	(Write_Data_MEM),
					       .Write_Register_MEM(Write_Register_MEM[4:0]),
						   .Instruction_MEM	(Instruction_MEM[31:0]),
					       // Inputs
					       .RegWrite_EX	(RegWrite_EX),
					       .MemtoReg_EX	(MemtoReg_EX),
					       .Branch_EX	(Branch_EX),
					       .MemRead_EX	(MemRead_EX),
					       .MemWrite_EX	(MemWrite_EX),
					       .Branch_Dest_EX	(Branch_Dest_EX[31:0]),
					       .Zero_EX		(Zero_EX),
					       .ALU_Result_EX	(ALU_Result_EX[31:0]),
					       .Read_Data_forward_B_EX	(Read_Data_forward_B_EX),
					       .Write_Register_EX(Write_Register_EX[4:0]),
						   .Instruction_EX	(Instruction_EX[31:0]),
					       .Clk		(Clk));
   

//   // MEM_Branch_AND			// Deleted because moved to ID stage
//   MEM_Branch_AND MEM_Branch_AND(
//				 // Outputs
//				 .PCSrc_MEM		(PCSrc_MEM),
//				 // Inputs
//				 .Branch_MEM		(Branch_MEM),
//				 .Zero_MEM		(Zero_MEM));
   

   // MEM_Data_Memory
   MEM_Data_Memory MEM_Data_Memory(
				   // Outputs
				   .Read_Data_MEM	(Read_Data_MEM[31:0]),
				   // Inputs
				   .ALU_Result_MEM	(ALU_Result_MEM[31:0]),
				   .Read_Data_forward_MEM_MEM	(Read_Data_forward_MEM_MEM[31:0]),
				   .MemRead_MEM		(MemRead_MEM),
				   .MemWrite_MEM	(MemWrite_MEM),
				   .Clk			(Clk));
   
   // Data_forwarding_mux_MEM
	Data_forwarding_mux_MEM Data_forwarding_mux_MEM(
					//inputs
					.Forward_MEM			(Forward_MEM),
					.Write_Data_MEM		(Write_Data_MEM[31:0]),
					.Read_Data_WB		(Read_Data_WB[31:0]),
					//outputs
					.Read_Data_forward_MEM_MEM	(Read_Data_forward_MEM_MEM)
	
	);

   // MEM_WB_Pipeline_Stage
   MEM_WB_Pipeline_Stage MEM_WB_Pipeline_Stage(
					       // Outputs
					       .RegWrite_WB	(RegWrite_WB),
					       .MemtoReg_WB	(MemtoReg_WB),
					       .Read_Data_WB	(Read_Data_WB),
					       .ALU_Result_WB	(ALU_Result_WB[31:0]),
					       .Write_Register_WB(Write_Register_WB[4:0]),
						   .Instruction_WB	(Instruction_WB[31:0]),
					       // Inputs
					       .Clk		(Clk),
					       .RegWrite_MEM	(RegWrite_MEM),
					       .MemtoReg_MEM	(MemtoReg_MEM),
					       .Read_Data_MEM	(Read_Data_MEM),
					       .ALU_Result_MEM	(ALU_Result_MEM[31:0]),
						   .Instruction_MEM	(Instruction_MEM[31:0]),
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
