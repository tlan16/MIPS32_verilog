view wave 
wave clipboard store
wave create -pattern none -portmode input -language vlog /MIPS32/Clk 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/PC_Plus_4_IF 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/Instruction_IF 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/Next_PC_IF 
wave create -pattern none -portmode output -language vlog /MIPS32/PC_Enable 
wave create -pattern none -portmode output -language vlog /MIPS32/RegDst_ID 
wave create -pattern none -portmode output -language vlog -range 1 0 /MIPS32/ALUOp_ID 
wave create -pattern none -portmode output -language vlog /MIPS32/ALUSrc_ID 
wave create -pattern none -portmode output -language vlog /MIPS32/Branch_ID 
wave create -pattern none -portmode output -language vlog /MIPS32/MemRead_ID 
wave create -pattern none -portmode output -language vlog /MIPS32/MemWrite_ID 
wave create -pattern none -portmode output -language vlog /MIPS32/RegWrite_ID 
wave create -pattern none -portmode output -language vlog /MIPS32/MemtoReg_ID 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/Sign_Extend_Instruction_ID 
wave create -pattern none -portmode output -language vlog /MIPS32/ID_Control_NOP 
wave create -pattern none -portmode output -language vlog -range 1 0 /MIPS32/ID_Register_Write_to_Read 
wave create -pattern none -portmode output -language vlog /MIPS32/Comparetor_ID 
wave create -pattern none -portmode output -language vlog -range 1 0 /MIPS32/ForwardA_EX 
wave create -pattern none -portmode output -language vlog -range 1 0 /MIPS32/ForwardB_EX 
wave create -pattern none -portmode output -language vlog /MIPS32/Forward_Mem_to_Mem 
wave create -pattern none -portmode output -language vlog /MIPS32/ForwardC 
wave create -pattern none -portmode output -language vlog /MIPS32/ForwardD 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/ALU_Data_2_EX 
wave create -pattern none -portmode output -language vlog -range 3 0 /MIPS32/ALU_Control_EX 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/ALU_Result_EX 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/Branch_Dest_EX 
wave create -pattern none -portmode output -language vlog -range 4 0 /MIPS32/Write_Register_EX 
wave create -pattern none -portmode output -language vlog /MIPS32/Zero_EX 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/Read_Data_MEM 
wave create -pattern none -portmode output -language vlog /MIPS32/PCSrc_MEM 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/Write_Data_MUX_MEM 
wave create -pattern none -portmode output -language vlog -range 31 0 /MIPS32/ALU_Result_WB 
wave modify -driver freeze -pattern clock -initialvalue (no value) -period 100ns -dutycycle 50 -starttime 0ns -endtime 5000ns NewSig:/MIPS32/Clk 
{wave export -file C:/Users/Frank-Laptop/Documents/MIPS32_verilog/simulation/modelsim/testbench -starttime 0 -endtime 5000 -format vlog -designunit MIPS32} 
WaveCollapseAll -1
wave clipboard restore
