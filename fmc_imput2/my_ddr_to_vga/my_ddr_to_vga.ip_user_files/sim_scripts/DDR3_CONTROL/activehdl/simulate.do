onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+DDR3_CONTROL -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.DDR3_CONTROL xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {DDR3_CONTROL.udo}

run -all

endsim

quit -force
