transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/WB_MemtoReg_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/MEM_WB_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/MEM_Branch_AND.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/IF_PC_Reg.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/IF_PC_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/IF_PC_Add.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/IF_ID_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/ID_Sign_Extension.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/ID_EX_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/ID_Control.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/EX_Shift_Left_2.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/EX_PC_Add.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/EX_MEM_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/EX_Dest_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/EX_ALU_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/EX_ALU_Control.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/EX_ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/MIPS32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/MEM_Data_Memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/IF_Instruction_Memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/ID_Registers.v}

