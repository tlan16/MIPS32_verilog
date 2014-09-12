// EX_Forward_A is a 3-to-1 mux.
// Selection signal ForwardA_EX from Hazard handling unit.
// ForwardA_EX of 2’b00 is the default case, it forwards Read_Data_1_EX from ID/EX pipeline to the output.
// ForwardA_EX of 2’b01 forwards Write_Data_WB to the output.
// ForwardA_EX of 2’b10 forwards ALU_Result_MEM to the output.
// Selection signal ForwardA_EX is from Hazard handling unit
// This module also been used as another instance as EX_Forward_B, which output data output to EX_ALU_Mux


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






   
   
