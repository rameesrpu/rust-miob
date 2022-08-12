# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/jkl-rpu/workspace_mpsoc_preset/tmr_psled_r5_system/_ide/scripts/debugger_tmr_psled_r5-default.tcl
# 
# 
# Usage with xsct:
# In an external shell use the below command and launch symbol server.
# symbol_server -S -s tcp::1548
# To debug using xsct, launch xsct and run below command
# source /home/jkl-rpu/workspace_mpsoc_preset/tmr_psled_r5_system/_ide/scripts/debugger_tmr_psled_r5-default.tcl
# 
connect -path [list tcp::1548 tcp:miob-3.acs-lab.eonerc.rwth-aachen.de:3121]
source /global/software/vitis/Vitis/2021.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~"RPU*"}
clear_rpu_reset
enable_split_mode
targets -set -filter {jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT232H 42382" && level==0 && jtag_device_ctx=="jsn-HW-FTDI-TEST FT232H-42382-14730093-0"}
fpga -file /home/jkl-rpu/workspace_mpsoc_preset/tmr_psled_r5/_ide/bitstream/edt_zcu106_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/jkl-rpu/workspace_mpsoc_preset/edt_zcu106_wrapper/export/edt_zcu106_wrapper/hw/edt_zcu106_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*R5*#0"}
rst -processor
dow /home/jkl-rpu/workspace_mpsoc_preset/edt_zcu106_wrapper/export/edt_zcu106_wrapper/sw/edt_zcu106_wrapper/boot/fsbl.elf
set bp_39_7_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_39_7_fsbl_bp
targets -set -nocase -filter {name =~ "*R5*#0"}
rst -processor
dow /home/jkl-rpu/workspace_mpsoc_preset/tmr_psled_r5/Debug/tmr_psled_r5.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*R5*#0"}
con
