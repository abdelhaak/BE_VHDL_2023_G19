transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/MASTER2/BE_VHDL_2023_G19/gestion_verin/output_files/Gestion_MCP.vhd}

vcom -93 -work work {E:/MASTER2/BE_VHDL_2023_G19/gestion_verin/simulation/modelsim/TEST.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TEST

add wave *
view structure
view signals
run -all
