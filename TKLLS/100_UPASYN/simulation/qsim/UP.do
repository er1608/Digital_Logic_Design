onerror {quit -f}
vlib work
vlog -work work UP.vo
vlog -work work UP.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.UP_vlg_vec_tst
vcd file -direction UP.msim.vcd
vcd add -internal UP_vlg_vec_tst/*
vcd add -internal UP_vlg_vec_tst/i1/*
add wave /*
run -all
