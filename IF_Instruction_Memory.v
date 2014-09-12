// Main instruction memory
// output zero (flush) when eighter IF_Flush or Jump_Control_ID is highz0
// Jump_Control_ID is from ID_Control
// IF_Flush is the PC_Src in ID stage

module IF_Instruction_Memory(
		 input [31:0]PC_IF,
		 input		 IF_Flush,
		 input		 Jump_Control_ID,
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
		 assign Instruction_IF = ((PC_IF>32'd1023) | IF_Flush | Jump_Control_ID) ? 32'd0 : Instruction_Memory[PC_IF];
   
endmodule // IF_Instruction_Memory

