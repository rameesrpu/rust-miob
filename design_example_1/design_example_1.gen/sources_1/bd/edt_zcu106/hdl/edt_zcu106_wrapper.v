//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Tue Jul  5 16:35:31 2022
//Host        : fpga-dev running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target edt_zcu106_wrapper.bd
//Design      : edt_zcu106_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module edt_zcu106_wrapper
   (led_8bits_tri_o,
    push_buttons_5bits_tri_i);
  output [7:0]led_8bits_tri_o;
  input [4:0]push_buttons_5bits_tri_i;

  wire [7:0]led_8bits_tri_o;
  wire [4:0]push_buttons_5bits_tri_i;

  edt_zcu106 edt_zcu106_i
       (.led_8bits_tri_o(led_8bits_tri_o),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i));
endmodule
