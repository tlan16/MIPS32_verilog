// EX_ALU_Control decideds the operation need to be done is EX_ALU, depending on the opcode within the instruction.
// R type: and, sub, and, or, slt, mul
// I type: lw, sw, beq
// J type: jump and branch are handled in other sub modules

module EX_ALU_Control(
		      input [5:0] Sign_Extend_Instruction_EX, // Note: You only need 6 bits of this.
		      input [1:0]  ALUOp_EX,
		      output reg [3:0] ALU_Control_EX
		      );
				
	parameter	Rtype 		=	2'b10,//this is a 2 bit paramter,
					Radd			=	6'b100000,
					Rsub			=	6'b100010,
					Rand			=	6'b100100,
					Ror			=	6'b100101,
					Rslt			=	6'b101010,
					Rmul			=  6'b100001;	//this is a function code of addu but we treat it as mul.s
	
	parameter	lwsw			=	2'b00,		//since LW and SW use the same bit pattern, only way to store them as a paramter
					Itype			=	2'b01,		// beq
					xis			=	6'bXXXXXX;
		
	
	parameter	ALUadd		=	4'b0010,
					ALUsub		=	4'b0110,
					ALUand		=	4'b0000,
					ALUor			=	4'b0001,
					ALUslt		=	4'b0111,
					ALUmul		=	4'b1111;
					
	parameter	unknown		=	2'b11,
					ALUx			=	4'b0011;
	
	wire [5:0]funct;
	assign funct = Sign_Extend_Instruction_EX[5:0];
	
	initial begin
		ALU_Control_EX <= ALUx;
	end

	always@* begin
/*
		if(ALUOp_EX == Rtype) begin
			case(funct)
				Radd:			ALU_Control_EX <= ALUadd;
				Rsub:			ALU_Control_EX <= ALUsub;
				Rand:			ALU_Control_EX <= ALUand;
				Ror:			ALU_Control_EX <= ALUor;
				Rslt:			ALU_Control_EX <= ALUslt;
				default:		ALU_Control_EX <= ALUx;
			endcase
		end //if
		
		else if(ALUOp_EX == lwsw) begin
			ALU_Control_EX <= ALUadd;
		end //else if
		
		else if(ALUOp_EX == Itype) begin
			ALU_Control_EX	<= ALUsub;
		end //else if
		
		else if(ALUOp_EX == unknown) begin
			ALU_Control_EX	<= ALUx;
		end //else if
		
		else begin ALU_Control_EX <= ALU_Control_EX; end
*/

		case(ALUOp_EX)
			Rtype: begin
				case(funct)
					Radd:			ALU_Control_EX <= ALUadd;
					Rsub:			ALU_Control_EX <= ALUsub;
					Rand:			ALU_Control_EX <= ALUand;
					Ror:			ALU_Control_EX <= ALUor;
					Rslt:			ALU_Control_EX <= ALUslt;
					Rmul: 		ALU_Control_EX	<= ALUmul;
					default:		ALU_Control_EX <= ALUx;
				endcase
			end
			lwsw: ALU_Control_EX <= ALUadd;
			Itype: ALU_Control_EX	<= ALUsub;
			unknown: ALU_Control_EX	<= ALUx;
			default: ALU_Control_EX <= ALU_Control_EX;
		endcase

		
	end //always
			
endmodule // EX_ALU_Control





   
   
