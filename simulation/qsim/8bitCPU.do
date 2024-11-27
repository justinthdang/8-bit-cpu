onerror {quit -f}
vlib work
vlog -work work 8bitCPU.vo
vlog -work work 8bitCPU.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.test_vlg_vec_tst
vcd file -direction 8bitCPU.msim.vcd
vcd add -internal test_vlg_vec_tst/*
vcd add -internal test_vlg_vec_tst/i1/*
add wave /*
run -all
