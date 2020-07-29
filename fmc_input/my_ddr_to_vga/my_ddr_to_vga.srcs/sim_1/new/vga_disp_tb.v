`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/20 18:31:19
// Design Name: 
// Module Name: vga_disp_tb
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


module vga_disp_tb(
    );
reg clk;
reg rst_n;
reg [5:0] data;
wire vga_hsync,vga_vsync;
wire [4:0] vga_r;
wire [5:0] vga_g;
wire [4:0] vga_b;

initial 
	begin
		clk=0;
		data=6'b110000;
	end
	
initial
rst_n=0;
initial 
#100 rst_n=1;

always
#1 clk=~clk;

initial #1800 $stop; 

vga_disp test(
.clk(clk),
.rst_n(rst_n),
.data(data),
.vga_hsync(vga_hsync), 
.vga_vsync(vga_vsync),
.vga_r(vga_r),
.vga_g(vga_g),
.vga_b(vga_b)
);
endmodule
