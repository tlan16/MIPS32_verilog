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
		    input 	  RegWrite_WB,
			 input [1:0]	Forward_Reg_Delay	//01 is Data2 need push, 10 is Data1 need push
		    );
	reg[31:0]register[31:0];	// Total 32 register for 32bits
	initial
	begin
	$readmemh("register_file.list", register);
	Read_Data_1_ID <= 32'd0;
	Read_Data_2_ID <= 32'd0;
	end	//end initial
	

	
	always@(register[Read_Address_1_ID] or Read_Address_1_ID)
	begin
		if (Forward_Reg_Delay == 2'b01)begin
		Read_Data_1_ID <= Write_Data_WB;
		end
		else begin
		Read_Data_1_ID <= register[Read_Address_1_ID];
		end
	end  //always
	
	
	always@(register[Read_Address_2_ID] or Read_Address_2_ID)
	begin
		if (Forward_Reg_Delay == 2'b10)begin
		Read_Data_2_ID <= Write_Data_WB;
		end
		else begin
		Read_Data_2_ID <= register[Read_Address_2_ID];
		end
	end //always
	
	
	always@(posedge Clk)
	begin
	if((Write_Register_WB != 0) && (RegWrite_WB))begin
	register[Write_Register_WB] <= Write_Data_WB;
	end	// end if
	end	// end write back
	
endmodule // ID_Registers






   
   
