transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mycpu_top_block  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mycpu_top_block xil_defaultlib.glbl

do {mycpu_top_block.udo}

run 1000ns

endsim

quit -force
