vlog Data_Memory.v tb.v
vsim -novopt work.tb
view wave
add wave \
{sim:/tb/Mem_Addr } \
{sim:/tb/Write_Data } \
{sim:/tb/clk } \
{sim:/tb/MemWrite } \
{sim:/tb/MemRead } \
{sim:/tb/Read_Data } 
run 300ns