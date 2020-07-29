`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/15 19:34:14
// Design Name: 
// Module Name: fifo_series
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


module fifo_series(
input rst_n,
input sys_ready,
input ui_clk,
input clk_vga,
input [255:0] ddr_dout_256bit,
input ddr_dout_valid,
output wire ddr_fifo_s_empty,
output wire [255:0] ddr_fifo_b_dout,
output wire ddr_fifo_b_empty,
input ddr_fifo_b_rd_en
    );
	
//------------------------------READ FROM DDR3 FIFO_small--------------------------------------------
wire ddr_fifo_s_full;
wire ddr_fifo_s_rd_en;
wire [255:0] ddr_fifo_s_dout;


//----------------------------  READ FROM FIFO_small FIFO_big--------------------------------------------
wire ddr_fifo_b_full;

reg ddr_fifo_b_wr_en_r;
wire ddr_fifo_b_wr_en;



//------------------------------READ FROM DDR3 FIFO_small--------------------------------------------
assign ddr_fifo_s_rd_en=(sys_ready)?((~ddr_fifo_b_full)& (~ddr_fifo_s_empty)):0;
ddr_fifo_small read_fifo_1(
//input
.rst(~rst_n),
.wr_clk(ui_clk),
.rd_clk(ui_clk),
.din(ddr_dout_256bit),
.wr_en(ddr_dout_valid),
.rd_en(ddr_fifo_s_rd_en),
//output
.dout(ddr_fifo_s_dout),
.full(ddr_fifo_s_full),
.empty(ddr_fifo_s_empty)
);

//----------------------------  READ FROM FIFO_small FIFO_big--------------------------------------------
always @(posedge ui_clk, negedge rst_n)
	begin
		if(~rst_n)
			ddr_fifo_b_wr_en_r<=1'b0;
		else if(~ddr_fifo_b_full)
			ddr_fifo_b_wr_en_r<=ddr_fifo_s_rd_en;
	end
assign ddr_fifo_b_wr_en=(sys_ready)?(ddr_fifo_b_wr_en_r && ~ddr_fifo_b_full ):0;
ddr_fifo_big read_fifo_2(
//input
.rst(~rst_n),
.wr_clk(ui_clk),
.rd_clk(clk_vga),
.din(ddr_fifo_s_dout),
.wr_en(ddr_fifo_b_wr_en),
.rd_en(ddr_fifo_b_rd_en),
//output
.dout(ddr_fifo_b_dout),
.full(ddr_fifo_b_full),
.empty(ddr_fifo_b_empty)
);

endmodule
