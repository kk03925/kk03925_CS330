vlog Adder.v Mux.v Control_Unit.v tb.v ALU_Control.v registerFile.v
vlog RISC_V_Processor.v Data_Memory.v Immediate_Data_Extractor.v 
vlog Instruction_Memory.v Instruction_parser.v module64.v Mux2.v Program_Counter.v
vsim -novopt work.tb
view wave

add wave \
{sim:/tb/clk } \
{sim:/tb/reset } 
add wave sim:/tb/*
add wave -r /*

run 300ns

