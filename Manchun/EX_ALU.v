// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module EX_ALU(
	      input [31:0]  Read_Data_forward_A_EX,//Read_Data_1_EX,
	      input [31:0]  ALU_Data_2_EX,
	      input [3:0]   ALU_Control_EX,
	      output reg [31:0] ALU_Result_EX,
	      output reg Zero_EX
	      
	      );

   parameter 	ALUadd 	= 4'b0010,
					ALUsub	= 4'b0110,  
					ALUand	= 4'b0000,	         
					ALUor		= 4'b0001,
					ALUslt	= 4'b0111,
					ALUmul	= 4'b1111;
// Handles negative inputs
	wire sign_mismatch;
	assign sign_mismatch = (Read_Data_forward_A_EX[31]==ALU_Data_2_EX[31]);
	
	initial
		begin
		ALU_Result_EX <= 0;
		Zero_EX <= 0;
		end
		
	always@*
	begin
		case(ALU_Control_EX)
			ALUadd:	ALU_Result_EX <= Read_Data_forward_A_EX + ALU_Data_2_EX;
			ALUsub:	ALU_Result_EX <= Read_Data_forward_A_EX - ALU_Data_2_EX;
			ALUand:	ALU_Result_EX <= Read_Data_forward_A_EX & ALU_Data_2_EX;
			ALUor:	ALU_Result_EX <= Read_Data_forward_A_EX | ALU_Data_2_EX;
			ALUslt:	ALU_Result_EX <= Read_Data_forward_A_EX < ALU_Data_2_EX ? (1 - sign_mismatch) : (0 + sign_mismatch);
			ALUmul: ALU_Result_EX <= Read_Data_forward_A_EX * ALU_Data_2_EX;
			default:	ALU_Result_EX <= 32'bX;
		endcase	//end case
		
		Zero_EX <= ALU_Result_EX == 0;
		
		end	//always
		
endmodule // EX_ALU




   
   
