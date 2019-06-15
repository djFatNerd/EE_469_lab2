onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ALU_single_testbench/dut/a_i
add wave -noupdate /ALU_single_testbench/dut/b_i
add wave -noupdate /ALU_single_testbench/dut/cin_i
add wave -noupdate /ALU_single_testbench/dut/sel_i
add wave -noupdate /ALU_single_testbench/dut/out_o
add wave -noupdate /ALU_single_testbench/dut/co_o
add wave -noupdate /ALU_single_testbench/dut/not_b
add wave -noupdate /ALU_single_testbench/dut/final_b
add wave -noupdate /ALU_single_testbench/dut/sum
add wave -noupdate /ALU_single_testbench/dut/bitand
add wave -noupdate /ALU_single_testbench/dut/bitor
add wave -noupdate /ALU_single_testbench/dut/bitxor
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29424 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {698250 ps}
