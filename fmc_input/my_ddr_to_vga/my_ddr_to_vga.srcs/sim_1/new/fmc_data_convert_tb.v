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
reg clk_ori_p;
wire clk_ori_n;
initial
	begin
		rst_n<=0;
		#1 rst_n<=0;
		#10 rst_n<=1;
	end

initial
begin
clk_100m<=0;
clk_ori_p<=0;
end

always
#5 clk_100m<=~clk_100m;
always
#2.5 clk_ori_p<=~clk_ori_p;
assign clk_ori_n=~clk_ori_p;

wire [15:0] data_16bit;
wire [15:0] fmc_data;
wire hsync;
wire vsync;
wire frm_cnt;
wire [12:0] counter_h;
wire [12:0] counter_v;
reg [255:0] ddr_fifo_dout;
wire ddr_fifo_rd_en;
wire o_Tx_Serial;
// always 
// #2 ddr_fifo_dout=(1<<255)+{$random}%(1<<255);
always @(posedge clk_100m, negedge rst_n)
	begin
		if(~rst_n)
			ddr_fifo_dout<=256'b0;
		else if(ddr_fifo_rd_en)
			ddr_fifo_dout<=256'h0b16212c37424d58636e79848f9aa5b0bbc6d1dce7f2fd09141f2a35404b5661;
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
	
ddrtovga_top 
// #(
// parameter DATA_START_CNT=0,
// parameter SAMPLE_LEN=1000,
// parameter RESOLUTION=4096
// )
fmc_input_test
(
.rst_n(rst_n),
.clk_ori_p(clk_ori_p),
.clk_ori_n(clk_ori_n),
. o_Tx_Serial(o_Tx_Serial),
.fmc_data(fmc_data),
.fmc_hsync(hsync),
.fmc_vsync(vsync),
.frm_cnt(frm_cnt)//哪张图片which picture
);

// wire clk_100m_test,clk_10m_test;
// clk_wiz_0 clk_generate(
// .reset(~rst_n),
// .clk_in1_n(clk_ori_n),
// .clk_in1_p(clk_ori_p),
// .clk_100m(clk_100m_test),
// .clk_10m(clk_10m_test),
// .locked(locked)
 // );
initial 
#1024000 $stop;
	
endmodule
