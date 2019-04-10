vlog Adder.v Instruction_Fetch.v Instruction_Memory.v Program_Counter.v tb.v
vsim -novopt work.tb
view waves
add wave sim:/tb/IF_tb/*

run 200 ns