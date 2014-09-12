// A mux choses data been feed into Read_Data_1 on EX_ALU from Read_Data_1_EX form ID/EX pipeline, or Write_Data_WB from write back stage, or ALU_Result_MEM form MEM stage
// Selection signel ForwardA_EX is feeded in from Hazard handling unit
// This module alse been used as another instance for data output to EX_ALU_Mux

module EX_Forward_A(
						input [31:0]	   Read_Data_1_EX,
						input [31:0]		Write_Data_WB,
						input [31:0]		ALU_Result_MEM,
						
						input [1:0]			ForwardA_EX,
						
						output reg [31:0]	Read_Data_1_Mux_EX
			     );
   
	initial 
	begin
		Read_Data_1_Mux_EX <= 32'd0;
	end
	
	parameter	First		=	2'b00,
					Second	=	2'b01,  
					Third		=	2'b10;
					
   always@(*) begin
		case(ForwardA_EX)
				First: 	Read_Data_1_Mux_EX <= Read_Data_1_EX;
				Second: 	Read_Data_1_Mux_EX <= Write_Data_WB;
				Third:	Read_Data_1_Mux_EX <= ALU_Result_MEM;
				default: Read_Data_1_Mux_EX <= Read_Data_1_EX;
		endcase
			
	end //always

endmodule // EX_Forward_A






   
   
