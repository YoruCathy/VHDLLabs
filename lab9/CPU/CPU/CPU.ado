setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/70735/Desktop/CPU/CPU/CPU.adf"]} { 
	design create CPU "C:/Users/70735/Desktop/CPU"
  set newDesign 1
}
design open "C:/Users/70735/Desktop/CPU/CPU"
cd "C:/Users/70735/Desktop/CPU"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/70735/Desktop/CPU/CPU/sram64kx8_syn.vhd"
addfile "C:/Users/70735/Desktop/CPU/CPU/tb02cpu2.vhd"
addfile "C:/Users/70735/Desktop/CPU/CPU/cpu2system.vhd"
addfile "C:/Users/70735/Desktop/CPU/CPU/testbench.vhd"
vlib "C:/Users/70735/Desktop/CPU/CPU/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/70735/Desktop/CPU/CPU/sram64kx8_syn.vhd"
vcom -dbg -work work "C:/Users/70735/Desktop/CPU/CPU/tb02cpu2.vhd"
vcom -dbg -work work "C:/Users/70735/Desktop/CPU/CPU/cpu2system.vhd"
vcom -dbg -work work "C:/Users/70735/Desktop/CPU/CPU/testbench.vhd"
entity testbench
vsim  +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
