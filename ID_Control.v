// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module ID_Control(
		  input [5:0] Instruction_ID,
		  output reg       RegWrite_ID,
		  output reg       MemtoReg_ID,
		  
		  output reg       Branch_ID,
		  output reg       MemRead_ID,
		  output reg       MemWrite_ID,
		  
		  output reg       RegDst_ID,
		  output reg [1:0] ALUOp_ID,
		  output reg       ALUSrc_ID
		  );

	wire [5:0]opcode;
	assign opcode = Instruction_ID;
	
	parameter RTYPE	= 6'b000000; 
	parameter LW		= 6'b100011;
	parameter SW		= 6'b101011;
	parameter BEQ		= 6'b000100;
	parameter NOP		= 6'b100000;	
	
	initial 
	 begin
		 /*  
		     We assign decimal representation of 0 to our outpur REG's here. 
		     Note the difference 
		 */
		RegDst_ID 		<= 0;
		ALUOp_ID 		<= 2'd0;
		ALUSrc_ID 		<= 0;
		
		Branch_ID		<= 0;
		MemRead_ID		<= 0;
		MemWrite_ID		<= 0;
		
		RegWrite_ID		<= 0;
		MemtoReg_ID		<= 0;
	end
	
	always@* begin
		case(opcode)
			RTYPE: begin
				RegWrite_ID <= 1'b1;
				MemtoReg_ID <= 1'b0;
				Branch_ID	<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b1;
				ALUOp_ID		<= 2'b10;
				ALUSrc_ID	<= 1'b0;
			end
			LW: begin
				RegWrite_ID <= 1'b1;
				MemtoReg_ID <= 1'b1;
				Branch_ID	<= 1'b0;
				MemRead_ID	<= 1'b1;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b0;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b1;
			end
			SW: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'bx;
				Branch_ID	<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b1;
				RegDst_ID	<= 1'bx;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b1;
			end
			BEQ: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'bx;
				Branch_ID	<= 1'b1;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'bx;
				ALUOp_ID		<= 2'b01;
				ALUSrc_ID	<= 1'b0;
			end
			NOP: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'b0;
				Branch_ID	<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b0;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b0;
			end
			default: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'b0;
				Branch_ID	<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b0;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b0;
			end
		endcase
	end //always
endmodule // ID_Control




   
   
