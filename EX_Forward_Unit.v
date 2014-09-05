module EX_Forward_Unit(
						input 	   		EX_MEM_RegWrite,
						input [31:0]	   EX_MEM_Reg_Rd,
						input [31:0]		ID_EX_Reg_Rs,
						input [31:0]		ID_EX_Reg_Rt,
						
						input					MEM_WB_RegWrite,
						input [31:0]		MEM_WB_Reg_Rd,
						
						output reg [1:0]		ForwardA_EX,
						output reg [1:0]		ForwardB_EX
			     );
   
	initial 
	begin
		ForwardA_EX <= 2'd0;
		ForwardB_EX <= 2'd0;
	end
	
   always@(*) begin
		if( (EX_MEM_RegWrite == 1) && (EX_MEM_Reg_Rd != 0) && (EX_MEM_Reg_Rd == ID_EX_Reg_Rs) )
			begin
				ForwardA_EX <= 2'b10;
			end
		else
			begin
				if( (MEM_WB_RegWrite == 1) && (MEM_WB_Reg_Rd !=0) && (EX_MEM_Reg_Rd != ID_EX_Reg_Rs) && (MEM_WB_Reg_Rd == ID_EX_Reg_Rs) )
					begin
						ForwardA_EX <= 2'b01;
					end
				else
					begin
						ForwardA_EX <= 2'b00;
					end
			end
		
		if( (EX_MEM_RegWrite == 1) && (EX_MEM_Reg_Rd != 0) && (EX_MEM_Reg_Rd == ID_EX_Reg_Rt) )
			begin
				ForwardB_EX <= 2'b10;
			end
		else
			begin
				if( (MEM_WB_RegWrite == 1) && (MEM_WB_Reg_Rd != 0) && (EX_MEM_Reg_Rd != ID_EX_Reg_Rt) && (MEM_WB_Reg_Rd == ID_EX_Reg_Rt) )
					begin
						ForwardB_EX <= 2'b01;
					end
				else
					begin
						ForwardB_EX <= 2'b00;
					end
			end
	
	end //always

endmodule // EX_Forward_Unit






   
   