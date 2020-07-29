`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/15 14:36:03
// Design Name: 
// Module Name: req_generator
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


module req_generator
#(
	parameter MEM_DATA_BITS = 256,
	parameter ADDR_BITS = 29,
	parameter RESOLUTION=1024
)
(
output reg rd_burst_req,
output reg wr_burst_req,


input  rd_burst_finish,                      /*读完成*/
input  wr_burst_finish,                   /*写完成*/
input ui_clk,
input sys_ready
    );
	

	
always @(posedge ui_clk, negedge sys_ready)
	begin
		if(~sys_ready)
			wr_burst_req<=1'b1;
		else if(wr_burst_finish)
			wr_burst_req<=1'b0;
	end

always @(posedge ui_clk, negedge sys_ready)
	begin
		if(~sys_ready)
			rd_burst_req<=1'b0;
		else if(wr_burst_finish)
			rd_burst_req<=1'b1;
	end
wire [20:0] rd_burst_len;
wire [20:0] wr_burst_len;	
assign rd_burst_len = 21'd65536; 				//一次读一行，1024*16/(8*32)=64
//wr_burst_len <= 16'd512;			//TEST
assign wr_burst_len = 21'd65536;			//512*512个数一次写入
//原程序是16bit0+16bit有效数据，因此512*512*(16+16)/(8*32)=32768
//本程序没有补零，因此512*512*16/(8*32)=16384
//1024*1024*16/（8*32）=65536
//4096*4096*16/（8*32）=1048576
//8*32,是突发模式，连续读取8个地址，一个地址读出的数据位数为32位。

wire [ADDR_BITS - 1:0] rd_burst_addr;//从29'b0开始
wire [ADDR_BITS - 1:0] wr_burst_addr;//
assign rd_burst_addr = 0;                //读起始地址均为0
// assign wr_burst_addr = 29'h1fff_fff8; //写地址加8=0
assign wr_burst_addr = 29'h0; //写地址加8=0
		
		
endmodule
