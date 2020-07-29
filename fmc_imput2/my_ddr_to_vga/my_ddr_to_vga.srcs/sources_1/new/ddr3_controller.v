`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/15 14:10:24
// Design Name: 
// Module Name: ddr3_controller
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


module ddr3_controller
#(
	parameter MEM_DATA_BITS = 256,
	parameter ADDR_BITS = 29,
	parameter RESOLUTION=1024
)
(
input test_pause,
input sd_fifo_empty,
input ddr_fifo_s_empty,
input ddr_fifo_full_s_empty,
input sys_ready,
input sys_clk_p,
input sys_clk_n,
input sys_rst,
output wire ui_clk,
output wire init_calib_complete,
output wire rd_burst_data_valid,
output wire rd_burst_data_full_valid,
output wire wr_burst_data_req,   //向sd_fifo请求数据
output wire [MEM_DATA_BITS - 1:0] rd_burst_data,   /*读出的数据*/
output wire [MEM_DATA_BITS - 1:0] rd_burst_data_full, 
input[MEM_DATA_BITS - 1:0] wr_burst_data,    /*待写入的数据*/  //来自sd_fifo
output ui_clk_sync_rst,
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
(* keep = "TRUE" *) wire rd_burst_req;
(* keep = "TRUE" *) wire wr_burst_req;

wire rd_burst_finish;                      /*读完成*/
wire wr_burst_finish;                       /*写完成*/

//------------------------------DDR3-----------------------------------------------
 wire [28:0]       app_addr;
 wire [2:0]       app_cmd;
 wire             app_en;
wire [255:0]        app_wdf_data;
 wire             app_wdf_end;
 wire [31:0]        app_wdf_mask;
 wire             app_wdf_wren;
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

wire [11:0]     device_temp;



ddr3_sig_generator 
#(
.RESOLUTION(RESOLUTION)
)
ddr3_FSM
(
.test_pause(test_pause),
.sd_fifo_empty(sd_fifo_empty),
.ddr_fifo_s_empty(ddr_fifo_s_empty),
.ddr_fifo_full_s_empty(ddr_fifo_full_s_empty),
.rst_n(sys_ready),//rst_n && ~ui_clk_sync_rst && init_calib_complete
.clk(ui_clk),
.rd_burst_req(rd_burst_req),//init_calib_complete
.wr_burst_req(wr_burst_req),//init_calib_complete
.rd_burst_data_valid(rd_burst_data_valid),                  /*读出数据有效*/
.rd_burst_data_full_valid(rd_burst_data_full_valid), 
.wr_burst_data_req(wr_burst_data_req),                    /*写数据请求信号*/  //送往wr_fifo
.rd_burst_data(rd_burst_data),   /*读出的数据*/
.rd_burst_data_full(rd_burst_data_full),
.wr_burst_data(wr_burst_data),    /*待写入的数据*/  //来自wr_fifo
.rd_burst_finish(rd_burst_finish),                      /*读完成*/
.wr_burst_finish(wr_burst_finish),                       /*写完成*/


.app_ref_ack(app_ref_ack),
.app_ref_req(app_ref_req),
.app_addr(app_addr),
.app_cmd(app_cmd),
.app_en(app_en),
.app_wdf_data(app_wdf_data),
.app_wdf_end(app_wdf_end),
.app_wdf_mask(app_wdf_mask),//遮蔽一个字节
.app_wdf_wren(app_wdf_wren),
.app_rd_data(app_rd_data),
.app_rd_data_end(app_rd_data_end),
.app_rd_data_valid(app_rd_data_valid),
.app_rdy(app_rdy),
.app_wdf_rdy(app_wdf_rdy),
.ui_clk_sync_rst(ui_clk_sync_rst)
// input                                       init_calib_complete
);

req_generator init_signal(
.rd_burst_req(rd_burst_req),
.wr_burst_req(wr_burst_req),
.rd_burst_finish(rd_burst_finish),                      /*读完成*/
.wr_burst_finish(wr_burst_finish),                   /*写完成*/
.ui_clk(ui_clk),
.sys_ready(sys_ready)
);

DDR3_CONTROL u_DDR3_CONTROL
      (
// Memory interface ports
       .ddr3_addr                      (ddr3_addr),
       .ddr3_ba                        (ddr3_ba),
       .ddr3_cas_n                     (ddr3_cas_n),
       .ddr3_ck_n                      (ddr3_ck_n),
       .ddr3_ck_p                      (ddr3_ck_p),
       .ddr3_cke                       (ddr3_cke),
       .ddr3_ras_n                     (ddr3_ras_n),
       .ddr3_we_n                      (ddr3_we_n),
       .ddr3_dq                        (ddr3_dq),
       .ddr3_dqs_n                     (ddr3_dqs_n),
       .ddr3_dqs_p                     (ddr3_dqs_p),
       .ddr3_reset_n                   (ddr3_reset_n),
       .init_calib_complete            (init_calib_complete),
      
       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),
// Application interface ports
       .app_addr                       (app_addr),//操作地址，bank+row+column
       .app_cmd                        (app_cmd),//操作命令＿000写入＿001读出，要和操作地坿同时出现才有敿
       .app_en                         (app_en), //操作app_addr的使能，拉高的时候，对应app_addr有效
	   
       .app_wdf_data                   (app_wdf_data),//写入的数据接叿,256bit
       .app_wdf_end                    (app_wdf_end),//跟app_wdf_wren保持丿致即叿
       .app_wdf_wren                   (app_wdf_wren),//写入数据接口app_wdf_data的使能，
													  //拉高时，对应的app_wdf_data有效
       .app_rd_data                    (app_rd_data),
       .app_rd_data_end                (app_rd_data_end),
       .app_rd_data_valid              (app_rd_data_valid),
       .app_rdy                        (app_rdy),
       .app_wdf_rdy                    (app_wdf_rdy),
	   
       .app_sr_req                     (1'b0),
       .app_ref_req                    (app_ref_req),
       .app_zq_req                     (1'b0),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),
       .ui_clk                         (ui_clk),
       .ui_clk_sync_rst                (ui_clk_sync_rst ),
      
       .app_wdf_mask                   (0),
      
       
// System Clock Ports
       .sys_clk_p                       (sys_clk_p),
       .sys_clk_n                       (sys_clk_n),
       .device_temp            (device_temp),
       `ifdef SKIP_CALIB
       .calib_tap_req                    (calib_tap_req),
       .calib_tap_load                   (calib_tap_load),
       .calib_tap_addr                   (calib_tap_addr),
       .calib_tap_val                    (calib_tap_val),
       .calib_tap_load_done              (calib_tap_load_done),
       `endif
      
       .sys_rst                        (sys_rst)
       );
	   

endmodule