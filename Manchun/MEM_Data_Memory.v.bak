// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module MEM_Data_Memory(
			     input [31:0]  ALU_Result_MEM,
			     input [31:0]	 Read_Data_forward_MEM_MEM,
			     output reg [31:0] Read_Data_MEM,
			     input 	   MemRead_MEM,
			     input 	   MemWrite_MEM,
			     input 	   Clk
			     );
   
	//parameter BASE_ADDRESS = 25'd0; // address that applies to this memory - change if desired
	
	reg [31:0]Data_Memory[0:511];
	initial begin
		$readmemh("data_memory.list", Data_Memory);
		Read_Data_MEM <= 32'd0;
	end
	
	//wire [31:0]address;
	//assign address = ALU_Result_MEM[31:0];
	
	/* wire [4:0] mem_offset;
	wire address_select;

	assign mem_offset = address[6:2];  // drop 2 LSBs to get word offset
	
	//////////////////////////////////////////////////////////////////////////////////
	always @(MemRead_MEM or address_select or mem_offset or Data_Memory[mem_offset]) begin
		if(MemRead_MEM==1 && address_select==1) begin
			if((address % 4) !=0) begin
				Read_Data_MEM = Data_Memory[mem_offset];
			end //if
		end //if
		else Read_Data_MEM = 32'hxxxxxxxx;
	end //always
	
	// for WRITE operations
	always@(negedge Clk) begin
		if(MemWrite_MEM==1 && address_select==1) begin
			Data_Memory[mem_offset] <= Write_Data_MEM;
		end //if
	end //always
	*/
	
	always@(*)
		begin
			if(MemRead_MEM)
				begin
					if(ALU_Result_MEM == 0 || ALU_Result_MEM > 32'd511)
						begin
							Read_Data_MEM <= 32'd0;
						end
					else
						begin
							Read_Data_MEM <= Data_Memory[ALU_Result_MEM];
						end
				end
		end
	
	
	
	always@(posedge Clk) 
		begin
			if(MemWrite_MEM)
				begin
					Data_Memory[ALU_Result_MEM] <= Read_Data_forward_MEM_MEM;
				end
		end
	
endmodule // MEM_Data_Memory






   
   



//// Comments and desciption of modules have been deliberately ommitted.
//// It is up to the student to document and describe the system.
//
//module MEM_Data_Memory(
//			     input [31:0]  ALU_Result_MEM,
//			     input [31:0]		Read_Data_forward_MEM_MEM,
//			     output reg [31:0] Read_Data_MEM,
//			     input 	   MemRead_MEM,
//			     input 	   MemWrite_MEM,
//			     input 	   Clk
//			     );
//   
//	reg [31:0]memory[0:512];
//	
//	initial 	begin
//				$readmemh("data_memory.list", memory);
//				Read_Data_MEM <= 32'b0;
//				end
//	always@*//(MemRead_MEM || ALU_Result_MEM)			
//		begin
//			if( (MemRead_MEM) && (~MemWrite_MEM)) // Read Memory
//			begin
//			Read_Data_MEM <= memory[ALU_Result_MEM];
//			end			
//		end		
//				
//	 always@(posedge Clk) 
//		begin			// Old Code can't read
//			/*if( (MemRead_MEM) && (~MemWrite_MEM)) // Read Memory
//			begin
//			Read_Data_MEM <= memory[ALU_Result_MEM];
//			end	
//			
//			else*/ if ( (MemWrite_MEM) && (~MemRead_MEM))	// Write Memory
//			begin
//			memory[ALU_Result_MEM] <= Read_Data_forward_MEM_MEM[31:0];
//			//Read_Data_MEM <= Read_Data_MEM;
//			end
//			
//			/*else
//			begin
//			Read_Data_MEM <= Read_Data_MEM;
//			end
//		*/
//		end
//endmodule // MEM_Data_Memory
//
//
//
//
//
//
//   
//   
