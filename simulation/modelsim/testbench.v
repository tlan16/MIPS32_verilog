
`timescale 1ns / 1ns
module testbench  ; 
 
  wire    ForwardC   ; 
  wire  [1:0]  ID_Register_Write_to_Read   ; 
  wire    PCSrc_MEM   ; 
  wire  [31:0]  Branch_Dest_EX   ; 
  wire    ForwardD   ; 
  wire    PC_Enable   ; 
  wire  [1:0]  ForwardA_EX   ; 
  wire    Branch_ID   ; 
  wire  [31:0]  Write_Data_MUX_MEM   ; 
  wire    Zero_EX   ; 
  wire    MemtoReg_ID   ; 
  wire    RegDst_ID   ; 
  wire  [1:0]  ALUOp_ID   ; 
  wire  [31:0]  Next_PC_IF   ; 
  wire    MemRead_ID   ; 
  wire  [31:0]  ALU_Result_WB   ; 
  wire  [31:0]  ALU_Data_2_EX   ; 
  wire    Comparetor_ID   ; 
  wire  [31:0]  Instruction_IF   ; 
  wire    ID_Control_NOP   ; 
  reg    Clk   ; 
  wire  [31:0]  Read_Data_MEM   ; 
  wire  [4:0]  Write_Register_EX   ; 
  wire    Forward_Mem_to_Mem   ; 
  wire  [1:0]  ForwardB_EX   ; 
  wire  [31:0]  ALU_Result_EX   ; 
  wire  [31:0]  Sign_Extend_Instruction_ID   ; 
  wire    RegWrite_ID   ; 
  wire  [3:0]  ALU_Control_EX   ; 
  wire    ALUSrc_ID   ; 
  wire    MemWrite_ID   ; 
  wire  [31:0]  PC_Plus_4_IF   ; 
  wire	 MemWrite_MEM ;
  MIPS32  
   DUT  ( 
			.MemWrite_MEM(MemWrite_MEM),
			.Write_Data_MUX_MEM (Write_Data_MUX_MEM ) ,
			.Next_PC_IF (Next_PC_IF ) ,
			.Instruction_IF (Instruction_IF ) ,
			.Clk (Clk ) ,
			.ALU_Result_EX (ALU_Result_EX ) ); 



// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 5 us, Period = 100 ns
  initial
  begin
	 repeat(10000)
		begin
			Clk = 1'b1;
			#50 Clk  = 1'b0  ;
			#50;
		end
// dumped values till 5 ns
  end

  initial
	#200000 $stop;
endmodule
