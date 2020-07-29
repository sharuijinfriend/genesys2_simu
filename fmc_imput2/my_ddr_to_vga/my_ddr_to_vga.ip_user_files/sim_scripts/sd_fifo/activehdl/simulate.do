onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+sd_fifo -L xil_defaultlib -L xpm -L fifo_generator_v13_2_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sd_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {sd_fifo.udo}

run -all

endsim

quit -force
