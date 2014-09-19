// Instruction fetch stage to instruction decode stage pipeline, passing data on positive edge of global clock

module IF_ID_Pipeline_Stage(
			     input [31:0]  Instruction_IF,
			     input [31:0]	 PC_Plus_4_IF,
				  input			 IF_ID_Pipeline_Enable,

			     output reg [31:0] Instruction_ID,
			     output reg [31:0] PC_Plus_4_ID,
			     input 	   Clk
			     );
   
   initial begin
		Instruction_ID		<= 32'd0;
		PC_Plus_4_ID		<= 32'd0;
   end
	
   always@(posedge Clk) begin
		if(IF_ID_Pipeline_Enable)
			begin
				Instruction_ID<=Instruction_IF;
				PC_Plus_4_ID<=PC_Plus_4_IF;
			end

	end

endmodule // IF_ID_Pipeline_Stage
