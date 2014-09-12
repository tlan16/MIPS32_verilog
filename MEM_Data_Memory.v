// Main data_Memory
// 32 bit width, 512 bit depth
// location 0 is always 0.
// invalid location get reading of 0.



module MEM_Data_Memory(
			     input [31:0]  ALU_Result_MEM,
			     input [31:0]  Write_Data_MEM,
			     output [31:0] Read_Data_MEM,
			     input 	   MemRead_MEM,
			     input 	   MemWrite_MEM,
			     input 	   Clk
			     );
	
	reg [31:0]Data_Memory[0:1023];
	initial begin
		$readmemh("data_memory.list", Data_Memory);
	end
	
assign Read_Data_MEM = MemRead_MEM ? ( (ALU_Result_MEM == 0 || ALU_Result_MEM > 32'd1023) ? 32'd0 : Data_Memory[ALU_Result_MEM]) : Read_Data_MEM;

	always@(posedge Clk) 
		begin
			if(MemWrite_MEM)
				begin
					Data_Memory[ALU_Result_MEM] <= Write_Data_MEM;
				end
		end
	
endmodule // MEM_Data_Memory






   
   
