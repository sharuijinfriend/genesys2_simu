`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 14:51:28
// Design Name: 
// Module Name: fifo_256to16_series_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo_256to16_series_tb();
reg rst_n,wr_clk,rd_clk;
reg rd_en;
wire wr_en;
reg [255:0] data_in_256bit;
wire [15:0] data_out_16bit;
wire fifo_full,fifo_empty,fifo_almost_empty,fifo_1_empty;
initial
	begin
	rst_n=0;
	wr_clk=0;
	rd_clk=0;
	#20 rst_n=1;
	end
//********************CLOCK*****************************************
//Write speed is faster than read speed, test pass.
// always 
	// #1 wr_clk=~wr_clk;
// always 
	// #2 rd_clk=~rd_clk;
	
//Read speed is faster than write speed
always 
	#1 wr_clk=~wr_clk;
always 
	#4 rd_clk=~rd_clk;
	
//******************************************************************
always @(negedge rst_n,posedge wr_clk)
	if(~rst_n)
		begin
			rd_en<=0;
		end
	else if(~fifo_almost_empty)
		begin
			// data_in_256bit<= {$random}%((1<<513)-1);
			rd_en<=1;
		end
	else
		rd_en<=0;
assign wr_en=(fifo_1_empty& ~fifo_full) ?1:0;
always @(posedge wr_clk,negedge rst_n)
	if(~rst_n)
		data_in_256bit<=256'h0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f20;
	else if(wr_en)
		data_in_256bit<=data_in_256bit+256'b1;
		
fifo_256to16_series u_256to16_tb(
.rst_n(rst_n),
.wr_clk(wr_clk),
.rd_clk(rd_clk),
.data_in_256bit(data_in_256bit),
.wr_en(wr_en),
.rd_en(rd_en),

.fifo_full(fifo_full),
.data_out_16bit(data_out_16bit),
.fifo_1_almost_empty(fifo_1_empty),
.fifo_empty(fifo_empty),
.fifo_almost_empty(fifo_almost_empty)
    );
	
initial
#200000 $stop;
endmodule
