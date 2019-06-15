onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /alustim_testbench/dut/A
add wave -noupdate -radix decimal /alustim_testbench/dut/B
add wave -noupdate /alustim_testbench/dut/cntrl
add wave -noupdate -radix decimal /alustim_testbench/dut/result
add wave -noupdate /alustim_testbench/dut/negative
add wave -noupdate /alustim_testbench/dut/zero
add wave -noupdate /alustim_testbench/dut/overflow
add wave -noupdate /alustim_testbench/dut/carry_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1856907402 ps} 0}
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
WaveRestoreZoom {0 ps} {31710 us}
