transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l xil_defaultlib \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_if_stage_0_0/sim/mycpu_top_block_if_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_id_stage_0_0/sim/mycpu_top_block_id_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_exe_stage_0_0/sim/mycpu_top_block_exe_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_mem_stage_0_0/sim/mycpu_top_block_mem_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_wb_stage_0_0/sim/mycpu_top_block_wb_stage_0_0.v" \
"../../../bd/mycpu_top_block/sim/mycpu_top_block.v" \

vlog -work xil_defaultlib \
"glbl.v"

