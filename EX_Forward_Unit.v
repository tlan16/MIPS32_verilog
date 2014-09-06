module EX_Forward_Unit(
						input 	   		EX_MEM_RegWrite,
						
						input					MemWrite_MEM,
						input					MemtoReg_WB,
						
						input	[4:0]			IF_ID_Reg_Rs,
						input	[4:0]			IF_ID_Reg_Rt,
						
						input					ID_EX_MemRead,
						input [4:0]			ID_EX_Reg_Rs,
						input [4:0]			ID_EX_Reg_Rt,
						
						input [4:0]	   	EX_MEM_Reg_Rd,
						input [4:0]	   	EX_MEM_Reg_Rt,
						
						input					MEM_WB_RegWrite,
						input [4:0]			MEM_WB_Reg_Rd,
						input [4:0]			MEM_WB_Reg_Rt,
						
						output reg [1:0]		ForwardA_EX,
						output reg [1:0]		ForwardB_EX,
						output reg 				Forward_Mem_to_Mem,
						output reg				PC_Enable,
						output reg				IF_ID_Pipeline_Enable
			     );
   
	initial 
	begin
		ForwardA_EX <= 2'd0;
		ForwardB_EX <= 2'd0;
		Forward_Mem_to_Mem <= 0;
		PC_Enable 	<=1;
		IF_ID_Pipeline_Enable <= 1;
	end
	
	wire isLW_WB;
	wire isSW_MEM;
	
	assign isLW_WB  = (MemtoReg_WB==1);
	assign isSW_MEM = (MemWrite_MEM==1);
	
   always@(*) begin
	//// DATA HAZARD
		if( (EX_MEM_RegWrite == 1) && (EX_MEM_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd == ID_EX_Reg_Rs) )
			begin
				ForwardA_EX <= 2'b10;
			end
		else
			begin
				if( (MEM_WB_RegWrite == 1) && (MEM_WB_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd != ID_EX_Reg_Rs) && (MEM_WB_Reg_Rd == ID_EX_Reg_Rs) )
					begin
						ForwardA_EX <= 2'b01;
					end
				else
					begin
						ForwardA_EX <= 2'b00;
					end
			end
		
		if( (EX_MEM_RegWrite == 1) && (EX_MEM_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd == ID_EX_Reg_Rt) )
			begin
				ForwardB_EX <= 2'b10;
			end
		else
			begin
				if( (MEM_WB_RegWrite == 1) && (MEM_WB_Reg_Rd != 5'd0) && (EX_MEM_Reg_Rd != ID_EX_Reg_Rt) && (MEM_WB_Reg_Rd == ID_EX_Reg_Rt) )
					begin
						ForwardB_EX <= 2'b01;
					end
				else
					begin
						ForwardB_EX <= 2'b00;
					end
			end
	//// MEM OT MEM COPY
	if( (EX_MEM_Reg_Rt == MEM_WB_Reg_Rt) && (isLW_WB == 1) && (isSW_MEM == 1) )
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
		end
	else
		begin
			PC_Enable <= 1;
			IF_ID_Pipeline_Enable <= 1;
		end
	
	end //always

endmodule // EX_Forward_Unit






   
   
