// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module IF_Instruction_Memory(
		 input [31:0]PC_IF,
		 output reg [31:0]Instruction_IF,
		 input Clk
		 );

		 reg [31:0]Instruction_Memory[0:1023];
		 
		 initial begin
			$readmemh("instruction_memory.list", Instruction_Memory);
		 end
		 
		 always@(PC_IF) begin
			if(PC_IF>1023)		Instruction_IF <= 32'd0;
			else					Instruction_IF <= Instruction_Memory[PC_IF];
		 end
   
endmodule // IF_Instruction_Memory

