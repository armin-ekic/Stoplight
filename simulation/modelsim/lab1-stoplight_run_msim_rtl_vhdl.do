transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/tyspa/OneDrive/Spring 2020/ECE475/Lab 1 Stoplight/clock.vhd}
vcom -93 -work work {C:/Users/tyspa/OneDrive/Spring 2020/ECE475/Lab 1 Stoplight/stoplight_fsm.vhd}
vcom -93 -work work {C:/Users/tyspa/OneDrive/Spring 2020/ECE475/Lab 1 Stoplight/components.vhd}
vcom -93 -work work {C:/Users/tyspa/OneDrive/Spring 2020/ECE475/Lab 1 Stoplight/main.vhd}

