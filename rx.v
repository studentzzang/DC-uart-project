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
// CREATED		"Thu May 28 01:30:40 2026"

module rx(
	rx_serial,
	clk,
	reset,
	data_out
);


input wire	rx_serial;
input wire	clk;
input wire	reset;
output wire	[7:0] data_out;

reg	[7:0] data_out_ALTERA_SYNTHESIZED;
reg	data_reg1;
reg	data_reg2;
reg	data_reg3;
reg	data_reg4;
reg	data_reg6;
reg	data_reg7;
wire	[2:0] q;
reg	[1:0] state;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_39;
reg	DFF_inst29;
reg	DFF_inst34;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;




assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_38;


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[0] <= DFF_inst29;
	end
end


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[1] <= data_reg1;
	end
end


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[2] <= data_reg2;
	end
end


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[3] <= data_reg3;
	end
end


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[4] <= data_reg4;
	end
end


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[5] <= DFF_inst34;
	end
end


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[6] <= data_reg6;
	end
end


always@(posedge SYNTHESIZED_WIRE_39)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[7] <= data_reg7;
	end
end

assign	SYNTHESIZED_WIRE_40 = ;




lpm_counter_3	b2v_inst26(
	.sclr(SYNTHESIZED_WIRE_26),
	.clock(clk),
	.cnt_en(SYNTHESIZED_WIRE_38),
	.aclr(reset),
	.q(q));

assign	SYNTHESIZED_WIRE_36 = q[2] & q[1] & q[0];


lpm_decode_3	b2v_inst28(
	.data(q),
	.eq0(SYNTHESIZED_WIRE_0),
	.eq1(SYNTHESIZED_WIRE_2),
	.eq2(SYNTHESIZED_WIRE_4),
	.eq3(SYNTHESIZED_WIRE_6),
	.eq4(SYNTHESIZED_WIRE_8),
	.eq5(SYNTHESIZED_WIRE_10),
	.eq6(SYNTHESIZED_WIRE_12),
	.eq7(SYNTHESIZED_WIRE_14));


always@(posedge SYNTHESIZED_WIRE_28)
begin
	begin
	DFF_inst29 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_29)
begin
	begin
	data_reg1 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_30)
begin
	begin
	data_reg2 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_31)
begin
	begin
	data_reg3 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_32)
begin
	begin
	data_reg4 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_33)
begin
	begin
	DFF_inst34 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_34)
begin
	begin
	data_reg6 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_35)
begin
	begin
	data_reg7 <= rx_serial;
	end
end


rx_fsm	b2v_rx_fsm(
	
	
	
	.bit_index_is_7(SYNTHESIZED_WIRE_36),
	.data_valid(SYNTHESIZED_WIRE_37),
	.clear_bit_index(SYNTHESIZED_WIRE_26),
	.count_en(SYNTHESIZED_WIRE_38));
	defparam	b2v_rx_fsm.DATA = 2;
	defparam	b2v_rx_fsm.IDLE = 0;
	defparam	b2v_rx_fsm.START = 1;
	defparam	b2v_rx_fsm.STOP = 3;

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_37 & clk;

assign	data_out = data_out_ALTERA_SYNTHESIZED;

endmodule
