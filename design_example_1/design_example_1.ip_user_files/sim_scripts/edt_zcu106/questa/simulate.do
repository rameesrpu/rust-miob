onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib edt_zcu106_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {edt_zcu106.udo}

run -all

quit -force
