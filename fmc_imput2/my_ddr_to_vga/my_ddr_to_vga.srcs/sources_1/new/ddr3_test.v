`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/30 16:15:34
// Design Name: 
// Module Name: ddr3_test
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


module ddr3_test(
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
output wire test_led0,
output reg test_led1,
output reg test_led2,
output reg test_led3,
output wire test_led4,
output wire test_led5,
output wire test_led6,
output wire test_led7,
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
output [0:0]       ddr3_odt
    );
	
reg [255:0] data_in;
reg [5:0] counter;
always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			counter<=6'b0;
		else if(counter==6'd31)
			counter<=6'b0;
		else if(app_rdy && init_calib_complete && app_wdf_rdy && counter<6'd16)
			counter<=counter+6'b1;
		else if(app_rdy && init_calib_complete && app_rd_data_valid)
			counter<=counter+6'b1;
	end

always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_cmd<= 3'b000;
		else if(counter == 6'd16)
			app_cmd<=3'b001;
	end

parameter app_addr_ori=29'b0;

always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_en<= 1'b0;
		else 
			app_en<=1'b1;
	end

always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_addr<=app_addr_ori;
		else if(counter == 6'd16)
			app_addr<=app_addr_ori;
		else if(app_rdy && app_wdf_rdy && init_calib_complete)//??
			app_addr<=app_addr+29'd8;	
	end

always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_wdf_data<=256'd1000;
		else
			case(counter)
				6'd0:app_wdf_data<=256'd0;
				6'd1:app_wdf_data<=256'd10;
				6'd2:app_wdf_data<=256'd20;
				6'd3:app_wdf_data<=256'd30;
				6'd4:app_wdf_data<=256'd40;
				6'd5:app_wdf_data<=256'd50;
				6'd6:app_wdf_data<=256'd60;
				6'd7:app_wdf_data<=256'd70;
				6'd8:app_wdf_data<=256'd80;
				6'd9:app_wdf_data<=256'd90;
				6'd10:app_wdf_data<=256'd100;
				6'd11:app_wdf_data<=256'd110;
				6'd12:app_wdf_data<=256'd120;
				6'd13:app_wdf_data<=256'd130;
				6'd14:app_wdf_data<=256'd140;
				6'd15:app_wdf_data<=256'd150;
				6'd16:app_wdf_data<=256'd0;
				6'd17:app_wdf_data<=256'd10;
				6'd18:app_wdf_data<=256'd20;
				6'd19:app_wdf_data<=256'd30;
				6'd20:app_wdf_data<=256'd40;
				6'd21:app_wdf_data<=256'd50;
				6'd22:app_wdf_data<=256'd60;
				6'd23:app_wdf_data<=256'd70;
				6'd24:app_wdf_data<=256'd80;
				6'd25:app_wdf_data<=256'd90;
				6'd26:app_wdf_data<=256'd100;
				6'd27:app_wdf_data<=256'd110;
				6'd28:app_wdf_data<=256'd120;
				6'd29:app_wdf_data<=256'd130;
				6'd30:app_wdf_data<=256'd140;
				6'd31:app_wdf_data<=256'd150;
				default:app_wdf_data<=256'd2000;
			endcase
	end
always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_wdf_end<=1'b0;
		else if(counter >= 6'd16)
			app_wdf_end<=1'b0;
		else
			app_wdf_end<=1'b1;
	end
always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_wdf_wren<=1'b0;
		else if(counter >= 6'd16)
			app_wdf_wren<=1'b0;
		else
			app_wdf_wren<=1'b1;
	end	
//------------------------------DDR3-----------------------------------------------
reg [28:0]       app_addr;
reg [2:0]       app_cmd;
reg             app_en;
reg [255:0]        app_wdf_data;
reg             app_wdf_end;
wire [31:0]        app_wdf_mask;
reg             app_wdf_wren;
wire [255:0]       app_rd_data;
wire            app_rd_data_end;
wire            app_rd_data_valid;
wire            app_rdy;
wire            app_wdf_rdy;
wire         app_sr_req;
wire         app_ref_req;
wire         app_zq_req;
wire            app_sr_active;
wire            app_ref_ack;
wire            app_zq_ack;
wire            ui_clk;
wire            ui_clk_sync_rst;
wire            init_calib_complete;
wire [11:0]                                device_temp;

ddr3 ddr3_ui(
  // Inouts
.ddr3_dq(ddr3_dq),
.ddr3_dqs_n(ddr3_dqs_n),
.ddr3_dqs_p(ddr3_dqs_p),
  // Outputs
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


  // user interface signals
	//********input
.app_addr(app_addr),//当前请求的地址
.app_cmd(app_cmd),//当前请求的命令，3'b001 read 3'b000 write
.app_en(app_en),//enable for app_addr app_cmd app_sz app_hi_pri
.app_wdf_data(app_wdf_data),//写请求输入的数据
.app_wdf_end(app_wdf_end),//如果当前时钟周期为输入数据的最后一个输入周期，变为高电平。
//在本例中，800MHZ*2*32bit=200MHZ*(32*8)bit，突发模式连读8个地址，PYH:USER INTERFACE frequency=4:1
//因此本例中一个时钟周期就能读写256位，如果PYH:USER INTERFACE frequency=2:1,则需要两个时钟周期才可以读写完256bit
//此时，第二周期app_wdf_end会变为高电平
.app_wdf_mask(32'b0),//app_wdf_data的掩码，app_wdf_data[7:0]将被app_wdf_mask[0]=1遮蔽
.app_wdf_wren(app_wdf_wren),//app_wdf_data高电平使能

	//*********output
.app_rd_data(app_rd_data),//读请求得到的数据
.app_rd_data_end(app_rd_data_end),//高电平时说明这是app_rd_data输出的最后一个时钟周期，当且仅当app_rd_data_valid为高时候有效
.app_rd_data_valid(app_rd_data_valid),//高电平说明app_rd_data有效
.app_rdy(app_rdy),//ready信号，如果低电平无效则即使app_en有效，app_addr和app_cmd都需要等待
.app_wdf_rdy(app_wdf_rdy),//ready to recive data,app_wdf_wren和app_wdf_rdy同时为高电平有效才可以写数据
	//********input
.app_sr_req(app_sr_req),//reserved, tied to 0
.app_ref_req(app_ref_req),//refresh command
.app_zq_req(app_zq_req),//ZQ calibration command
	//*********output
.app_sr_active(app_sr_active),//reserved
.app_ref_ack(app_ref_ack),//高电平表示已将刷新命令送至物理层
.app_zq_ack(app_zq_ack),//高电平表示已将校准命令送至物理层
.ui_clk(ui_clk),//user interface clock,本例应该为200Mhz
.ui_clk_sync_rst(ui_clk_sync_rst),//UI reset高电平有效
.init_calib_complete(init_calib_complete),//校准完成后PHY让该信号变高
.device_temp(device_temp),//temperature
.sys_rst(~rst_n)
);

endmodule
