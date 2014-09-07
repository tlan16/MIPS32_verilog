// condition ? if true : if false

module ID_Registers(
		    input [4:0]   Read_Address_1_ID,
		    input [4:0]   Read_Address_2_ID, 
		    input [4:0]   Write_Register_WB,
		    input [31:0]  Write_Data_WB,
		    output  [31:0] Read_Data_1_ID,
		    output  [31:0] Read_Data_2_ID, 
		    input 	  Clk,
		    input 	  RegWrite_WB,
			 input [1:0]	ID_Register_Write_to_Read
		    );

   reg [31:0]Register_File[0:255];
	
	initial begin
		$readmemh("register_file.list", Register_File);
		//Read_Data_1_ID <= 32'd0;
		//Read_Data_2_ID <= 32'd0;
	end
	
	assign Read_Data_1_ID = (Read_Address_1_ID==5'd0) ? 32'd0 : (ID_Register_Write_to_Read[0] ? Write_Data_WB : Register_File[Read_Address_1_ID]);
	assign Read_Data_2_ID = (Read_Address_2_ID==5'd0) ? 32'd0 : (ID_Register_Write_to_Read[1] ? Write_Data_WB : Register_File[Read_Address_2_ID]);
	
/*
	always@(Read_Address_1_ID or Register_File[Read_Address_1_ID] or ID_Register_Write_to_Read) begin
		if(Read_Address_1_ID==5'd0)
			begin
				Read_Data_1_ID <= 32'd0;
			end
		else 
			begin
				case(ID_Register_Write_to_Read)
					2'b00: Read_Data_1_ID <= Register_File[Read_Address_1_ID];
					2'b01: Read_Data_1_ID <= Write_Data_WB;
					default: Read_Data_1_ID <= Register_File[Read_Address_1_ID];
				endcase
			end
	end
	
	always@(Read_Address_2_ID or Register_File[Read_Address_2_ID] or ID_Register_Write_to_Read) begin
		if(Read_Address_2_ID==5'd0)
			begin
				Read_Data_2_ID <= 32'd0;
			end
		else 
			begin
				case(ID_Register_Write_to_Read)
					2'b00: Read_Data_2_ID <= Register_File[Read_Address_2_ID];
					2'b10: Read_Data_2_ID <= Write_Data_WB;
					default: Read_Data_2_ID <= Register_File[Read_Address_2_ID];
				endcase
			end
	end
*/
	always@(posedge Clk) begin
		if((RegWrite_WB==1) && (Write_Register_WB!=4'd0)) begin
			Register_File[Write_Register_WB] <= Write_Data_WB;
		end //if
	end //always

endmodule // ID_Registers






   
   
