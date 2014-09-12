// Main register, 32 bit wide, 32 bit deep
// A  logic 1 of ID_Register_Write_to_Read will triger the write_Data_WB been forwarded to Read_Data,
// when next instruction need the result from last instruction
// Trigler condition: ID_Register_Write_to_Read.
// Trigler controled by Hazard_Handling_Unit

module ID_Registers(
		    input [4:0]   Read_Address_1_ID,
		    input [4:0]   Read_Address_2_ID, 
		    input [4:0]   Write_Register_WB,
		    input [31:0]  Write_Data_WB,
		    output reg  [31:0] Read_Data_1_ID,
		    output reg  [31:0] Read_Data_2_ID, 
		    input 	  Clk,
		    input 	  RegWrite_WB,
			 input [1:0]	ID_Register_Write_to_Read
		    );

   reg [31:0]Register_File[0:31];
	
	initial begin
		$readmemh("register_file.list", Register_File);
		Read_Data_1_ID <= 32'd0;
		Read_Data_2_ID <= 32'd0;
	end
	
	// Forwarding Write_Data_WB to Read_Data_1_ID
	always@(Read_Address_1_ID or Register_File[Read_Address_1_ID] or ID_Register_Write_to_Read) begin
		if(Read_Address_1_ID==5'd0)
			begin
				Read_Data_1_ID <= 32'd0;
			end
		else 
			begin
				if(ID_Register_Write_to_Read == 2'b01)
					begin
						Read_Data_1_ID <= Write_Data_WB;
					end
				else
					begin
						Read_Data_1_ID <= Register_File[Read_Address_1_ID];
					end
			end //else
	end
	
	// Forwarding Write_Data_WB to Read_Data_2_ID
	always@(Read_Address_2_ID or Register_File[Read_Address_2_ID] or ID_Register_Write_to_Read) begin
		if(Read_Address_2_ID==5'd0)
			begin
				Read_Data_2_ID <= 32'd0;
			end
		else 
			begin
				if(ID_Register_Write_to_Read == 2'b10)
					begin
						Read_Data_2_ID <= Write_Data_WB;
					end
				else
					begin
						Read_Data_2_ID <= Register_File[Read_Address_2_ID];
					end
			end //else
	end

	always@(posedge Clk) begin
		if( RegWrite_WB & (Write_Register_WB != 5'd0) ) begin
			Register_File[Write_Register_WB] <= Write_Data_WB;
		end //if
	end //always

endmodule // ID_Registers






   
   
