// when Forward_Mem_to_Mem is high, Write_Data_MEM is fowarded to Write_Data_MUX_MEM.
// selection signal Forward_Mem_to_Mem is from Hazard handling unit

module MEM_to_MEM_Forward(
						input [31:0]	   Write_Data_MEM,
						input [31:0]		Read_Data_WB,
						
						input 				Forward_Mem_to_Mem,
						
						output reg [31:0]	Write_Data_MUX_MEM
			     );
   
	initial 
	begin
		Write_Data_MUX_MEM <= 32'd0;
	end
	
	parameter	First		=	0,
					Second	=	1;
					
   always@(*) begin
		case(Forward_Mem_to_Mem)
				First: 	Write_Data_MUX_MEM <= Write_Data_MEM;
				Second: 	Write_Data_MUX_MEM <= Read_Data_WB;
				default: Write_Data_MUX_MEM <= Write_Data_MEM;
		endcase
			
	end //always

endmodule // MEM_to_MEM_Forward






   
   
