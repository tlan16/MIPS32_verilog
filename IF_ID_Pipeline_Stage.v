// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module IF_ID_Pipeline_Stage(
			     input [31:0]  Instruction_IF,
			     input [31:0]	   PC_Plus_4_IF,

			     output reg [31:0] Instruction_ID,
			     output reg [31:0] PC_Plus_4_ID,
			     input 	   Clk
			     );
   
   initial begin
		Instruction_ID		<= 32'd0;
		PC_Plus_4_ID		<= 32'd0;
   end
	
   always@(posedge Clk) begin
		Instruction_ID<=Instruction_IF;
		PC_Plus_4_ID<=PC_Plus_4_IF;
	end

endmodule // IF_ID_Pipeline_Stage
