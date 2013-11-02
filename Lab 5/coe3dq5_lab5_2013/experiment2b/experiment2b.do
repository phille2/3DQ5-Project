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
vlog -sv -svinputport=var -work rtl_work VGA_Controller.v
vlog -sv -svinputport=var -work rtl_work PB_Controller.v
vlog -sv -svinputport=var -work rtl_work +define+SIMULATION SRAM_Controller.v
vlog -sv -svinputport=var -work rtl_work tb_SRAM_Emulator.v
vlog -sv -svinputport=var -work rtl_work experiment2b.v
vlog -sv -svinputport=var -work rtl_work tb_experiment2b.v

# specify library for simulation
vsim -t 100ps -L altera_mf_ver -lib rtl_work tb_experiment2b

# Clear previous simulation
restart -f

# run complete simulation
run -all

destroy .structure
destroy .signals
destroy .source

simstats
