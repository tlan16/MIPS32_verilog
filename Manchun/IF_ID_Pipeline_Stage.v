// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module IF_ID_Pipeline_Stage(
			     input [31:0]  Instruction_IF,
			     input [31:0]	   PC_Plus_4_IF,
				  input 			IF_ID_pipeline_stall,	
				
			     output reg [31:0] Instruction_ID,
			     output reg [31:0]  PC_Plus_4_ID,
			     input 	   Clk
			     );
   
   always@(posedge Clk)
	begin
	if(!IF_ID_pipeline_stall)begin
	Instruction_ID <= Instruction_IF;
	PC_Plus_4_ID <= PC_Plus_4_IF;
	end	//endif
	end	//end always

endmodule // IF_ID_Pipeline_Stage





   
   
