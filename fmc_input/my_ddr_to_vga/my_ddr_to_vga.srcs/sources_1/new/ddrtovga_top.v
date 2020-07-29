`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/20 12:21:56
// Design Name: 
// Module Name: ddrtovga_top
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
///////////////////////////////////////////////////////////////////////////////////
module ddrtovga_top
#(
// parameter DATA_START_CNT=2087152,
parameter DATA_START_CNT=0,
// parameter DATA_START_CNT=500000,
// parameter DATA_START_CNT=1000000,
// parameter DATA_START_CNT=1500000,
parameter SAMPLE_LEN=10000,
parameter RESOLUTION=4096
)
(
input wire rst_n,
input wire clk_ori_p,
input wire clk_ori_n,
//uart
output wire o_Tx_Serial,
//FMC
input wire [15:0] fmc_data,
input wire fmc_hsync,
input wire fmc_vsync,
input wire frm_cnt,//哪张图片which picture
input clk_fmc_in


);
wire clk_fmc;
BUFGP BUFGP_INS(
.O(clk_fmc),
.I(clk_fmc_in)
);
wire clk_50m,clk_10m;
wire locked;
//---------------------------uart-------------------------

wire o_Tx_Active;
wire o_Tx_Done;
wire [7:0] uart_data;
reg data_valid;
wire uart_en;
//---------------------------FMC--------------------------
reg [25:0] wr_num_cnt;
(* mark_debug = "true" *) reg [25:0] rd_num_cnt;
reg [15:0] fmc_data_r;
reg fmc_hsync_r;
reg fmc_vsync_r;
reg frm_cnt_r;
wire fifo_wr_en;
wire fifo_rd_en;
wire fifo_rd_en0;
(* mark_debug = "true" *) reg rd_data_valid;
(* mark_debug = "true" *) wire [15:0] fifo_dout;
wire fifo_empty;
wire fifo_full;
always @(posedge clk_fmc,negedge rst_n)
	if(~rst_n)
		begin
			fmc_data_r<=16'd0;
			fmc_hsync_r<=0;
			fmc_vsync_r<=0;
			frm_cnt_r<=0;
		end
	else
		begin
			fmc_data_r<=fmc_data;
			fmc_hsync_r<=fmc_hsync;
			fmc_vsync_r<=fmc_vsync;
			frm_cnt_r<=frm_cnt;
		end



always @(posedge clk_fmc,negedge rst_n)
	begin
		if(~rst_n)
			wr_num_cnt<=26'b0;
		// else if(fmc_hsync_r && wr_num_cnt<(RESOLUTION*RESOLUTION*2))
		else if(fmc_hsync_r && wr_num_cnt<=(DATA_START_CNT+SAMPLE_LEN))
			wr_num_cnt<=wr_num_cnt+26'd1;
	end
	
assign fifo_wr_en=(wr_num_cnt >= (DATA_START_CNT)&& wr_num_cnt < (DATA_START_CNT+SAMPLE_LEN))?fmc_hsync_r:0;
assign uart_en= (wr_num_cnt ==(DATA_START_CNT+SAMPLE_LEN+1));

//Use ILA or UART 
//If use UART,CLOCK should be clk_10m
//if use ILA, clk should be clk_fmc
//----------------------------------------------------------------------
// ILA
always @(posedge clk_50m,negedge rst_n)
	begin
		if(~rst_n)
			rd_num_cnt<=26'b0;
		else if(uart_en && rd_num_cnt<=SAMPLE_LEN)
			rd_num_cnt<=rd_num_cnt+26'd1;
	end
assign fifo_rd_en0=(rd_num_cnt <= (SAMPLE_LEN) &&rd_num_cnt >0 )?1'b1:0;

always @(posedge clk_50m,negedge rst_n)
	if(~rst_n)
		rd_data_valid<=1'b0;
	else 
		rd_data_valid<=fifo_rd_en0;
		
// //uart
// always @(posedge clk_10m,negedge rst_n)
	// begin
		// if(~rst_n)
			// rd_num_cnt<=26'b0;
		// else if(rd_num_cnt<=SAMPLE_LEN && fifo_rd_en)
			// rd_num_cnt<=rd_num_cnt+26'd1;
	// end
// assign fifo_rd_en0=(rd_num_cnt <= (SAMPLE_LEN) &&rd_num_cnt >0 )?fifo_rd_en:0;

// always @(posedge clk_10m,negedge rst_n)
	// if(~rst_n)
		// rd_data_valid<=1'b0;
	// else 
		// rd_data_valid<=fifo_rd_en0;
//----------------------------------------------------------------------

// always @(posedge clk_10m,negedge rst_n)
	// if(~rst_n)
		// data_valid<=1'b0;
	// else if( rd_num_cnt < (SAMPLE_LEN))
		// data_valid<=fifo_rd_en;



// always @(posedge clk_10m,negedge rst_n)
	// if(~rst_n)
		// fifo_rd_en<=1'b0;
	// else if(wr_num_cnt == (DATA_START_CNT+SAMPLE_LEN))
		// fifo_rd_en<=1'b1;
	// else if(o_Tx_Done)
		// fifo_rd_en<=1'b1;
	// else
		// fifo_rd_en<=1'b0;
	
//-----------------------------PLL-------------------------------------------------

clk_wiz_0 clk_generate(
.reset(~rst_n),
.clk_in1_n(clk_ori_n),
.clk_in1_p(clk_ori_p),
.clk_50m(clk_50m),
.clk_10m(clk_10m),
.locked(locked)
 );



	
fmc_fifo u_fmc_fifo(
.wr_clk(clk_fmc),
// .rd_clk(clk_10m),//uart
.rd_clk(clk_50m),//ila
.rst(~rst_n),
.din(fmc_data_r),
.wr_en(fifo_wr_en),
.rd_en(fifo_rd_en0),
.dout(fifo_dout),
.full(fifo_full),
.empty(fifo_empty)
);



//design for Uart
uart_top uart(
.uart_en(uart_en),
.ddr_fifo_full_dout(fifo_dout),
// .ddr_fifo_full_dout(256'h1c2c3c4c5c6c7c8c9c0c1c2c3c4c5c6c7c8c9cacbcccdcecfc0c1c2c3c4c5c6c),
.clk_10m(clk_10m),
.rst_n(rst_n),
.o_Tx_Serial(o_Tx_Serial),
.ddr_fifo_full_rd_en(fifo_rd_en)
    );

endmodule
