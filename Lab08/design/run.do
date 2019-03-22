vlog tb.v ALU_Control.v Control_Unit.v top_control.v
vsim -novopt work.tb
view waves
add wave sim:/tb/tc/*

run 200 ns