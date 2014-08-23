// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module MEM_Data_Memory(
			     input [31:0]  ALU_Result_MEM,
			     input [31:0]  Write_Data_MEM,
			     output reg [31:0] Read_Data_MEM,
			     input 	   MemRead_MEM,
			     input 	   MemWrite_MEM,
			     input 	   Clk
			     );
   
	parameter BASE_ADDRESS = 25'd0; // address that applies to this memory - change if desired
	
	reg [31:0]Data_Memory[0:1023];
	initial begin
		$readmemh("data_memory.list", Data_Memory);
	end
	
	wire [31:0]address;
	assign address = ALU_Result_MEM[31:0];
	
	wire [4:0] mem_offset;
	wire address_select;

	assign mem_offset = address[6:2];  // drop 2 LSBs to get word offset
	
	//*****************************************************************************************//
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
	
endmodule // MEM_Data_Memory






   
   
