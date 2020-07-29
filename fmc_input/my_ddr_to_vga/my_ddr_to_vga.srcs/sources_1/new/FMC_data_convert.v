`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/20 14:41:50
// Design Name: 
// Module Name: FMC_data_convert
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


module FMC_data_convert
#(
parameter VBLANK=2,
parameter VSIZE=4096,
parameter HSIZE=4096,
// parameter VSIZE=32,
// parameter HSIZE=32,
parameter HBLANK=40,
parameter SUB=2,
parameter NUM=16
)
(
input [12:0] counter_h,
input [12:0] counter_v,
input clk_fmc,
input rst_n,
input [255:0] ddr_fifo_dout,
output reg ddr_fifo_rd_en,
output reg [15:0] data_16bit

    );




// reg [12:0] counter;
reg [12:0] counter_1;
reg [1:0]  flag;
reg [255:0] reg_a;
reg [255:0] reg_b;
wire [12:0] x_pos;
wire [12:0] y_pos;
wire data_valid;
reg locked;
assign data_valid=(counter_h>=(HBLANK-SUB) && counter_h<(HBLANK+HSIZE-SUB) && counter_v<(VSIZE));//可以提早周期
assign x_pos=data_valid?(counter_h-(HBLANK-SUB)):13'b0;
assign y_pos=data_valid?counter_v:13'b0;

//------------------------------------second stage---------------------------------------
always @(posedge clk_fmc,negedge rst_n)
	begin
		if(~rst_n)
			counter_1<=13'd0;
		else if(counter_1==(2*NUM) && data_valid)//1~4 5~8
			counter_1<=13'd1;
		else if(data_valid)
		counter_1<=counter_1+13'd1;
		else
			counter_1<=13'd0;
	end
	
always @(posedge clk_fmc,negedge rst_n)
	begin
		if(~rst_n)
			locked<=1'b0;
		else if(counter_h==13'd4 && counter_v==13'd0)
			locked<=1'b1;
	end
	
//----------------------------------------third stage---------------------------------------------

always @(posedge clk_fmc,negedge rst_n)
	begin
		if(~rst_n)
			ddr_fifo_rd_en<=1'b0;
		else if(counter_h==13'd2 && counter_v==13'd0 && ~locked )//locked 只有复位后的第一帧需要
			ddr_fifo_rd_en<=1'b1;
		else if(counter_1==(NUM+1) || counter_1==13'd1)//ddr_fifo读出来的数据能保持
			ddr_fifo_rd_en<=1'b1;
		else
			ddr_fifo_rd_en<=1'b0;
	end
	

always @(posedge clk_fmc,negedge rst_n)
	begin
		if(~rst_n)
			reg_a<=256'b0;
		else if(counter_h==13'd4 && counter_v==13'd0 && ~locked)
			reg_a<=ddr_fifo_dout;
		else if(counter_1==(NUM+3))///5读，6写
			reg_a<=ddr_fifo_dout;
		else if(counter_1<=NUM && counter_1>=13'd1)
			reg_a<=reg_a<<(256/NUM);
	end

always @(posedge clk_fmc,negedge rst_n)
	begin
		if(~rst_n)
			reg_b<=256'b0;
		else if(counter_1==13'd3)/////1读，2写
			reg_b<=ddr_fifo_dout;
		else if(counter_1>=(NUM+1))
			reg_b<=reg_b<<(256/NUM);
	end


always @(posedge clk_fmc,negedge rst_n)
	begin
		if(~rst_n)
			data_16bit<=16'b0;
		else if(counter_1<=NUM && counter_1>=13'd1)
			data_16bit<=reg_a[255-:16];
		else if(counter_1>=(NUM+1))
			data_16bit<=reg_b[255-:16];
	end


endmodule
