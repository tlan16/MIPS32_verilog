// ID_Control outputs important control signals, most of these signals will be feed into flowing 
// pipeline, hence into other stages.
// Rtype, lw, sw, beq, nop and jump are handled.
// Control signal is based on opcode, which is [31:26] of Instruction_ID.
// When ID_Control_NOP  is logic one, nop control signals are forced to the outputs regardless 
// opcode.
// ID_Control_NOP is from Hazard handling unit.


module ID_Control(
		  input [5:0] 		 Instruction_ID,
		  input		  		 ID_Control_NOP,
		  output reg       RegWrite_ID,
		  output reg       MemtoReg_ID,
		  
		  output reg       Branch_ID,
		  output reg 		 Jump_Control_ID,
		  output reg       MemRead_ID,
		  output reg       MemWrite_ID,
		  
		  output reg       RegDst_ID,
		  output reg [1:0] ALUOp_ID,
		  output reg       ALUSrc_ID
		  );
	
	parameter RTYPE	= 6'b000000; 
	parameter LW		= 6'b100011;
	parameter SW		= 6'b101011;
	parameter BEQ		= 6'b000100;
	parameter NOP		= 6'b100000;	
	parameter JUMP		= 6'b000010;
	
	wire [5:0]opcode;
	assign opcode = (ID_Control_NOP & (Instruction_ID != BEQ)) ? NOP : Instruction_ID;
	
	initial 
	 begin
		RegDst_ID 		<= 0;
		ALUOp_ID 		<= 2'd0;
		ALUSrc_ID 		<= 0;
		
		Branch_ID		<= 0;
		Jump_Control_ID<= 0;
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
				Jump_Control_ID<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b1;
				ALUOp_ID		<= 2'b10;
				ALUSrc_ID	<= 1'b0;
			end //RTYPE
			LW: begin
				RegWrite_ID <= 1'b1;
				MemtoReg_ID <= 1'b1;
				Branch_ID	<= 1'b0;
				Jump_Control_ID<= 1'b0;
				MemRead_ID	<= 1'b1;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b0;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b1;
			end //LW
			SW: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'b0;
				Branch_ID	<= 1'b0;
				Jump_Control_ID<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b1;
				RegDst_ID	<= 1'bx;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b1;
			end //SW
			BEQ: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'b0;
				Branch_ID	<= 1'b1;
				Jump_Control_ID<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'bx;
				ALUOp_ID		<= 2'b01;
				ALUSrc_ID	<= 1'b0;
			end //BEQ
			NOP: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'b0;
				Branch_ID	<= 1'b0;
				Jump_Control_ID<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b0;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b0;
			end //NOP
			JUMP: begin
				RegDst_ID		<= 1'b0;
				ALUOp_ID			<= 2'b00;
				ALUSrc_ID		<= 1'b0;
				Branch_ID		<= 1'b0;
				Jump_Control_ID <= 1'b1;	
				MemRead_ID		<= 1'b0;
				MemWrite_ID		<= 1'b0;
				RegWrite_ID 	<= 1'b0;
				MemtoReg_ID 	<= 1'b0;	
			end //JUMP
			default: begin
				RegWrite_ID <= 1'b0;
				MemtoReg_ID <= 1'b0;
				Branch_ID	<= 1'b0;
				Jump_Control_ID<= 1'b0;
				MemRead_ID	<= 1'b0;
				MemWrite_ID	<= 1'b0;
				RegDst_ID	<= 1'b0;
				ALUOp_ID		<= 2'b00;
				ALUSrc_ID	<= 1'b0;
			end
		endcase
	end //always
endmodule // ID_Control




   
   
