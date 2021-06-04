onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ece475_lab1/clk
add wave -noupdate /ece475_lab1/start
add wave -noupdate /ece475_lab1/restart
add wave -noupdate /ece475_lab1/T
add wave -noupdate /ece475_lab1/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {578013 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 172
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {29295 ps} {1051090 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/ece475_lab1/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns sim:/ece475_lab1/start 
wave create -driver freeze -pattern clock -initialvalue U -period 1000ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/ece475_lab1/restart 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/ece475_lab1/restart 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 200ns Edit:/ece475_lab1/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 200ns Edit:/ece475_lab1/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ns -endtime 400ns Edit:/ece475_lab1/start 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/ece475_lab1/T 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 800ns Edit:/ece475_lab1/T 
wave modify -driver freeze -pattern constant -value 1 -starttime 700ns -endtime 800ns Edit:/ece475_lab1/restart 
wave modify -driver freeze -pattern constant -value 0 -starttime 700ns -endtime 800ns Edit:/ece475_lab1/restart 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ns -endtime 700ns Edit:/ece475_lab1/T 
wave modify -driver freeze -pattern constant -value 0 -starttime 700ns -endtime 800ns Edit:/ece475_lab1/T 
wave modify -driver freeze -pattern constant -value 1 -starttime 800ns -endtime 900ns Edit:/ece475_lab1/T 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 500ns Edit:/ece475_lab1/T 
wave modify -driver freeze -pattern constant -value 1 -starttime 540ns -endtime 700ns Edit:/ece475_lab1/restart 
WaveCollapseAll -1
wave clipboard restore
