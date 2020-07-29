`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 15:41:41
// Design Name: 
// Module Name: fmc_data_compare
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


module fmc_data_compare(
input rst_n,
input clk,
input [15:0] data16_from_fmc,
input [15:0] data16_from_ddr,
input ddr_fifo_full_b_almost_empty,
input fmc_fifo_almost_empty,
output reg read_req,
(* mark_debug = "true" *) output reg [31:0] error_cnt
    );
(* mark_debug = "true" *) reg [31:0] wr_num_cnt;
always @(posedge clk, negedge rst_n)
	if(~rst_n)
		read_req<=0;
	else if(~ddr_fifo_full_b_almost_empty & ~fmc_fifo_almost_empty)
		read_req<=1;
	else
		read_req<=0;

always @(posedge clk, negedge rst_n)
	if(~rst_n)
		error_cnt<=32'd0;
	else if(read_req && error_cnt<{32{1'b1}})
		begin
		if(data16_from_ddr != data16_from_fmc)
		error_cnt<=error_cnt+1;
		end
always @(posedge clk,negedge rst_n)
	begin
		if(~rst_n)
			wr_num_cnt<=32'b0;
		// else if(fmc_hsync_r && wr_num_cnt<(RESOLUTION*RESOLUTION*2))
		else if(read_req && wr_num_cnt<{32{1'b1}})
			wr_num_cnt<=wr_num_cnt+32'd1;
	end
endmodule
