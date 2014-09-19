// IF_PC_Reg  push next_PC_IF to PC_IF on positive edge of global clock.
// A logic low in PC_Enable will stop next_PC_IF been pushed to PC_IF.
// PC_Enable is from the Hazard Handling Unit


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



   
   
