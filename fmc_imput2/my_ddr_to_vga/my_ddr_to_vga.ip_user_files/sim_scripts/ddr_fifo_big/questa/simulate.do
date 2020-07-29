onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ddr_fifo_big_opt

do {wave.do}

view wave
view structure
view signals

do {ddr_fifo_big.udo}

run -all

quit -force
