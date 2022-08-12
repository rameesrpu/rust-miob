vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_11
vlib riviera/zynq_ultra_ps_e_vip_v1_0_11
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/axi_timer_v2_0_27
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_27
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_25
vlib riviera/fifo_generator_v13_2_6
vlib riviera/axi_data_fifo_v2_1_24
vlib riviera/axi_crossbar_v2_1_26
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_protocol_converter_v2_1_25

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 riviera/axi_vip_v1_1_11
vmap zynq_ultra_ps_e_vip_v1_0_11 riviera/zynq_ultra_ps_e_vip_v1_0_11
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap axi_timer_v2_0_27 riviera/axi_timer_v2_0_27
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 riviera/axi_gpio_v2_0_27
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 riviera/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 riviera/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 riviera/axi_crossbar_v2_1_26
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_25 riviera/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"/global/software/vitis/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/global/software/vitis/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/global/software/vitis/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_11  -sv2k12 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/edt_zcu106/ip/edt_zcu106_zynq_ultra_ps_e_0_0/sim/edt_zcu106_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/edt_zcu106/sim/edt_zcu106.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_27 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/6c6b/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/edt_zcu106/ip/edt_zcu106_axi_timer_0_0/sim/edt_zcu106_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/edt_zcu106/ip/edt_zcu106_axi_gpio_0_0/sim/edt_zcu106_axi_gpio_0_0.vhd" \
"../../../bd/edt_zcu106/ip/edt_zcu106_axi_gpio_0_1/sim/edt_zcu106_axi_gpio_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/edt_zcu106/ip/edt_zcu106_xbar_0/sim/edt_zcu106_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/edt_zcu106/ip/edt_zcu106_rst_ps8_0_99M_0/sim/edt_zcu106_rst_ps8_0_99M_0.vhd" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl" "+incdir+../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl" "+incdir+/global/software/vitis/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/edt_zcu106/ip/edt_zcu106_auto_pc_0/sim/edt_zcu106_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

