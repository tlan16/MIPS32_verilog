// condition ? if true : if false

module IF_PC_Reg(
		 input [31:0]Next_PC_IF,
		 input PC_Enable,
		 output reg [31:0]PC_IF,
		 input Clk
		 );
		 
   always@(posedge Clk)
		begin
			/*
			if(PC_Enable)
				begin
					PC_IF <= Next_PC_IF;
				end
			*/
			PC_IF <= PC_Enable ? Next_PC_IF : PC_IF;
		end

endmodule // IF_PC_Reg



   
   
