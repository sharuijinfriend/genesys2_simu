`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/05 20:13:01
// Design Name: 
// Module Name: data_convert_tb
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



module data_convert_tb(

    );
	
reg rst_n;
reg clk_vga;
initial
	begin
		rst_n<=0;
		#1 rst_n<=0;
		#10 rst_n<=1;
	end

initial
clk_vga<=0;
always
#1 clk_vga<=~clk_vga;

// wire [12:0] x_pos;
// wire [12:0] y_pos;
wire [15:0] vga_data;
wire vga_hsync;
wire vga_vsync;
wire  [4:0] vga_r;
wire  [5:0] vga_g;
wire  [4:0] vga_b;
 wire [12:0] counter_h;
 wire [12:0] counter_v;
reg [255:0] ddr_fifo_dout;
 wire ddr_fifo_rd_en;
always 
#2 ddr_fifo_dout=(1<<255)+{$random}%(1<<255);
vga_disp 
// #(
// .H_SYNC(3),   //行同步脉�?
// .H_BACK(64),   //行显示后�?
// .H_DISP(1024),  //行有效数�?
// .H_FRONT(3),    //行显示前�?
// .H_TOTAL(1094),  //行扫描周�?
// .V_SYNC(3),     //场同步脉�?
// .V_BACK(3),    //场显示后�?
// .V_DISP(50),   //场有效数�?
// .V_FRONT(3),     //场显示前�?
// .V_TOTAL(59)   //场扫描周�?
// )
vga_disp_tb(
.clk(clk_vga),
.rst_n(rst_n),
.vga_data(vga_data),//need change
.vga_hsync(vga_hsync), 
.vga_vsync(vga_vsync),
.vga_r(vga_r),
.vga_g(vga_g),
.vga_b(vga_b),
.counter_h(counter_h),
.counter_v(counter_v)
);

data_convert 
// #(
// .H_SYNC(3),   //行同步脉�?
// .H_BACK(64),   //行显示后�?
// .H_DISP(1024),  //行有效数�?
// .H_FRONT(3),    //行显示前�?
// .H_TOTAL(1094),  //行扫描周�?
// .V_SYNC(3),     //场同步脉�?
// .V_BACK(3),    //场显示后�?
// .V_DISP(50),   //场有效数�?
// .V_FRONT(3),     //场显示前�?
// .V_TOTAL(59)   //场扫描周�?
// )
data_convert_test(
.counter_h(counter_h),
.counter_v(counter_v),
.clk_vga(clk_vga),
.rst_n(rst_n),
.ddr_fifo_dout(ddr_fifo_dout),
.ddr_fifo_rd_en(ddr_fifo_rd_en),
.vga_data(vga_data)
);

initial 
#1024000 $stop;
endmodule
