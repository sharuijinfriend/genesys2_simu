onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DDR3_CONTROL_opt

do {wave.do}

view wave
view structure
view signals

do {DDR3_CONTROL.udo}

run -all

quit -force
