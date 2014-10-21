//Forwarding_unit and hazard detection unit
//Forward_A and Forward_B is used to handle data hazard connected to data forwarding mux a and b
//Forward_MEM is use to handle mem to mem copies hazard connected to data forwarding mux mem
//IF_ID_pipeline_stall and pc_stall is used to stall the pipeline when load use hazard and ID branch hazard occure
//IF_ID_pipeline_stall and pc_stall is connected to IF_PC_Reg and IF_ID_Pipeline_Stage
//ID_Control_Noop is use when stall occure and it is connected to  ID_Control
//Forward_Reg_Delay is used to handle the clock delay of register write
//Forward_Reg_Delay is connected to ID_Registers
//Forward_C and Forward_D is used to handle Branch control Hazard

module Data_Forwarding_unit(
				input RegWrite_MEM,
				input RegWrite_WB,
				input RegWrite_EX,
				input [31:0]Instruction_EX,
				input [31:0]Instruction_MEM,
				input [31:0]Instruction_WB,
				input [31:0]Instruction_ID,
				input MemtoReg_WB,
				input MemtoReg_EX,
				input MemWrite_MEM,
				input MemRead_EX,
				input Branch_ID,
				input	PCSrc_ID,

				output reg[1:0] 	Forward_A,	//Data hazard A
				output reg[1:0] 	Forward_B,	//Data hazard B
				output reg		 	Forward_MEM, //Mem to Mem copy hazard
				output reg			IF_ID_pipeline_stall,	//To stall the instruction
				output reg			pc_stall,						//To stall the pc
				output reg			ID_Control_Noop,			//Noop for stalling
				output reg[1:0]	Forward_Reg_Delay,			//Control the mux for the write delay at Load use data hazard
				output 			Forward_C,					//ID branch forwarding
				output 			Forward_D					//ID branch forwarding

);
wire [4:0]IF_ID_Rd;
wire [4:0]IF_ID_Rt;
wire [4:0]IF_ID_Rs;
wire [4:0]EX_MEM_Rd;
wire [4:0]EX_MEM_Rt;
wire [4:0]EX_MEM_Rs;
wire [4:0]ID_EX_Rd;
wire [4:0]ID_EX_Rt;
wire [4:0]ID_EX_Rs;
wire [4:0]MEM_WB_Rd;
wire [4:0]MEM_WB_Rt;
wire [4:0]MEM_WB_Rs;

assign  IF_ID_Rd[4:0] = Instruction_ID[15:11];
assign  IF_ID_Rt[4:0] = Instruction_ID[20:16];
assign  IF_ID_Rs[4:0] = Instruction_ID[25:21];
assign  EX_MEM_Rd[4:0] = Instruction_MEM[15:11];
assign  EX_MEM_Rt[4:0] = Instruction_MEM[20:16];
assign  EX_MEM_Rs[4:0] = Instruction_MEM[25:21];
assign  ID_EX_Rd[4:0] = Instruction_EX[15:11];
assign  ID_EX_Rt[4:0] = Instruction_EX[20:16];
assign  ID_EX_Rs[4:0] = Instruction_EX[25:21];
assign  MEM_WB_Rd[4:0] = Instruction_WB[15:11];
assign  MEM_WB_Rt[4:0] = Instruction_WB[20:16];
assign  MEM_WB_Rs[4:0] = Instruction_WB[25:21];

initial	begin

	Forward_A <= 2'b00;
	Forward_B <= 2'b00;
	Forward_MEM <= 1'b0;
	IF_ID_pipeline_stall <= 1'b0;
	pc_stall <= 1'b0;
	ID_Control_Noop <= 1'b0;
	Forward_Reg_Delay <= 2'b00;

end

//ID Branch Forwarding Issue
assign Forward_C = (Branch_ID && RegWrite_MEM && (EX_MEM_Rd != 0) && (EX_MEM_Rd == IF_ID_Rs));
assign Forward_D = (Branch_ID && RegWrite_MEM && (EX_MEM_Rd != 0) && (EX_MEM_Rd == IF_ID_Rt));







always@(*) begin
// Forward_A
	if((RegWrite_MEM) && (EX_MEM_Rd != 5'b00000) && (EX_MEM_Rd == ID_EX_Rs))begin//EX_Forward_Unit
		Forward_A <= 2'b10;
		end
	else if (((RegWrite_WB) && (MEM_WB_Rd != 5'b00000) && (EX_MEM_Rd != ID_EX_Rs) && (MEM_WB_Rd == ID_EX_Rs))
	||((MemtoReg_WB) && (MEM_WB_Rt == ID_EX_Rs)))begin	//MEM_Forward_Unit
		Forward_A <= 2'b01;
		end

	else begin
	Forward_A <= 2'b00;
	end
	
//Forward_B
	if((RegWrite_MEM) && (EX_MEM_Rd != 5'b00000) && (EX_MEM_Rd == ID_EX_Rt))begin //EX_Forward_Unit
		Forward_B <= 2'b10;
		end
	else if (((RegWrite_WB) && (MEM_WB_Rd != 5'b00000) && (EX_MEM_Rd != ID_EX_Rt) && (MEM_WB_Rd == ID_EX_Rt))
	|| ((MemtoReg_WB) && (MEM_WB_Rt == ID_EX_Rt)))begin	//MEM_Forward_Unit
		Forward_B <= 2'b01;
		end
		
	else begin
	Forward_B <= 2'b00;
	end
	
//Mem to Mem copy hazard handle
	if((MemtoReg_WB) && (MemWrite_MEM) && (MEM_WB_Rt == EX_MEM_Rt))
	begin
	Forward_MEM <= 1'b1;
	end
	else begin
	Forward_MEM <= 1'b0;
	end

//ID hazard detection unit
	if(((MemRead_EX) && ((ID_EX_Rt == IF_ID_Rs) || (ID_EX_Rt == IF_ID_Rt))) // Handle Load-use hazard
	|| ((Branch_ID) &&  (RegWrite_EX)/* && (!MemtoReg_EX)*/ && ((ID_EX_Rd == IF_ID_Rs) || (ID_EX_Rd == IF_ID_Rt)))) // Handle ID branch forwarding Rtype then bne
	begin
	pc_stall <= 1'b1;
	IF_ID_pipeline_stall <= 1'b1;
	ID_Control_Noop <= 1'b1;
	end
	else begin
	pc_stall <= 1'b0;
	IF_ID_pipeline_stall <= 1'b0;
	ID_Control_Noop	<= 1'b0;
	end

	
//Forward_Reg_Delay
	if(MemtoReg_WB)begin // For lw delay
			if (MEM_WB_Rt == IF_ID_Rt)
			begin
			Forward_Reg_Delay <= 2'b10;		//ReadData2 need a push
			end
			else if(MEM_WB_Rt == IF_ID_Rs)
			begin
			Forward_Reg_Delay <= 2'b01;		//ReadData1 need a push
			end
			else 
			begin
			Forward_Reg_Delay <= 2'b11;	//Don't know why the system don't work with 00
			end
	end		//end MemtoReg_WB
	
	else if(RegWrite_WB & !MemtoReg_WB)begin	//For rtype delay
			if (MEM_WB_Rd == IF_ID_Rt)
			begin
			Forward_Reg_Delay <= 2'b10;		//ReadData2 need a push
			end
			else if(MEM_WB_Rd == IF_ID_Rs)
			begin
			Forward_Reg_Delay <= 2'b01;		//ReadData1 need a push
			end
			else 
			begin
			Forward_Reg_Delay <= 2'b11;	//Don't know why the system don't work with 00
			end
	end	//end rtype delay

	else 
	begin
	Forward_Reg_Delay <= 2'b00;
	end	//end else



end //always




endmodule








