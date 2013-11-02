onbreak {resume}
transcript on

set PrefMain(saveLines) 50000
.main clear

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

# load designs
vlog -sv -work rtl_work SRAM_BIST.v
vlog -sv -work rtl_work PB_Controller.v
vlog -sv -work rtl_work +define+SIMULATION SRAM_Controller.v
vlog -sv -work rtl_work tb_SRAM_Emulator.v
vlog -sv -work rtl_work exercise1.v
vlog -sv -work rtl_work tb_exercise1.v

# specify library for simulation
vsim -t 100ps -L altera_mf_ver -lib rtl_work tb_exercise1

# Clear previous simulation
restart -f

# run complete simulation
run -all

destroy .structure
destroy .signals
destroy .source

simstats
