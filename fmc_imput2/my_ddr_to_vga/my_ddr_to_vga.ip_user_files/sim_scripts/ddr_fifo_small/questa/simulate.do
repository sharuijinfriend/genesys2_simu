onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ddr_fifo_small_opt

do {wave.do}

view wave
view structure
view signals

do {ddr_fifo_small.udo}

run -all

quit -force
