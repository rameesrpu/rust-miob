#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/global/software/vitis/Vitis/2021.2/bin:/global/software/vitis/Vivado/2021.2/ids_lite/ISE/bin/lin64:/global/software/vitis/Vivado/2021.2/bin
else
  PATH=/global/software/vitis/Vitis/2021.2/bin:/global/software/vitis/Vivado/2021.2/ids_lite/ISE/bin/lin64:/global/software/vitis/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/jkl-rpu/design_example_1/design_example_1.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log edt_zcu106_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source edt_zcu106_wrapper.tcl
