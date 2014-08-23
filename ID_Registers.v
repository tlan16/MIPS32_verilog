// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module ID_Registers(
		    input [4:0]   Read_Address_1_ID,
		    input [4:0]   Read_Address_2_ID, 
		    input [4:0]   Write_Register_WB,
		    input [31:0]  Write_Data_WB,
		    output reg [31:0] Read_Data_1_ID,
		    output reg [31:0] Read_Data_2_ID, 
		    input 	  Clk,
		    input 	  RegWrite_WB
		    );

   reg [31:0]Register_File[0:255];
	
	initial begin
		$readmemh("register_file.list", Register_File);
	end
	
	always@(Read_Address_1_ID or Register_File[Read_Address_1_ID]) begin
		if(Read_Address_1_ID==0)	Read_Data_1_ID = 32'd0;
		else Read_Data_1_ID = Register_File[Read_Address_1_ID];
	end
	
	always@(Read_Address_2_ID or Register_File[Read_Address_2_ID]) begin
		if(Read_Address_2_ID==0)	Read_Data_2_ID = 32'd0;
		else Read_Data_2_ID = Register_File[Read_Address_2_ID];
	end
	
	always@(posedge Clk) begin
		if((RegWrite_WB==1) && (Write_Register_WB!=4'd0)) begin
			Register_File[Write_Register_WB] <= Write_Data_WB;
		end //if
	end //always

endmodule // ID_Registers






   
   
