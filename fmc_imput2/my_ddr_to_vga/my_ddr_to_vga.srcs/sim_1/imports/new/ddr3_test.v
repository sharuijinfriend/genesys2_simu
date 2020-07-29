`timescale 1ps/100fs
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
// Description: Used for ddr3_model simulation.
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
output wire init_calib_complete,

//DDR3
  // Inouts
inout [31:0]       ddr3_dq,
inout [3:0]        ddr3_dqs_n,
inout [3:0]        ddr3_dqs_p,
// Outputs
output wire [14:0]     ddr3_addr,
output wire [2:0]        ddr3_ba,
output wire           ddr3_ras_n,
output wire           ddr3_cas_n,
output wire           ddr3_we_n,
output wire           ddr3_reset_n,
output wire [0:0]       ddr3_ck_p,
output wire [0:0]       ddr3_ck_n,
output wire [0:0]       ddr3_cke,
output wire [0:0]        ddr3_cs_n,
output wire [3:0]     ddr3_dm,
output wire [0:0]       ddr3_odt
    );
	
//----------------------------------------------------define
parameter counter_amount=2'd0;

//DDR3

// Outputs




 reg [28:0]       app_addr;
 reg [2:0]       app_cmd;
 reg             app_en;
 reg [255:0]        app_wdf_data;
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
 wire            ui_clk;
 wire            ui_clk_sync_rst;
 // wire            init_calib_complete;
 wire [11:0]                                device_temp;
//------------------------------------------------------------------


reg [255:0] data_in;

reg [1:0] counter2;
reg enable;
always @(posedge ui_clk,negedge rst_n)
	if(~rst_n)	
		enable<=1;
	else if(counter==6'd31)
		enable<=0;
		
always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			counter2<=2'b0;
		else if(counter2==counter_amount)
			counter2<=2'b0;
		else 
			counter2<=counter2+1;
	end


 reg [5:0] counter;
always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			counter<=6'b0;
		else if(counter==6'd31)
			counter<=6'b0;
			// counter<=counter;
		else if(app_cmd==3'b000 && app_rdy && init_calib_complete && app_wdf_rdy && counter2==counter_amount  )//&& counter2==2'b11
			counter<=counter+6'b1;

		else if(app_cmd==3'b001 &&app_rdy && init_calib_complete  && counter2==counter_amount )//&& counter2==2'b11 && counter>6'd15
			counter<=counter+6'b1;
	end

always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_cmd<= 3'b000;
		else if(counter == 6'd16)
			app_cmd<=3'b001;
		else if( counter == 6'd0)//enable &&
			app_cmd<=3'b000;
	end

parameter app_addr_ori=29'b0;

always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			app_en<= 1'b0;
		// else if(~enable && counter<6'd16)
			// app_en<=1'b1;
		// else if(enable && counter>=6'd16)
			// app_en<=1'b1;
			
			
		// else if(app_rdy && init_calib_complete && counter<=6'd15 )//&& counter2==2'b11
			// app_en<=1'b1;
		// else if(app_rdy && init_calib_complete && app_rd_data_valid&& counter>6'd15 )//&& counter2==2'b11
			// app_en<=1'b1;
		
		// else if(app_cmd==3'b000 && app_rdy && init_calib_complete)
			// app_en<=1'b1;
		// else if(app_cmd==3'b001 &&app_rdy && init_calib_complete  && counter2==counter_amount )//&& counter2==2'b11 && counter>6'd15
			// app_en<=1'b1;
		// else
			// app_en<=1'b0;
		else
			app_en<=1'b1;
			
	end

always @(*)
	begin
		if(~rst_n)
			app_addr<=app_addr_ori;
		// else if(counter == 6'd16)
			// app_addr<=app_addr_ori;
		// else if(app_rdy && app_wdf_rdy && init_calib_complete)//??
			// app_addr<=app_addr+29'd8;
		else
			case(counter)
				6'd0:app_addr<=29'd0;
				6'd1:app_addr<=29'd8;
				6'd2:app_addr<=29'd16;
				6'd3:app_addr<=29'd24;
				6'd4:app_addr<=29'd32;
				6'd5:app_addr<=29'd40;
				6'd6:app_addr<=29'd48;
				6'd7:app_addr<=29'd56;
				6'd8:app_addr<=29'd64;
				6'd9:app_addr<=29'd72;
				6'd10:app_addr<=29'd80;
				6'd11:app_addr<=29'd88;
				6'd12:app_addr<=29'd96;
				6'd13:app_addr<=29'd104;
				6'd14:app_addr<=29'd112;
				6'd15:app_addr<=29'd120;
				6'd16:app_addr<=29'd0;
				6'd17:app_addr<=29'd8;
				6'd18:app_addr<=29'd16;
				6'd19:app_addr<=29'd24;
				6'd20:app_addr<=29'd32;
				6'd21:app_addr<=29'd40;
				6'd22:app_addr<=29'd48;
				6'd23:app_addr<=29'd56;
				6'd24:app_addr<=29'd64;
				6'd25:app_addr<=29'd72;
				6'd26:app_addr<=29'd80;
				6'd27:app_addr<=29'd88;
				6'd28:app_addr<=29'd96;
				6'd29:app_addr<=29'd104;
				6'd30:app_addr<=29'd112;
				6'd31:app_addr<=29'd120;
				default:app_addr<=29'd2000;
			endcase
	end

always @(*)
	begin
		if(~rst_n)
			app_wdf_data<=256'd1000;
		else
			case(counter)
				6'd0:app_wdf_data<=256'd0;
				6'd1:app_wdf_data<=256'd8;
				6'd2:app_wdf_data<=256'd16;
				6'd3:app_wdf_data<=256'd24;
				6'd4:app_wdf_data<=256'd32;
				6'd5:app_wdf_data<=256'd40;
				6'd6:app_wdf_data<=256'd48;
				6'd7:app_wdf_data<=256'd56;
				6'd8:app_wdf_data<=256'd64;
				6'd9:app_wdf_data<=256'd72;
				6'd10:app_wdf_data<=256'd80;
				6'd11:app_wdf_data<=256'd88;
				6'd12:app_wdf_data<=256'd96;
				6'd13:app_wdf_data<=256'd104;
				6'd14:app_wdf_data<=256'd112;
				6'd15:app_wdf_data<=256'd120;
				6'd16:app_wdf_data<=256'd0;
				6'd17:app_wdf_data<=256'd8;
				6'd18:app_wdf_data<=256'd16;
				6'd19:app_wdf_data<=256'd24;
				6'd20:app_wdf_data<=256'd32;
				6'd21:app_wdf_data<=256'd40;
				6'd22:app_wdf_data<=256'd48;
				6'd23:app_wdf_data<=256'd56;
				6'd24:app_wdf_data<=256'd64;
				6'd25:app_wdf_data<=256'd72;
				6'd26:app_wdf_data<=256'd80;
				6'd27:app_wdf_data<=256'd88;
				6'd28:app_wdf_data<=256'd96;
				6'd256:app_wdf_data<=256'd104;
				6'd30:app_wdf_data<=256'd112;
				6'd31:app_wdf_data<=256'd120;
				default:app_wdf_data<=256'd2000;
			endcase
	end

assign app_wdf_end=app_wdf_wren;

assign  app_wdf_wren  = app_en & app_wdf_rdy & app_rdy & (app_cmd == 3'd0) &init_calib_complete;
// always @(posedge ui_clk,negedge rst_n)
	// begin
		// if(~rst_n)
			// app_wdf_wren<=1'b0;
		// else if(counter >= 6'd16)
			// app_wdf_wren<=1'b0;
		// else
			// app_wdf_wren<=1'b1;
	// end	
	
	
assign app_wdf_mask=32'b0;
//------------------------------DDR3-----------------------------------------------


DDR3_CONTROL ddr3_ui(
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
.app_addr(app_addr),//当前请求的地�?
.app_cmd(app_cmd),//当前请求的命令，3'b001 read 3'b000 write
.app_en(app_en),//enable for app_addr app_cmd app_sz app_hi_pri
.app_wdf_data(app_wdf_data),//写请求输入的数据
.app_wdf_end(app_wdf_end),//如果当前时钟周期为输入数据的�?后一个输入周期，变为高电平�??
//在本例中�?800MHZ*2*32bit=200MHZ*(32*8)bit，突发模式连�?8个地�?，PYH:USER INTERFACE frequency=4:1
//因此本例中一个时钟周期就能读�?256位，如果PYH:USER INTERFACE frequency=2:1,则需要两个时钟周期才可以读写�?256bit
//此时，第二周期app_wdf_end会变为高电平
.app_wdf_mask(app_wdf_mask),//app_wdf_data的掩码，app_wdf_data[7:0]将被app_wdf_mask[0]=1遮蔽
.app_wdf_wren(app_wdf_wren),//app_wdf_data高电平使�?

	//*********output
.app_rd_data(app_rd_data),//读请求得到的数据
.app_rd_data_end(app_rd_data_end),//高电平时说明这是app_rd_data输出的最后一个时钟周期，当且仅当app_rd_data_valid为高时�?�有�?
.app_rd_data_valid(app_rd_data_valid),//高电平说明app_rd_data有效
.app_rdy(app_rdy),//ready信号，如果低电平无效则即使app_en有效，app_addr和app_cmd都需要等�?
.app_wdf_rdy(app_wdf_rdy),//ready to recive data,app_wdf_wren和app_wdf_rdy同时为高电平有效才可以写数据
	//********input
.app_sr_req(1'b0),//reserved, tied to 0
.app_ref_req(1'b0),//refresh command
.app_zq_req(1'b0),//ZQ calibration command
	//*********output
.app_sr_active(app_sr_active),//reserved
.app_ref_ack(app_ref_ack),//高电平表示已将刷新命令�?�至物理�?
.app_zq_ack(app_zq_ack),//高电平表示已将校准命令�?�至物理�?
.ui_clk(ui_clk),//user interface clock,本例应该�?200Mhz
.ui_clk_sync_rst(ui_clk_sync_rst),//UI reset高电平有�?
.init_calib_complete(init_calib_complete),//校准完成后PHY让该信号变高
.device_temp(device_temp),//temperature
.sys_rst(rst_n)
);



endmodule
