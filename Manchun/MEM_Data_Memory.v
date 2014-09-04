// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module MEM_Data_Memory(
			     input [31:0]  ALU_Result_MEM,
			     input 		Write_Data_MEM,
			     output reg [31:0] Read_Data_MEM,
			     input 	   MemRead_MEM,
			     input 	   MemWrite_MEM,
			     input 	   Clk
			     );
   
	reg [31:0]memory[0:512];
	
	initial 	begin
				$readmemh("data_memory.list", memory);
				Read_Data_MEM <= 32'b0;
				end
	always@(MemRead_MEM || ALU_Result_MEM)			
		begin
			if( (MemRead_MEM) && (~MemWrite_MEM)) // Read Memory
			begin
			Read_Data_MEM <= memory[ALU_Result_MEM];
			end			
		end		
				
	 always@(posedge Clk) 
		begin			// Old Code can't read
			/*if( (MemRead_MEM) && (~MemWrite_MEM)) // Read Memory
			begin
			Read_Data_MEM <= memory[ALU_Result_MEM];
			end	
			
			else*/ if ( (MemWrite_MEM) && (~MemRead_MEM))	// Write Memory
			begin
			memory[ALU_Result_MEM] <= Write_Data_MEM;
			Read_Data_MEM <= Read_Data_MEM;
			end
			
			else
			begin
			Read_Data_MEM <= Read_Data_MEM;
			end
	
		end
endmodule // MEM_Data_Memory






   
   
