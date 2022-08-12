-makelib xcelium_lib/xilinx_vip -sv \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/global/software/vitis/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/global/software/vitis/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/global/software/vitis/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/global/software/vitis/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_11 -sv \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/2fd3/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/edt_zcu106/ip/edt_zcu106_zynq_ultra_ps_e_0_0/sim/edt_zcu106_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
  "../../../bd/edt_zcu106/sim/edt_zcu106.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_27 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/6c6b/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/edt_zcu106/ip/edt_zcu106_axi_timer_0_0/sim/edt_zcu106_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_27 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/edt_zcu106/ip/edt_zcu106_axi_gpio_0_0/sim/edt_zcu106_axi_gpio_0_0.vhd" \
  "../../../bd/edt_zcu106/ip/edt_zcu106_axi_gpio_0_1/sim/edt_zcu106_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_24 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_26 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/edt_zcu106/ip/edt_zcu106_xbar_0/sim/edt_zcu106_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/edt_zcu106/ip/edt_zcu106_rst_ps8_0_99M_0/sim/edt_zcu106_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_25 \
  "../../../../design_example_1.gen/sources_1/bd/edt_zcu106/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/edt_zcu106/ip/edt_zcu106_auto_pc_0/sim/edt_zcu106_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

