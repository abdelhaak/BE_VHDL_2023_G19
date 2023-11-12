onerror {exit -code 1}
vlib work
vcom -work work traitement_compas.vho
vcom -work work Waveform1.vwf.vht
vsim -novopt -c -t 1ps -sdfmax traitement_compas_vhd_vec_tst/i1=traitement_compas_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.traitement_compas_vhd_vec_tst
vcd file -direction traitement_compas.msim.vcd
vcd add -internal traitement_compas_vhd_vec_tst/*
vcd add -internal traitement_compas_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

