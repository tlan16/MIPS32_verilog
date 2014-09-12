// push next_PC_IF to PC_IF on posedge of Clk

module IF_PC_Reg(
		 input [31:0]Next_PC_IF,
		 input PC_Enable,
		 output reg [31:0]PC_IF,
		 input Clk
		 );
		 
   always@(posedge Clk)
		begin
			if(PC_Enable)
				begin
					PC_IF <= Next_PC_IF;
				end
		end

endmodule // IF_PC_Reg



   
   
