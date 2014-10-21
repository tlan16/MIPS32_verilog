// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module EX_ALU_Control(
		      input [31:0] Sign_Extend_Instruction_EX, // Note: You only need 6 bits of this.
		      input [1:0]  ALUOp_EX,
		      output reg [3:0] ALU_Control_EX
		      );

   parameter	Rtype 		=	2'b10,//this is a 2 bit paramter,
			//These are the function field paramters for Rtype. Use Fig 3.2 to complete
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
	
	initial
		ALU_Control_EX <= 0;
	
	always@* begin
		
		if (ALUOp_EX == Rtype)
		 begin
			case(Sign_Extend_Instruction_EX[5:0])
			   //assign the correct select value baesd on the function field.
				//Use Fig 3.2 to aid you in this.
				Radd:			ALU_Control_EX <= ALUadd;
				Rsub:			ALU_Control_EX <= ALUsub;
				Rand:			ALU_Control_EX <= ALUand;
				Ror:			ALU_Control_EX <= ALUor;
				Rslt:			ALU_Control_EX <= ALUslt;
				Rmul: 		ALU_Control_EX	<= ALUmul;
				default:		ALU_Control_EX <= ALUx;
			endcase
	    end
		 
		//For all Other Types. Use figure 3.2 to help you out. 
		//Feel free to reuse any of the paramters defined aove.
		
		else if (ALUOp_EX == lwsw)
      begin
			ALU_Control_EX <= ALUadd;
		end
		
		else if (ALUOp_EX == Itype)
      begin		
		   ALU_Control_EX <= ALUsub;
		end
		
		else if (ALUOp_EX == unknown)
	    begin	
   		ALU_Control_EX <= ALUx;
		end
		// Redundant for completness
		else
		 begin
			ALU_Control_EX <= ALU_Control_EX;			
	    end	
	end

endmodule // EX_ALU_Control
