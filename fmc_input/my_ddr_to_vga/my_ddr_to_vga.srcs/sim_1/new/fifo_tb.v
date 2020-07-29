`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/06 14:02:27
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb(

    );
	
reg rst_n;
wire clk;
reg clkX2;
reg clk_vga;
initial
	begin
		rst_n<=0;
		#1 rst_n<=0;
		#10 rst_n<=1;
	end

// initial
// clk<=0;
// always
// #4 clk<=~clk;
assign clk=clk_vga;
initial
clkX2<=0;

initial
clk_vga<=0;
always
#2.5 clk_vga<=~clk_vga;



wire ddr_fifo_full;
wire ddr_fifo_empty;
reg ddr_fifo_read;
wire [255:0] ddr_fifo_dout;
reg [255:0] ddr_dout_256bit;
reg ddr_dout_valid;
reg fifo_ready;

// always @(posedge clk,
always
#5 ddr_dout_256bit={$random}%100000;

always @(posedge clk, negedge rst_n,posedge ddr_fifo_full)
	if(~rst_n)
		ddr_dout_valid<=1'b0;
	else if(ddr_fifo_full)
		ddr_dout_valid<=1'b0;
	else
		ddr_dout_valid<=1'b1;

always @(posedge clk_vga, negedge rst_n)
	if(~rst_n)
		ddr_fifo_read<=1'b0;
	else if(ddr_fifo_empty)
		ddr_fifo_read<=1'b0;
	else
		ddr_fifo_read<=1'b1;
		

//------------------------------READ FROM DDR3 FIFO--------------------------------------------
initial 
#100 $stop;

ddr_fifo_small read_fifo(
//input
.rst(~rst_n),
.wr_clk(clk),
.rd_clk(clk_vga),
.din(ddr_dout_256bit),
.wr_en(ddr_dout_valid),
.rd_en(ddr_fifo_read),
//output
.dout(ddr_fifo_dout),
.full(ddr_fifo_full),
.empty(ddr_fifo_empty)
);
endmodule
