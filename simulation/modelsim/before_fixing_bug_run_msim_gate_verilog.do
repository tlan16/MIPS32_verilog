transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {before_fixing_bug.vo}

vlog -vlog01compat -work work +incdir+C:/Users/Frank-Desktop/Documents/MIPS32_verilog/simulation/modelsim {C:/Users/Frank-Desktop/Documents/MIPS32_verilog/simulation/modelsim/testbench.v}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all