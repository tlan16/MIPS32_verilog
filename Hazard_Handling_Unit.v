// ForwardA_EX and ForwardB_EX:  handles data hazard, they forwards ALU_Result_MEM to mux before ALU if needed, which controls the data been feed into ALU.
// Forward_Mem_to_Mem			:  handles mem to mem copy hazard, it forwards Read_Data_WB to Write_Data_MUX_MEM if needed, which controls data been written to mem.
// PC_Enable, IF_ID_Pipeline_Enable and ID_Control_NOP:
//											these signals will stall PC and IF/ID pipeline, and simutaneousl force a nop is ID_Control signals
// ID_Register_Write_to_Read  :  handles when the clock delay due to write register is not affordable,
//										   it forwards the Write_Data_WB(data will be writen to register) to Read_Data(read data from register) when needed.
// ForwardC and ForwardD		:  handles brach hazard,
//											it forward ALU_Result_MEM to Read_data from register if needed, choses the data for comparator to generate 'Zero' for BEQ.


module Hazard_Handling_Unit(
	input	[4:0]			IF_ID_Reg_Rs,
	input	[4:0]			IF_ID_Reg_Rt,
	
	input					ID_Branch,
	input					ID_EX_MemRead,
	input					ID_EX_RegWrite,
	input					ID_EX_MEMtoReg,
	input [4:0]			ID_EX_Reg_Rs,
	input [4:0]			ID_EX_Reg_Rt,
	input [4:0]			ID_EX_Reg_Rd,
	
	input 	   		EX_MEM_RegWrite,
	input					EX_MEM_MemWrite,
	input [4:0]			EX_MEM_Reg_Rs,
	input [4:0]	   	EX_MEM_Reg_Rt,
	input [4:0]	   	EX_MEM_Reg_Rd,
	
	input					MEM_WB_MemtoReg,
	input					MEM_WB_RegWrite,
	input [4:0]			MEM_WB_Reg_Rd,
	input [4:0]			MEM_WB_Reg_Rt,
	
	output  [1:0]		ForwardA_EX,
	output  [1:0]		ForwardB_EX,
	output  				Forward_Mem_to_Mem,
	output 				PC_Enable,
	output 				IF_ID_Pipeline_Enable,
	output 				ID_Control_NOP,
	output  [1:0]		ID_Register_Write_to_Read,
	output 				ForwardC,
	output 				ForwardD
  );

				  
// DATA HAZARD
wire Data_Hazard_temp_1;
wire Data_Hazard_temp_2;
wire Data_Hazard_temp_3;	
assign Data_Hazard_temp_1 = ( EX_MEM_RegWrite & (EX_MEM_Reg_Rd != 5'd0) );						  //common logic temp
assign Data_Hazard_temp_2 = ( MEM_WB_RegWrite & (MEM_WB_Reg_Rd != 5'd0) );						  //common logic temp
assign Data_Hazard_temp_3 = ( MEM_WB_MemtoReg & ID_EX_RegWrite & (MEM_WB_Reg_Rt != 5'd0) ); //common logic temp
assign ForwardA_EX = { ( Data_Hazard_temp_1 & (EX_MEM_Reg_Rd == ID_EX_Reg_Rs) ) 	//EX forward
								,( ( Data_Hazard_temp_2 & (EX_MEM_Reg_Rd != ID_EX_Reg_Rs) & (MEM_WB_Reg_Rd == ID_EX_Reg_Rs) ) //MEM forward
									| ( Data_Hazard_temp_3 & (MEM_WB_Reg_Rt == ID_EX_Reg_Rs) )
							)};
assign ForwardB_EX = { ( Data_Hazard_temp_1 & (EX_MEM_Reg_Rd == ID_EX_Reg_Rt) )  //EX forward
								,( ( Data_Hazard_temp_2 & (EX_MEM_Reg_Rd != ID_EX_Reg_Rt) & (MEM_WB_Reg_Rd == ID_EX_Reg_Rt) ) //MEM forward
									| ( Data_Hazard_temp_3 & (MEM_WB_Reg_Rt == ID_EX_Reg_Rt) )
							)};
	
	
// MEM OT MEM COPY
assign Forward_Mem_to_Mem = ( (EX_MEM_Reg_Rt == MEM_WB_Reg_Rt) & MEM_WB_MemtoReg & EX_MEM_MemWrite );
	
	
// LOAD-USE DATA HAZARD
assign PC_Enable = !( (ID_EX_MemRead & ( (ID_EX_Reg_Rt == IF_ID_Reg_Rs) | (ID_EX_Reg_Rt == IF_ID_Reg_Rt) ))
								| ( ID_Branch & ID_EX_RegWrite & ((ID_EX_Reg_Rd == IF_ID_Reg_Rs)|(ID_EX_Reg_Rd == IF_ID_Reg_Rt)) ) );
assign IF_ID_Pipeline_Enable = PC_Enable;
assign ID_Control_NOP = !PC_Enable;

wire Load_use_temp_1;
wire Load_use_temp_2;
assign Load_use_temp_1 = ( MEM_WB_MemtoReg & (MEM_WB_Reg_Rt != 5'd0) ); //common logic temp
assign Load_use_temp_2 = ( MEM_WB_RegWrite & !MEM_WB_MemtoReg );			//common logic temp

assign ID_Register_Write_to_Read = {( (Load_use_temp_1 & (MEM_WB_Reg_Rt == IF_ID_Reg_Rt)) | (Load_use_temp_2 & (MEM_WB_Reg_Rd == IF_ID_Reg_Rt)) )
												,( (Load_use_temp_1 & (MEM_WB_Reg_Rt == IF_ID_Reg_Rs)) | (Load_use_temp_2 & (MEM_WB_Reg_Rd == IF_ID_Reg_Rs)) )};
	
	
// BRANCH HAZARD
assign ForwardC = ( ID_Branch & EX_MEM_RegWrite & (EX_MEM_Reg_Rd != 5'd0) & (EX_MEM_Reg_Rd == IF_ID_Reg_Rs) );
assign ForwardD = ( ID_Branch & EX_MEM_RegWrite & (EX_MEM_Reg_Rd != 5'd0) & (EX_MEM_Reg_Rd == IF_ID_Reg_Rt) );
	
endmodule // Hazard_Handling_Unit






   
   
