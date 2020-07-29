`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/23 16:22:03
// Design Name: 
// Module Name: ddr3_tb
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


module ddr3_tb(


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
	
// Inputs


  // Differential system clocks


reg             sys_clk_p;
reg             sys_clk_n;
initial sys_clk_n=1;
initial sys_clk_p=0;
always 
#1 sys_clk_n=~sys_clk_n;
always 
#1 sys_clk_p=~sys_clk_p;


  // user interface signals
parameter WRITE=3'b000;
parameter READ=3'b001;

  reg [28:0]       app_addr;
  reg [2:0]       app_cmd;
  reg             app_en;
  reg [255:0]        app_wdf_data;
  reg             app_wdf_end;
  reg [31:0]        app_wdf_mask;
  reg             app_wdf_wren;
  wire [255:0]       app_rd_data;
  wire            app_rd_data_end;
  wire            app_rd_data_valid;
  wire            app_rdy;
  wire            app_wdf_rdy;
  reg         app_sr_req;
  reg         app_ref_req;
  reg         app_zq_req;
  wire            app_sr_active;
  wire            app_ref_ack;
  wire            app_zq_ack;
  wire            ui_clk;
  wire            ui_clk_sync_rst;
  wire            init_calib_complete;
  wire [11:0]                                device_temp;
  reg			sys_rst;

initial
	begin
	sys_rst=1'b1;
	app_addr=29'd0;
	app_cmd=WRITE;
	app_en=1'b1;
	app_wdf_data=256'habcde4;
	app_wdf_wren=1'b1;
	app_wdf_end=1'b1;
	app_wdf_mask=32'b0;
	app_sr_req=1'b0;
	app_zq_req=1'b0;
	//何时地址加+8？
	//2:1 mode 和 4:1 mode 的app_wdf_end信号
	#2 sys_rst=1'b0;
	#4 		app_en=1'b0;
	#96 	app_addr=29'd8;
			app_en=1'b1;
			
	#2 		app_en=1'b0;
	#100 	app_cmd=READ;
	app_wdf_wren=1'b0;
	app_wdf_end=1'b0;
	app_en=1'b1;
	app_addr=29'd0;
	#150 app_addr=29'd8;	
	end

  
initial #1800 $stop; 
//------------------------------------实例化--------
ddr3 ddr3_test(



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


.sys_clk_p(sys_clk_p),
.sys_clk_n(sys_clk_n),


  // user interface signals

.app_addr(app_addr),
.app_cmd(app_cmd),
.app_en(app_en),
.app_wdf_data(app_wdf_data),
.app_wdf_end(app_wdf_end),
.app_wdf_mask(app_wdf_mask),
.app_wdf_wren(app_wdf_wren),
.app_rd_data(app_rd_data),
.app_rd_data_end(app_rd_data_end),
.app_rd_data_valid(app_rd_data_valid),
.app_rdy(app_rdy),
.app_wdf_rdy(app_wdf_rdy),
.app_sr_req(app_sr_req),
.app_ref_req(app_ref_req),
.app_zq_req(app_zq_req),
.app_sr_active(app_sr_active),
.app_ref_ack(app_ref_ack),
.app_zq_ack(app_zq_ack),
.ui_clk(ui_clk),
.ui_clk_sync_rst(ui_clk_sync_rst),
.init_calib_complete(init_calib_complete),
.device_temp(device_temp),
.sys_rst(sys_rst)


);
endmodule
