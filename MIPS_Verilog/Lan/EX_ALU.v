// ALU do the following operation
// addition, subtraction, bitwise logic and, bitwise logic or, set less than by comparison, multiplication
// signed calculation is considered and handled.
// sign mismatch for set less than is considered and handled.


module EX_ALU(
	      input signed [31:0]  Read_Data_1_EX,
	      input signed [31:0]  ALU_Data_2_EX,
	      input 		 [3:0]   ALU_Control_EX,
	      output reg 	 [31:0]  ALU_Result_EX,
	      output 	  				Zero_EX
	      
	      );

	parameter	ALUadd		=	4'b010,
					ALUsub		=	4'b110,  
					ALUand		=	4'b000,
					ALUor			=	4'b001,
					ALUslt		=	4'b111,
					ALUmul		= 	4'b1111;
					
	initial
		begin
			ALU_Result_EX <= 32'd0;
		end
	
	// Handles negative inputs
	wire sign_mismatch;
	assign sign_mismatch = (Read_Data_1_EX[31]==ALU_Data_2_EX[31]);
	
	always@* begin
		case(ALU_Control_EX)
			ALUadd:			ALU_Result_EX <= Read_Data_1_EX + ALU_Data_2_EX;
			ALUsub:			ALU_Result_EX <= Read_Data_1_EX - ALU_Data_2_EX;
			ALUand:			ALU_Result_EX <= Read_Data_1_EX & ALU_Data_2_EX;
			ALUor:			ALU_Result_EX <= Read_Data_1_EX | ALU_Data_2_EX;
			ALUslt:			ALU_Result_EX <= Read_Data_1_EX < ALU_Data_2_EX ? (1 - sign_mismatch) : (0 + sign_mismatch);		
			ALUmul: 			ALU_Result_EX <= Read_Data_1_EX * ALU_Data_2_EX;
			default:			ALU_Result_EX <= 32'bx;	// control = ALUx | *
		endcase
	end //always
	
	assign Zero_EX = (ALU_Result_EX==0);
	
endmodule // EX_ALU