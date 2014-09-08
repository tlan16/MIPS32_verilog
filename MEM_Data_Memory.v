// condition ? if true : if false

module MEM_Data_Memory(
			     input [31:0]  ALU_Result_MEM,
			     input [31:0]  Write_Data_MEM,
			     output [31:0] Read_Data_MEM,
			     input 	   MemRead_MEM,
			     input 	   MemWrite_MEM,
			     input 	   Clk
			     );
	
	reg [31:0]Data_Memory[0:511];
	initial begin
		$readmemh("data_memory.list", Data_Memory);
		//Read_Data_MEM <= 32'd0;
	end
	
assign Read_Data_MEM = MemRead_MEM ? ( (ALU_Result_MEM == 0 || ALU_Result_MEM > 32'd511) ? 32'd0 : Data_Memory[ALU_Result_MEM]) : Read_Data_MEM;
/*
	always@(MemRead_MEM or Data_Memory[ALU_Result_MEM])
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
*/
	always@(posedge Clk) 
		begin
//			Data_Memory[ALU_Result_MEM] <= MemWrite_MEM? Write_Data_MEM : Data_Memory[ALU_Result_MEM];
			if(MemWrite_MEM)
				begin
					Data_Memory[ALU_Result_MEM] <= Write_Data_MEM;
				end
		end
	
endmodule // MEM_Data_Memory






   
   
