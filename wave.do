onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS32/CLOCK_50
add wave -noupdate /MIPS32/PC_Plus_4_IF
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1360 ps} 0}
configure wave -namecolwidth 124
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {34240 ps}
