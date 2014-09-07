// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module IF_PC_Reg(
		 input [31:0]Next_PC_IF,
		 input pc_stall,
		 output reg[31:0]PC_IF,
		 input Clk
		 );

 always@(posedge Clk)
	begin
	if (!pc_stall)begin
	PC_IF <= Next_PC_IF;
	end //end if
	end //end always

endmodule // IF_PC_Reg



   
   
