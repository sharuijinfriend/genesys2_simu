`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 15:32:54
// Design Name: 
// Module Name: uart_data_convert
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

module uart_data_convert
#(
parameter CLKS_PER_BIT=87,
parameter NUM=32
)
(
input clk_10m,
input rst_n,
input [255:0] ddr_fifo_full_dout,
input o_Tx_Done,
input ddr_fifo_full_empty,
output reg ddr_fifo_full_rd_en,
output reg [7:0] uart_data,
output reg shift_data_valid
    );


// reg [12:0] counter;
reg [12:0] counter_1;

reg [255:0] reg_a;
reg [255:0] reg_b;

reg locked,locked0_reg,locked1_reg,locked2_reg,locked3_reg;


//------------------------------------second stage---------------------------------------
always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			counter_1<=13'd1;
		else if(counter_1==(2*NUM) && shift_data_valid)//1~4 5~8
			counter_1<=13'd1;
		else if(shift_data_valid)
		counter_1<=counter_1+13'd1;
	end
	
always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			locked<=1'b0;
		else if(~ddr_fifo_full_empty)
			locked<=1'b1;
	end
	
always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			locked0_reg<=1'b0;
		else 
			locked0_reg<=locked;
	end
always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			locked1_reg<=1'b0;
		else 
			locked1_reg<=locked0_reg;
	end
always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			locked2_reg<=1'b0;
		else 
			locked2_reg<=locked1_reg;
	end
always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			locked3_reg<=1'b0;
		else 
			locked3_reg<=locked2_reg;
	end
//----------------------------------------third stage---------------------------------------------

always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			ddr_fifo_full_rd_en<=1'b0;
		else if(~locked0_reg & locked)//locked 只有复位后的第一帧需要
			ddr_fifo_full_rd_en<=1'b1;
		else if((counter_1==(NUM+1) || counter_1==13'd1) && o_Tx_Done)//ddr_fifo读出来的数据能保持
			ddr_fifo_full_rd_en<=1'b1;
		else
			ddr_fifo_full_rd_en<=1'b0;
	end
	
	
always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			reg_a<=256'b0;
		else if(~locked2_reg & locked1_reg)
			reg_a<=ddr_fifo_full_dout;
		else if(counter_1==(NUM+3)&& o_Tx_Done)///5读，7写
			reg_a<=ddr_fifo_full_dout;
		else if(~locked3_reg & locked2_reg)
			reg_a<=reg_a<<(8);
		else if(counter_1<=NUM && counter_1>=13'd1 && o_Tx_Done)
			reg_a<=reg_a<<(8);
	end

always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			reg_b<=256'b0;
		else if(counter_1==13'd3 && o_Tx_Done)/////1读，3写 ,1时刻触发rd_en变高，2时刻rd_en高电平被检测到，3时刻可以检测到data。这个程序仅仅适用于NUM大于等于三的程序。
		//如果NUM等于2，这个程序就出错了，在3时刻去采样根本来不及。
			reg_b<=ddr_fifo_full_dout;
		else if(counter_1>=(NUM+1) && o_Tx_Done)
			reg_b<=reg_b<<(8);
	end


always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			uart_data<=16'b0;
		else if(~locked3_reg & locked2_reg)
			uart_data<=reg_a[255-:8];
		else if(counter_1<=NUM && counter_1>=13'd1&& o_Tx_Done)
			uart_data<=reg_a[255-:8];
		else if(counter_1>=(NUM+1)&& o_Tx_Done)
			uart_data<=reg_b[255-:8];
	end

always @(posedge clk_10m,negedge rst_n)
	begin
		if(~rst_n)
			shift_data_valid<=1'b0;
		else if(~locked3_reg & locked2_reg)
			shift_data_valid<=1'b1;
		else if(counter_1<=NUM && counter_1>=13'd1&& o_Tx_Done)
			shift_data_valid<=1'b1;
		else if(counter_1>=(NUM+1)&& o_Tx_Done)
			shift_data_valid<=1'b1;
		else
			shift_data_valid<=0;
	end

endmodule
