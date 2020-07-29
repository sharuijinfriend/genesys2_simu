onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ddr_fifo_small -L xil_defaultlib -L xpm -L fifo_generator_v13_2_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ddr_fifo_small xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ddr_fifo_small.udo}

run -all

endsim

quit -force
