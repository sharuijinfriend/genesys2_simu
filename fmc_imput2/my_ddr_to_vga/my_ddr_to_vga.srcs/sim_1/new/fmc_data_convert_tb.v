`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/20 15:50:57
// Design Name: 
// Module Name: fmc_data_convert_tb
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


module fmc_data_convert_tb();
reg rst_n;
reg clk_100m;
initial
	begin
		rst_n<=0;
		#1 rst_n<=0;
		#10 rst_n<=1;
	end

initial
clk_100m<=0;
always
#1 clk_100m<=~clk_100m;


wire [15:0] data_16bit;
wire [15:0] fmc_data;
wire hsync;
wire vsync;
wire frm_cnt;
wire [12:0] counter_h;
wire [12:0] counter_v;
reg [255:0] ddr_fifo_dout;
wire ddr_fifo_rd_en;
// always 
// #2 ddr_fifo_dout=(1<<255)+{$random}%(1<<255);
always @(posedge clk_100m, negedge rst_n)
	begin
		if(~rst_n)
			ddr_fifo_dout<=256'b0;
		else if(ddr_fifo_rd_en)
			ddr_fifo_dout<=256'h7424d58636e79848f9aa5b0bbc6d1dce7f2fd10811311e12913413f14a155160;
	end
	
FMC_out 
#(
.VBLANK(2),
.VSIZE(32),
.HSIZE(32),
.HBLANK(40)
)
FMC_out_Test
(
.clk_fmc(clk_100m),
.rst_n(rst_n),
.pic_en(1'b1),//~fifo_b_fulldata_empty
.data_16bit(data_16bit),
.hsync(hsync), 
.vsync(vsync),
.fmc_data(fmc_data),
.fmc_hcnt(counter_h),
.fmc_vcnt(counter_v),
.frm_cnt(frm_cnt)
);

FMC_data_convert 
#(
.VBLANK(2),
.VSIZE(32),
.HSIZE(32),
.HBLANK(40)
)
FMC_data_convert_test
(
.counter_h(counter_h),
.counter_v(counter_v),
.clk_fmc(clk_100m),
.rst_n(rst_n),
.ddr_fifo_dout(ddr_fifo_dout),
.ddr_fifo_rd_en(ddr_fifo_rd_en),
.data_16bit(data_16bit)
    );

initial 
#1024000 $stop;
	
endmodule
