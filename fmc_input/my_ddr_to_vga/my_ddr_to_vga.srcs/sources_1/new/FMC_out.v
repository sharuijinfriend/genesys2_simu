`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/20 12:21:56
// Design Name: 
// Module Name: vga_disp
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


module FMC_out
#(
parameter VBLANK=2,
parameter VSIZE=4096,
parameter HSIZE=4096,
// parameter VSIZE=32;
// parameter HSIZE=32;
parameter HBLANK=40
)
(
input wire clk_fmc,
input wire rst_n,
input pic_en,//~fifo_b_fulldata_empty
input wire [15:0] data_16bit,
output wire hsync, 
output wire vsync,
output wire [15:0] fmc_data,
output reg[12:0] fmc_hcnt,
output reg [12:0] fmc_vcnt,
output reg frm_cnt
);
//---------------------------------------------------timing--------------------------------
//13-bit 0~1<<13-1
//Special design timing





//------------------------------------------------------------------------------------------------
reg vsync_r1;
reg sig_valid;

always@(posedge clk_fmc or negedge rst_n)
begin
	if (!rst_n)
		fmc_hcnt <= 0;	
	else 
		if(pic_en)
		begin
			if(fmc_hcnt>=HSIZE+HBLANK-1)
				fmc_hcnt <= 0;
			else
				fmc_hcnt <= fmc_hcnt +1;
		end
end

always@(posedge clk_fmc or negedge rst_n)
begin
	if (!rst_n)
		fmc_vcnt <= 0;	
	else 
		if(pic_en && fmc_hcnt==HSIZE+HBLANK-1)
		begin
			if(fmc_vcnt>=VSIZE+VBLANK-1)
				fmc_vcnt <= 0;
			else
				fmc_vcnt <= fmc_vcnt +1;
		end
end
	
assign hsync = fmc_hcnt>=HBLANK&&fmc_vcnt<=VSIZE-1 ? 1 : 0;
assign vsync = pic_en&&fmc_vcnt<=VSIZE-1 ? 1 : 
				fmc_vcnt==VSIZE&&fmc_hcnt<=HBLANK-1 ? 1 : 0;
				
always@(posedge clk_fmc or negedge rst_n)
begin
	if(!rst_n)
		vsync_r1 <= 0;
	else
		vsync_r1 <= vsync;
end

always@(posedge clk_fmc or negedge rst_n)
begin
	if(!rst_n)
		frm_cnt <= 0;
	else if(!vsync&&vsync_r1)
		frm_cnt <= ~frm_cnt;
end

assign fmc_data=data_16bit;
endmodule
