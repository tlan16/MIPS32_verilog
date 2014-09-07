// condition ? if true : if false

module IF_Instruction_Memory(
		 input [31:0]PC_IF,
		 output [31:0]Instruction_IF
		 );

		 reg [31:0]Instruction_Memory[0:1023];
		 
		 initial begin
			$readmemh("instruction_memory.list", Instruction_Memory);
			//Instruction_IF <= 32'd0;
		 end
/*
		 always@(PC_IF) begin
			if(PC_IF>1023)		Instruction_IF <= 32'd0;
			else					Instruction_IF <= Instruction_Memory[PC_IF];
		 end
*/
		 assign Instruction_IF = (PC_IF>1023) ? 32'd0 : Instruction_Memory[PC_IF];
   
endmodule // IF_Instruction_Memory

