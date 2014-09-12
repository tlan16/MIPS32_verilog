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
/*
	initial 
	begin
		ForwardA_EX <= 2'd0;
		ForwardB_EX <= 2'd0;
		Forward_Mem_to_Mem <= 0;
		PC_Enable 	<=1;
		IF_ID_Pipeline_Enable <= 1;
		ID_Control_NOP <= 0;
		ID_Register_Write_to_Read <= 2'b00;
	end

   always@(*) begin
	//// DATA HAZARD
		if( (EX_MEM_RegWrite == 1) && (EX_MEM_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd == ID_EX_Reg_Rs) )
			begin
				ForwardA_EX <= 2'b10;
			end
		else if( (MEM_WB_RegWrite == 1) && (MEM_WB_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd != ID_EX_Reg_Rs) && (MEM_WB_Reg_Rd == ID_EX_Reg_Rs) 
						|| ( (MEM_WB_MemtoReg == 1) && (ID_EX_RegWrite == 1) && (MEM_WB_Reg_Rt != 5'd0) && (MEM_WB_Reg_Rt == ID_EX_Reg_Rs) ) )
			begin
				ForwardA_EX <= 2'b01;
			end
		else
			begin
				ForwardA_EX <= 2'b00;
			end

		if( (EX_MEM_RegWrite == 1) && (EX_MEM_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd == ID_EX_Reg_Rt) )
			begin
				ForwardB_EX <= 2'b10;
			end
		else if( (MEM_WB_RegWrite == 1) && (MEM_WB_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd != ID_EX_Reg_Rt) && (MEM_WB_Reg_Rd == ID_EX_Reg_Rt) 
						|| ( (MEM_WB_MemtoReg == 1) && (ID_EX_RegWrite == 1) && (MEM_WB_Reg_Rt != 5'd0) && (MEM_WB_Reg_Rt == ID_EX_Reg_Rt) ) )
			begin
				ForwardB_EX <= 2'b01;
			end
		else
			begin
				ForwardB_EX <= 2'b00;
			end

	//// MEM OT MEM COPY
	if( (EX_MEM_Reg_Rt == MEM_WB_Reg_Rt) && (MEM_WB_MemtoReg == 1) && (EX_MEM_MemWrite == 1) )
		begin
			Forward_Mem_to_Mem <= 1;
		end
	else
		begin
			Forward_Mem_to_Mem <= 0;
		end

	//// LOAD-USE DATA HAZARD
	if( (ID_EX_MemRead == 1) && ( (ID_EX_Reg_Rt == IF_ID_Reg_Rs) || (ID_EX_Reg_Rt == IF_ID_Reg_Rt) ) )
		begin
			PC_Enable <= 0;
			IF_ID_Pipeline_Enable <= 0;
			ID_Control_NOP <= 1;
		end
	else
		begin
			PC_Enable <= 1;
			IF_ID_Pipeline_Enable <= 1;
			ID_Control_NOP <= 0;
		end
	
	if( (MEM_WB_MemtoReg == 1) && (MEM_WB_Reg_Rt != 5'd0) && (MEM_WB_Reg_Rt == IF_ID_Reg_Rs) )
		begin
			ID_Register_Write_to_Read <= 2'b01;
		end
	else if ( (MEM_WB_MemtoReg == 1) && (MEM_WB_Reg_Rt != 5'd0) && (MEM_WB_Reg_Rt == IF_ID_Reg_Rt) )
		begin
			ID_Register_Write_to_Read <= 2'b10;
		end
	else
		begin
			ID_Register_Write_to_Read <= 2'b00;
		end
	end //always
*/

// DATA HAZARD
wire Data_Hazard_temp_1;
wire Data_Hazard_temp_2;
wire Data_Hazard_temp_3;
assign Data_Hazard_temp_1 = ( EX_MEM_RegWrite & (EX_MEM_Reg_Rd != 5'd0) );
assign Data_Hazard_temp_2 = ( MEM_WB_RegWrite & (MEM_WB_Reg_Rd != 5'd0) );
assign Data_Hazard_temp_3 = ( MEM_WB_MemtoReg & ID_EX_RegWrite & (MEM_WB_Reg_Rt != 5'd0) );
assign ForwardA_EX = { ( Data_Hazard_temp_1 & (EX_MEM_Reg_Rd == ID_EX_Reg_Rs) ) 
								,( ( Data_Hazard_temp_2 & (EX_MEM_Reg_Rd != ID_EX_Reg_Rs) & (MEM_WB_Reg_Rd == ID_EX_Reg_Rs) )
									| ( Data_Hazard_temp_3 & (MEM_WB_Reg_Rt == ID_EX_Reg_Rs) )
							)};
assign ForwardB_EX = { ( Data_Hazard_temp_1 & (EX_MEM_Reg_Rd == ID_EX_Reg_Rt) ) 
								,( ( Data_Hazard_temp_2 & (EX_MEM_Reg_Rd != ID_EX_Reg_Rt) & (MEM_WB_Reg_Rd == ID_EX_Reg_Rt) )
									| ( Data_Hazard_temp_3 & (MEM_WB_Reg_Rt == ID_EX_Reg_Rt) )
							)};
	
// MEM OT MEM COPY
assign Forward_Mem_to_Mem = ( (EX_MEM_Reg_Rt == MEM_WB_Reg_Rt) & MEM_WB_MemtoReg & EX_MEM_MemWrite );
	
// LOAD-USE DATA HAZARD
assign PC_Enable = !( (ID_EX_MemRead & ( (ID_EX_Reg_Rt == IF_ID_Reg_Rs) | (ID_EX_Reg_Rt == IF_ID_Reg_Rt) ))
								| ( ID_Branch & ID_EX_RegWrite /*& !ID_EX_MEMtoReg*/ & ((ID_EX_Reg_Rd == IF_ID_Reg_Rs)|(ID_EX_Reg_Rd == IF_ID_Reg_Rt)) ) );
assign IF_ID_Pipeline_Enable = !( (ID_EX_MemRead & ( (ID_EX_Reg_Rt == IF_ID_Reg_Rs) | (ID_EX_Reg_Rt == IF_ID_Reg_Rt) ))
								| ( ID_Branch & ID_EX_RegWrite /*& !ID_EX_MEMtoReg*/ & ((ID_EX_Reg_Rd == IF_ID_Reg_Rs)|(ID_EX_Reg_Rd == IF_ID_Reg_Rt)) ) );
assign ID_Control_NOP = ( (ID_EX_MemRead & ( (ID_EX_Reg_Rt == IF_ID_Reg_Rs) | (ID_EX_Reg_Rt == IF_ID_Reg_Rt) ))
								| ( ID_Branch & ID_EX_RegWrite /*& !ID_EX_MEMtoReg*/ & ((ID_EX_Reg_Rd == IF_ID_Reg_Rs)|(ID_EX_Reg_Rd == IF_ID_Reg_Rt)) ) );
wire Load_use_temp_1;
wire Load_use_temp_2;
assign Load_use_temp_1 = ( MEM_WB_MemtoReg & (MEM_WB_Reg_Rt != 5'd0) );
assign Load_use_temp_2 = ( MEM_WB_RegWrite & !MEM_WB_MemtoReg );
assign ID_Register_Write_to_Read = {( (Load_use_temp_1 & (MEM_WB_Reg_Rt == IF_ID_Reg_Rt)) | (Load_use_temp_2 & (MEM_WB_Reg_Rd == IF_ID_Reg_Rt)) )
												,( (Load_use_temp_1 & (MEM_WB_Reg_Rt == IF_ID_Reg_Rs)) | (Load_use_temp_2 & (MEM_WB_Reg_Rd == IF_ID_Reg_Rs)) )};
	
// BRANCH HAZARD
assign ForwardC = ( ID_Branch & EX_MEM_RegWrite & (EX_MEM_Reg_Rd != 5'd0) & (EX_MEM_Reg_Rd == IF_ID_Reg_Rs) );
assign ForwardD = ( ID_Branch & EX_MEM_RegWrite & (EX_MEM_Reg_Rd != 5'd0) & (EX_MEM_Reg_Rd == IF_ID_Reg_Rt) );
	
endmodule // Hazard_Handling_Unit






   
   
