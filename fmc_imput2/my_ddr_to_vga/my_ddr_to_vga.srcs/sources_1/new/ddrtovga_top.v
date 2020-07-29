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
// `define pixel 1024
`include "C:\Users\gyz\Desktop\ddrtovga\fmc_imput2\my_ddr_to_vga\my_ddr_to_vga.srcs\sources_1\new\define.v"

module ddrtovga_top
#(
// parameter RESOLUTION=4096
`ifdef pixel
parameter RESOLUTION=1024
`else
parameter RESOLUTION=4096
`endif
)
(
input wire rst_n,
input wire clk_ori_p,
input wire clk_ori_n,
//VGA
output wire vga_hsync, 
output wire vga_vsync,
output wire [4:0] vga_r,
output wire [5:0] vga_g,
output wire [4:0] vga_b,
//TEST
input test_pause,
output wire test_led0,
output wire test_led1,
output wire test_led2,
output wire test_led3,
output wire test_led4,
output wire test_led5,
//Micro SD               
// input  [1:0] 		  switch, 		//图片切换                 
input        		  sd_miso     ,  //SD卡SPI串行输入数据信号
output       		  sd_clk      ,  //SD卡SPI时钟信号
output       		  sd_cs       ,  //SD卡SPI片选信号
output       		  sd_mosi     ,  //SD卡SPI串行输出数据信号

//DDR3
  // Inouts
inout [31:0]       ddr3_dq,
inout [3:0]        ddr3_dqs_n,
inout [3:0]        ddr3_dqs_p,
// Outputs
output [14:0]     ddr3_addr,
output [2:0]        ddr3_ba,
output            ddr3_ras_n,
output            ddr3_cas_n,
output            ddr3_we_n,
output            ddr3_reset_n,
output [0:0]       ddr3_ck_p,
output [0:0]       ddr3_ck_n,
output [0:0]       ddr3_cke,
output [0:0]        ddr3_cs_n,
output [3:0]     ddr3_dm,
output [0:0]       ddr3_odt,

//uart
output wire o_Tx_Serial,
//FMC
input wire [15:0] fmc_data,
input wire fmc_hsync,
input wire fmc_vsync,
input wire frm_cnt,//哪张图片which picture
input clk_fmc_in



);
//The speed of DDR3 is 1800Mbps, 1920*1080*8*60/10**6=995.3Mbps. 16-bit is not applicable

wire clk_vga;
wire clk_100m;
wire clk_50m;
wire clk_50m_n;
wire clk_10m;
wire locked;
wire [15:0] vga_data;
// (* keep = "TRUE" *)wire [15:0] vga_data;

//------------------------------VGA Display-------------------------------------
wire [12:0] counter_h;
wire [12:0] counter_v;
wire  [12:0] x_pos;
wire  [12:0] y_pos;
reg vga_enable;
//-------------------------------Micro SD READ------------------------------------
wire [255:0] sd_dout_256bit;
wire sd_dout_valid;
wire sd_init_done;
//------------------------------READ FROM SD FIFO--------------------------------------------
wire sd_fifo_full;
wire sd_fifo_empty;
wire sd_fifo_read;
wire [255:0] sd_fifo_dout;
//------------------------------DDR3-----------------------------------------------
wire            ui_clk;
wire            ui_clk_sync_rst;
wire            init_calib_complete;
wire [255:0] ddr_dout_256bit;
wire ddr_dout_valid;
wire [255:0] ddr_dout_256bit_full;
wire rd_burst_data_full_valid;
//------------------------------fifo data_sample-----------------------------------
wire ddr_fifo_s_empty;
wire [255:0] ddr_fifo_b_dout;
wire ddr_fifo_b_empty;

wire ddr_fifo_full_s_empty;
wire [255:0] ddr_fifo_full_b_dout;
wire ddr_fifo_full_b_empty;
wire ddr_fifo_full_b_almost_empty;

//---------------------------data_convert-----------------
wire data_valid;
//---------------------------uart-------------------------
wire ddr_fifo_full_b_rd_en_uart;
//---------------------------FMC--------------------------
reg [255:0] ddr_fifo_dout;
wire ddr_fifo_rd_en;
wire ddr_fifo_full_b_rd_en_fmc;
wire clk_fmc;

reg [15:0] fmc_data_r;
reg fmc_hsync_r;
reg fmc_vsync_r;
reg frm_cnt_r;
wire fifo_rd_en;
(* mark_debug = "true" *) wire me_define;//由我统一指定。
(* mark_debug = "true" *) wire [15:0] fmc_fifo_dout;
(* mark_debug = "true" *) wire [15:0] fmc_fifo_dout_from_ddr;
wire fmc_fifo_empty;
wire fmc_fifo_almost_empty;
wire fmc_fifo_full;
wire fmc_fifo_almost_full;
wire [31:0] error_cnt;

BUFGP BUFGP_INS(
.O(clk_fmc),
.I(clk_fmc_in)
);
//-----------------------------PLL-------------------------------------------------

clk_convert clk_generate(
// Status and control signals
.reset(~rst_n),
// Clock in ports
.clk_in1(ui_clk),
// Clock out ports
.clk_vga(clk_vga),
.clk_50m(clk_50m),
.clk_50m_n(clk_50m_n),
.clk_10m(clk_10m),
.clk_100m(clk_100m),
.locked(locked)
 );

reg clk_tem;
reg [1:0] clk_counter;
reg clk_sd;
reg clk_sd_180d;
parameter NUM=2'b01;//4分频
// always @(posedge ui_clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// clk_tem<=1'b0;
		// else
			// clk_tem<=~clk_tem;
	// end
	
always @(posedge ui_clk, negedge rst_n)
	begin
		if(~rst_n)
			clk_counter<=2'b0;
		else if(clk_counter==NUM)
			clk_counter<=2'b0;
		else
			clk_counter<=clk_counter+2'b1;
	end
always @(posedge ui_clk, negedge rst_n)
	begin
		if(~rst_n)
			clk_sd<=1'b0;
		else if(clk_counter==NUM)
			clk_sd<=~clk_sd;
	end

always @(posedge ui_clk, negedge rst_n)
	begin
		if(~rst_n)
			clk_sd_180d<=1'b1;
		else if(clk_counter==NUM)
			clk_sd_180d<=~clk_sd_180d;
	end

//--------------------------------------------------------------------------------
//----------------------------------test part-------------------------------------
assign test_led0=rst_n&locked & sd_init_done;//expect 1
// assign test_led1=(~sd_fifo_full || ~sd_fifo_empty) ;//expect 1
// assign test_led1=sd_fifo_full; //expect 0
assign test_led1=ddr_fifo_s_empty;//expect change from 0 to 1
assign test_led2=ddr_fifo_full_s_empty;//expect change from 0 to 1
assign test_led3=(~ui_clk_sync_rst);//expect 1
assign test_led4=init_calib_complete;//expect 1
assign test_led5=sys_ready;//expect 1
 //------------------------------------------------------------------------------
 //------------------------------initial signals---------------------------------
wire sys_ready;
// assign sys_ready=rst_n&locked & sd_init_done&init_calib_complete && (~sd_fifo_full || ~sd_fifo_empty) && (~ddr_fifo_full ||~ddr_fifo_empty) && (~ui_clk_sync_rst) ;//fifo初始化时full和empty都为1，可以作为初始化信号
assign sys_ready=rst_n&locked & sd_init_done&init_calib_complete;//fifo初始化时full和empty都为1，可以作为初始化信号

 //------------------------------VGA Display-------------------------------------
always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			vga_enable<=1'b0;
		else if( ~ddr_fifo_b_empty)//ddr_fifo_b_full &
			vga_enable<=1'b1;
	end
vga_disp p1080(
.clk(clk_vga),
// .rst_n(sys_ready),
.rst_n(rst_n & vga_enable),
.vga_data(vga_data),//need change
.vga_hsync(vga_hsync), 
.vga_vsync(vga_vsync),
.vga_r(vga_r),
.vga_g(vga_g),
.vga_b(vga_b),
.counter_h(counter_h),
.counter_v(counter_v),
.data_valid(data_valid)
);
//--------------------------------------------------------------------------------

//-------------------------------Micro SD READ------------------------------------

top_sd_photo 
#(
.RESOLUTION(RESOLUTION)
)
sd_read
(
.clk_50m(clk_sd)   ,  
.clk_50m_180deg(clk_sd_180d)   ,
// .clk_50m(clk_50m)   ,  
// .clk_50m_180deg(clk_50m_n)   ,  
.sys_rst_n(rst_n)   ,  //系统复位，低电平有效
.ddr_init_done(init_calib_complete),
// input [1:0]				switch,                  
//SD卡接口               
.sd_miso(sd_miso)     ,  //SD卡SPI串行输入数据信号
.sd_clk(sd_clk)      ,  //SD卡SPI时钟信号
.sd_cs(sd_cs)       ,  //SD卡SPI片选信号
.sd_mosi(sd_mosi)     ,  //SD卡SPI串行输出数据信号
.sd_dout_256bit(sd_dout_256bit),
.sd_dout_valid(sd_dout_valid),
.sd_init_done(sd_init_done),
.sd_fifo_empty(sd_fifo_empty)
// .sd_fifo_full(1'b0)//due to the depth limit of ILA, I want to sd read successively. for test only
    );
	
//---------------------------------------------------------------------------------




//------------------------------READ FROM SD FIFO--------------------------------------------

sd_fifo write_fifo(
//input
.rst(~rst_n),
.wr_clk(clk_sd),
.rd_clk(ui_clk),
.din(sd_dout_256bit),
.wr_en(sd_dout_valid),
.rd_en(sd_fifo_read),//要修改
//output
.dout(sd_fifo_dout),
.full(sd_fifo_full),
.empty(sd_fifo_empty)
);


//------------------------------DDR3-----------------------------------------------


ddr3_controller 
#(
.RESOLUTION(RESOLUTION)
)
ddr3_top
(
.test_pause(test_pause),
.sd_fifo_empty(sd_fifo_empty),
.ddr_fifo_s_empty(ddr_fifo_s_empty),
.ddr_fifo_full_s_empty(ddr_fifo_full_s_empty),
.sys_ready(sys_ready),
.sys_rst(rst_n),
.ui_clk(ui_clk),
.rd_burst_data_valid(ddr_dout_valid),
.rd_burst_data_full_valid(rd_burst_data_full_valid), 
.wr_burst_data_req(sd_fifo_read),   //向sd_fifo请求数据
.rd_burst_data(ddr_dout_256bit),   /*读出的数据*/
.rd_burst_data_full(ddr_dout_256bit_full),
.wr_burst_data(sd_fifo_dout),    /*待写入的数据*/  //来自sd_fifo
.ui_clk_sync_rst (ui_clk_sync_rst ),
   // Inouts
.ddr3_dq(ddr3_dq),
.ddr3_dqs_n(ddr3_dqs_n),
.ddr3_dqs_p(ddr3_dqs_p),

.ddr3_addr(ddr3_addr),
.ddr3_ba(ddr3_ba),
.ddr3_ras_n(ddr3_ras_n),
.ddr3_cas_n(ddr3_cas_n),
.ddr3_we_n(ddr3_we_n),
.ddr3_reset_n(ddr3_reset_n),
.ddr3_ck_p(ddr3_ck_p),
.ddr3_ck_n(ddr3_ck_n),
.ddr3_cke(ddr3_cke),
.ddr3_cs_n(ddr3_cs_n),
.ddr3_dm(ddr3_dm),
.ddr3_odt(ddr3_odt),
   // Inputs
   // Differential system clocks
.sys_clk_p(clk_ori_p),
.sys_clk_n(clk_ori_n),
.init_calib_complete(init_calib_complete)
);

//-------------------------------------------fifo data_sample-----------------
fifo_series fifo_data_sample(
.rst_n(rst_n),
.sys_ready(sys_ready),
.ui_clk(ui_clk),
.clk_vga(clk_vga),
.ddr_dout_256bit(ddr_dout_256bit),
.ddr_dout_valid(ddr_dout_valid),
.ddr_fifo_s_empty(ddr_fifo_s_empty),
.ddr_fifo_b_dout(ddr_fifo_b_dout),
.ddr_fifo_b_empty(ddr_fifo_b_empty),
.ddr_fifo_b_rd_en(ddr_fifo_b_rd_en)
);
//------------------------------------------fifo data_full---------------------
//要被ddr3>fmc 256>16的转换模块替代
// fifo_series fifo_data_full(
// .rst_n(rst_n),
// .sys_ready(sys_ready),
// .ui_clk(ui_clk),
// .clk_vga(clk_50m),//是否启用uart模块
// // .clk_vga(clk_10m),
// .ddr_dout_256bit(ddr_dout_256bit_full),
// .ddr_dout_valid(rd_burst_data_full_valid),
// .ddr_fifo_s_empty(ddr_fifo_full_s_empty),
// .ddr_fifo_b_dout(ddr_fifo_full_b_dout),
// .ddr_fifo_b_empty(ddr_fifo_full_b_empty),
// // .ddr_fifo_b_rd_en(ddr_fifo_full_b_rd_en_uart)
// .ddr_fifo_b_rd_en(ddr_fifo_full_b_rd_en_fmc)//是否启用uart模块 
// );
fifo_256to16_series fifo_data_full(
.rst_n(rst_n),
.wr_clk(ui_clk),
.rd_clk(clk_50m),
.data_in_256bit(ddr_dout_256bit_full),
.wr_en(rd_burst_data_full_valid),
.rd_en(me_define),
.data_out_16bit(fmc_fifo_dout_from_ddr),
.fifo_1_almost_empty(ddr_fifo_full_s_empty),
.fifo_empty(ddr_fifo_full_b_empty),
.fifo_almost_empty(ddr_fifo_full_b_almost_empty)
    );

//--------------------------------------------VGA reg 256 bit>16 bit-------------
data_convert 
#(
.RESOLUTION(RESOLUTION)
)
// #(
// .H_SYNC(3),   //行同步脉冲
// .H_BACK(64),   //行显示后沿
// .H_DISP(1024),  //行有效数据
// .H_FRONT(3),    //行显示前沿
// .H_TOTAL(1094),  //行扫描周期
// .V_SYNC(3),     //场同步脉冲
// .V_BACK(3),    //场显示后沿
// .V_DISP(50),   //场有效数据
// .V_FRONT(3),     //场显示前沿
// .V_TOTAL(59)   //场扫描周期
// )
ddr_data_convert(
.counter_h(counter_h),
.counter_v(counter_v),
.clk_vga(clk_vga),
// .rst_n(sys_ready),
.rst_n(rst_n & vga_enable),
.ddr_fifo_dout(ddr_fifo_b_dout),
.ddr_fifo_rd_en(ddr_fifo_b_rd_en),
.vga_data(vga_data),
// .x_pos(x_pos),
// .y_pos(y_pos),
.data_valid(data_valid)
);


//design for Uart
uart_top uart(
.ddr_fifo_full_empty(ddr_fifo_full_b_empty),
.ddr_fifo_full_dout(ddr_fifo_full_b_dout),
// .ddr_fifo_full_dout(256'h1c2c3c4c5c6c7c8c9c0c1c2c3c4c5c6c7c8c9cacbcccdcecfc0c1c2c3c4c5c6c),
.clk_10m(clk_10m),
.rst_n(rst_n),
.o_Tx_Serial(o_Tx_Serial),
.ddr_fifo_full_rd_en(ddr_fifo_full_b_rd_en_uart)
    );

//FMC SIGNAL OUTPUT
//----------------------------------------------FMC---------------------------------------


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
fifo_16_out u_fmc_fifo(
.wr_clk(clk_fmc),
// .rd_clk(clk_10m),//uart
.rd_clk(clk_50m),//ila
.rst(~rst_n),
.din(fmc_data_r),
.wr_en(fmc_hsync_r),
.rd_en(me_define),
.dout(fmc_fifo_dout),
.full(fmc_fifo_full),
.almost_full(fmc_fifo_almost_full),
.empty(fmc_fifo_empty),
.almost_empty(fmc_fifo_almost_empty)
);

fmc_data_compare u_fmc_data_compare(
.rst_n(rst_n),
.clk(clk_50m),
.data16_from_fmc(fmc_fifo_dout),
.data16_from_ddr(fmc_fifo_dout_from_ddr),
.ddr_fifo_full_b_almost_empty(ddr_fifo_full_b_almost_empty),
.fmc_fifo_almost_empty(fmc_fifo_almost_empty),
.read_req(me_define),
.error_cnt(error_cnt)
    );



//
// //-------------------------------ILA module ---------------------------------------
// ila_0 monitor(
// .clk(clk_50m),
// .probe0(sd_dout_256bit)
// );
endmodule
