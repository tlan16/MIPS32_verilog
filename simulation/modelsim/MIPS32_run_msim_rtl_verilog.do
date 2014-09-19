transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/WB_MemtoReg_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/MIPS32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/MEM_WB_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/MEM_Branch_AND.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/IF_PC_Reg.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/IF_PC_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/IF_PC_Add.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/IF_ID_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/ID_Sign_Extension.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/ID_EX_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/ID_Control.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_Shift_Left_2.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_PC_Add.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_MEM_Pipeline_Stage.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_Dest_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_ALU_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_ALU_Control.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_Forward_A.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/MEM_to_MEM_Forward.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/ID_Read_data_Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/ID_Jump.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/Hazard_Handling_Unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/MEM_Data_Memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/IF_Instruction_Memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/ID_Registers.v}
vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/EX_Forward_Unit.v}

vlog -vlog01compat -work work +incdir+C:/Users/Frank-Laptop/Documents/MIPS32_verilog/simulation/modelsim {C:/Users/Frank-Laptop/Documents/MIPS32_verilog/simulation/modelsim/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
