
`timescale 1ns / 1ns
module testbench  ; 
 
  wire    Forward_D   ; 
  wire  [31:0]  Read_Data_1_ID   ; 
  wire    Branch_ID   ; 
  wire    Forward_MEM   ; 
  wire    Zero_ID   ; 
  wire    Zero_EX   ; 
  wire    MemtoReg_ID   ; 
  wire  [31:0]  Read_Data_forward_MEM_MEM   ; 
  wire  [31:0]  Read_Data_WB   ; 
  wire  [1:0]  ALUOp_ID   ; 
  wire  [31:0]  ALU_Result_MEM   ; 
  wire  [31:0]  Instruction_EX   ; 
  wire  [31:0]  Instruction_ID   ; 
  wire    IF_ID_pipeline_stall   ; 
  wire  [31:0]  Next_PC_IF   ; 
  wire    MemRead_ID   ; 
  wire  [1:0]  Forward_Reg_Delay   ; 
  wire    ID_Control_Noop   ; 
  wire  [31:0]  ALU_Result_WB   ; 
  wire  [31:0]  ALU_Data_2_EX   ; 
  wire  [31:0]  Instruction_IF   ; 
  wire    pc_stall   ; 
  wire  [31:0]  Write_Data_MEM   ; 
  reg    Clk   ; 
  wire  [5:0]  clkout   ; 
  wire  [31:0]  Read_Data_MEM   ; 
  wire  [4:0]  Write_Register_EX   ; 
  wire  [31:0]  Write_Data_WB   ; 
  wire  [31:0]  ALU_Result_EX   ; 
  wire  [1:0]  Forward_A   ; 
  wire  [4:0]  Read_Address_1_ID   ; 
  wire  [1:0]  Forward_B   ; 
  wire  [3:0]  ALU_Control_EX   ; 
  wire    ALUSrc_ID   ; 
  wire    MemWrite_ID   ; 
  wire    Forward_C   ; 
  wire    PCSrc_ID   ; 
  Mips  
   DUT  ( 
       .Forward_D (Forward_D ) ,
      .Read_Data_1_ID (Read_Data_1_ID ) ,
      .Branch_ID (Branch_ID ) ,
      .Forward_MEM (Forward_MEM ) ,
      .Zero_ID (Zero_ID ) ,
      .Zero_EX (Zero_EX ) ,
      .MemtoReg_ID (MemtoReg_ID ) ,
      .Read_Data_forward_MEM_MEM (Read_Data_forward_MEM_MEM ) ,
      .Read_Data_WB (Read_Data_WB ) ,
      .ALUOp_ID (ALUOp_ID ) ,
      .ALU_Result_MEM (ALU_Result_MEM ) ,
      .Instruction_EX (Instruction_EX ) ,
      .Instruction_ID (Instruction_ID ) ,
      .IF_ID_pipeline_stall (IF_ID_pipeline_stall ) ,
      .Next_PC_IF (Next_PC_IF ) ,
      .MemRead_ID (MemRead_ID ) ,
      .Forward_Reg_Delay (Forward_Reg_Delay ) ,
      .ID_Control_Noop (ID_Control_Noop ) ,
      .ALU_Result_WB (ALU_Result_WB ) ,
      .ALU_Data_2_EX (ALU_Data_2_EX ) ,
      .Instruction_IF (Instruction_IF ) ,
      .pc_stall (pc_stall ) ,
      .Write_Data_MEM (Write_Data_MEM ) ,
      .Clk (Clk ) ,
      .clkout (clkout ) ,
      .Read_Data_MEM (Read_Data_MEM ) ,
      .Write_Register_EX (Write_Register_EX ) ,
      .Write_Data_WB (Write_Data_WB ) ,
      .ALU_Result_EX (ALU_Result_EX ) ,
      .Forward_A (Forward_A ) ,
      .Read_Address_1_ID (Read_Address_1_ID ) ,
      .Forward_B (Forward_B ) ,
      .ALU_Control_EX (ALU_Control_EX ) ,
      .ALUSrc_ID (ALUSrc_ID ) ,
      .MemWrite_ID (MemWrite_ID ) ,
      .Forward_C (Forward_C ) ,
      .PCSrc_ID (PCSrc_ID ) ); 



// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  initial
  begin
   repeat(2500)
   begin
	   Clk  = 1'b1  ;
	  #50  Clk  = 1'b0  ;
	  #50 ;
// 1 us, repeat pattern in loop.
   end
  end

  initial
	#200000 $stop;
endmodule
