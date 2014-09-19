// IF_Instruction_Memory  is the main instruction memory, which is 32 bits wide, and have a depth of 1024.
// Once the PC_IF eceeds the depth of instruction memory, it will output zero.
// A logic high of IF_Flush triggers the flush response, the output will be zero.
// IF_Flush is from Mem_Brach_AND, note Mem_Brach_AND is been relocated from MEM stage to // ID stage.
// A logic high of Jump_Control_ID triggers the flush response, the output will be zero.
//  Jump_Control_ID is from ID_Control


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
		 
		 assign Instruction_IF = ((PC_IF>32'd1023) | IF_Flush | Jump_Control_ID) ? 32'd0 : Instruction_Memory[PC_IF];
   
endmodule // IF_Instruction_Memory

