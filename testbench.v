
`timescale 1ns / 1ns
module \testbench.v   ; 
 
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
  MIPS32  
   DUT  ( 
       .ForwardC (ForwardC ) ,
      .ID_Register_Write_to_Read (ID_Register_Write_to_Read ) ,
      .PCSrc_MEM (PCSrc_MEM ) ,
      .Branch_Dest_EX (Branch_Dest_EX ) ,
      .ForwardD (ForwardD ) ,
      .PC_Enable (PC_Enable ) ,
      .ForwardA_EX (ForwardA_EX ) ,
      .Branch_ID (Branch_ID ) ,
      .Write_Data_MUX_MEM (Write_Data_MUX_MEM ) ,
      .Zero_EX (Zero_EX ) ,
      .MemtoReg_ID (MemtoReg_ID ) ,
      .RegDst_ID (RegDst_ID ) ,
      .ALUOp_ID (ALUOp_ID ) ,
      .Next_PC_IF (Next_PC_IF ) ,
      .MemRead_ID (MemRead_ID ) ,
      .ALU_Result_WB (ALU_Result_WB ) ,
      .ALU_Data_2_EX (ALU_Data_2_EX ) ,
      .Comparetor_ID (Comparetor_ID ) ,
      .Instruction_IF (Instruction_IF ) ,
      .ID_Control_NOP (ID_Control_NOP ) ,
      .Clk (Clk ) ,
      .Read_Data_MEM (Read_Data_MEM ) ,
      .Write_Register_EX (Write_Register_EX ) ,
      .Forward_Mem_to_Mem (Forward_Mem_to_Mem ) ,
      .ForwardB_EX (ForwardB_EX ) ,
      .ALU_Result_EX (ALU_Result_EX ) ,
      .Sign_Extend_Instruction_ID (Sign_Extend_Instruction_ID ) ,
      .RegWrite_ID (RegWrite_ID ) ,
      .ALU_Control_EX (ALU_Control_EX ) ,
      .ALUSrc_ID (ALUSrc_ID ) ,
      .MemWrite_ID (MemWrite_ID ) ,
      .PC_Plus_4_IF (PC_Plus_4_IF ) ); 



// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 5 us, Period = 100 ns
  initial
  begin
   repeat(100)
   begin
	   Clk  = 1'b1  ;
	  #50  Clk  = 1'b0  ;
	  #50 ;
// 5 us, repeat pattern in loop.
   end
  end

  initial
	#10000 $stop;
endmodule
