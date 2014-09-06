// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module IF_PC_Reg(
		 input [31:0]Next_PC_IF,
		 input PC_Enable,
		 output reg [31:0]PC_IF,
		 input Clk
		 );
		 
   always@(posedge Clk)
		begin
			if(PC_Enable)
				PC_IF <= Next_PC_IF;
		end

endmodule // IF_PC_Reg



   
   
