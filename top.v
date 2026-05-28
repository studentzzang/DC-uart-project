// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Thu May 28 01:29:30 2026"

module top(
	clk,
	reset,
	data_ready,
	rx_serial,
	data_in,
	tx_serial,
	data_out
);


input wire	clk;
input wire	reset;
input wire	data_ready;
input wire	rx_serial;
input wire	[7:0] data_in;
output wire	tx_serial;
output wire	[7:0] data_out;

wire	[2:0] gdfx_temp0;





baud_gen_	b2v_inst(
	.clk(clk),
	.reset(reset),
	.baud_tick(gdfx_temp0[2]));


tx	b2v_inst1(
	.data_ready(data_ready),
	.clk(clk),
	.reset(reset),
	.data_in(data_in),
	.tx_bit_cnt(gdfx_temp0),
	.tx_serial(tx_serial));


rx	b2v_inst3(
	.clk(clk),
	.rx_serial(rx_serial),
	.reset(reset),
	.data_out(data_out));


endmodule
