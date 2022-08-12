# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/jkl-rpu/workspace_mpsoc_preset/edt_zcu106_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/jkl-rpu/workspace_mpsoc_preset/edt_zcu106_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {edt_zcu106_wrapper}\
-hw {/home/jkl-rpu/design_example_1/edt_zcu106_wrapper.xsa}\
-fsbl-target {psu_cortexr5_0} -out {/home/jkl-rpu/workspace_mpsoc_preset}

platform write
domain create -name {standalone_psu_cortexr5_0} -display-name {standalone_psu_cortexr5_0} -os {standalone} -proc {psu_cortexr5_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexr5_0}
platform generate -quick
platform generate
bsp reload
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexr5_0 
bsp config stdin "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexr5_0 
platform clean
platform generate
