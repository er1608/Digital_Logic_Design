onerror {quit -f}
vlib work
vlog -work work Lab1_21522233.vo
vlog -work work Lab1_21522233.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab1_21522233_vlg_vec_tst
vcd file -direction Lab1_21522233.msim.vcd
vcd add -internal Lab1_21522233_vlg_vec_tst/*
vcd add -internal Lab1_21522233_vlg_vec_tst/i1/*
add wave /*
run -all