// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module ID_Control(
		  input [31:0] Instruction_ID,
		  output  reg     RegWrite_ID,
		  output  reg    	MemtoReg_ID,
		  
		  output  reg     Branch_ID,
		  output  reg     MemRead_ID,
		  output  reg     MemWrite_ID,
		  
		  output  reg  	RegDst_ID,
		  output  reg		[1:0] ALUOp_ID,
		  output  reg     ALUSrc_ID
		  );
	wire [5:0]opcode;
   assign opcode = Instruction_ID[31:26];
	parameter RTYPE	= 6'b000000; 
	parameter LW		= 6'b100011;
	parameter SW		= 6'b101011;
	parameter BEQ		= 6'b000100;
	parameter NOP		= 6'b100000;	
	
	initial
		begin
		RegWrite_ID 	<= 1'b0;
		MemtoReg_ID 	<= 1'b0;
		Branch_ID		<= 1'b0;
		MemRead_ID		<= 1'b0;
		MemWrite_ID		<= 1'b0;
		RegDst_ID		<= 1'b0;
		ALUOp_ID			<= 2'b00;
		ALUSrc_ID		<= 1'b0;
		end

	always@(opcode)
		begin
			case(opcode)
				RTYPE: begin
					RegDst_ID		<= 1'b1;
					ALUOp_ID			<= 2'b10;
					ALUSrc_ID		<= 1'b0;
					Branch_ID		<= 1'b0;
					MemRead_ID		<= 1'b0;
					MemWrite_ID		<= 1'b0;
					RegWrite_ID 	<= 1'b1;
					MemtoReg_ID 	<= 1'b0;
				end // RTYPE
			
				LW: begin
					RegDst_ID		<= 1'b0;
					ALUOp_ID			<= 2'b00;
					ALUSrc_ID		<= 1'b1;
					Branch_ID		<= 1'b0;
					MemRead_ID		<= 1'b1;
					MemWrite_ID		<= 1'b0;
					RegWrite_ID 	<= 1'b1;
					MemtoReg_ID 	<= 1'b1;
				end // LW
		
				SW: begin
					RegDst_ID		<= 1'bx;
					ALUOp_ID			<= 2'b00;
					ALUSrc_ID		<= 1'b1;
					Branch_ID		<= 1'b0;
					MemRead_ID		<= 1'b0;
					MemWrite_ID		<= 1'b1;
					RegWrite_ID 	<= 1'b0;
					MemtoReg_ID 	<= 1'bx;
				end // SW
		
				BEQ: begin
					RegDst_ID		<= 1'bx;
					ALUOp_ID			<= 2'b01;
					ALUSrc_ID		<= 1'b0;
					Branch_ID		<= 1'b1;
					MemRead_ID		<= 1'b0;
					MemWrite_ID		<= 1'b0;
					RegWrite_ID 	<= 1'b0;
					MemtoReg_ID 	<= 1'bx;
				end // BEQ
		
				default: begin
					RegDst_ID		<= 1'b0;
					ALUOp_ID			<= 2'b00;
					ALUSrc_ID		<= 1'b0;
					Branch_ID		<= 1'b0;
					MemRead_ID		<= 1'b0;
					MemWrite_ID		<= 1'b0;
					RegWrite_ID 	<= 1'b0;
					MemtoReg_ID 	<= 1'b0;
				end //default
			endcase
		end
		
endmodule // ID_Control




   
   
