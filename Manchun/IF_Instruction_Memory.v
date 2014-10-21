// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module IF_Instruction_Memory(
		 input [31:0]PC_IF,
		 output reg [31:0]Instruction_to_mux_IF,
		 input Clk
		 );
	reg [31:0]memory[0:1024];
	initial 	begin
				$readmemh("instruction_memory.list", memory);
				end
	
	
	always@(PC_IF) //modif from posedge clk to PC_IF
		begin
		Instruction_to_mux_IF <= memory[PC_IF];
		end

endmodule // IF_Instruction_Memory
