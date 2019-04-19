vlog Instruction_Memory.v tb.v
vsim -novopt work.tb
view wave
add wave \
{sim:/tb/Inst_address } \
{sim:/tb/Instruction } 
run 300ns