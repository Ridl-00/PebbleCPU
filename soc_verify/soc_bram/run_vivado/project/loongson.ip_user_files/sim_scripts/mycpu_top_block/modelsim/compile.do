vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_if_stage_0_0/sim/mycpu_top_block_if_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_id_stage_0_0/sim/mycpu_top_block_id_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_exe_stage_0_0/sim/mycpu_top_block_exe_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_mem_stage_0_0/sim/mycpu_top_block_mem_stage_0_0.v" \
"../../../bd/mycpu_top_block/ip/mycpu_top_block_wb_stage_0_0/sim/mycpu_top_block_wb_stage_0_0.v" \
"../../../bd/mycpu_top_block/sim/mycpu_top_block.v" \

vlog -work xil_defaultlib \
"glbl.v"

