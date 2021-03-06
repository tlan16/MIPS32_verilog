module EX_Forward_B(
						input [31:0]	   Read_Data_2_EX,
						input [31:0]		Write_Data_WB,
						input [31:0]		ALU_Result_MEM,
						
						input [1:0]			ForwardB_EX,
						
						output reg [31:0]	Read_Data_2_Mux_EX
			     );
   
	initial 
	begin
		Read_Data_2_Mux_EX <= Read_Data_2_EX;
	end
	
	parameter	First		=	2'b00,
					Second	=	2'b01,  
					Third		=	2'b10;
					
   always@(*) begin
		case(ForwardB_EX)
				First: 	Read_Data_2_Mux_EX <= Read_Data_2_EX;
				Second: 	Read_Data_2_Mux_EX <= Write_Data_WB;
				Third:	Read_Data_2_Mux_EX <= ALU_Result_MEM;
				default: Read_Data_2_Mux_EX <= Read_Data_2_EX;
		endcase
			
	end //always

endmodule // EX_Forward_B






   
   
