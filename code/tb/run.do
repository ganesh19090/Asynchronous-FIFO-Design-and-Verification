vlog list.svh
vopt tb +cover=fcbest -o EMPTY
vsim -novopt -suppress 12110 tb +test_name=EMPTY
coverage save -onexit EMPTY.ucdb
add wave -r sim:/tb/pif/*
run -all
