`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/04 16:11:53
// Design Name: 
// Module Name: data_convert
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
//

module data_convert
#(
parameter X_START_ADDR=448,
parameter Y_START_ADDR=28,
parameter RESOLUTION=1024,
parameter SUB=2,
parameter NUM=(1<<14)/RESOLUTION
)
(
input [12:0] counter_h,
input [12:0] counter_v,
input clk_vga,
input rst_n,
input [255:0] ddr_fifo_dout,
// input [12:0] x_pos,
// input [12:0] y_pos,
output reg ddr_fifo_rd_en,
output reg [15:0] vga_data,
// output wire [15:0] vga_data,
output wire data_valid
    );
//---------------------------------------------------resolution--------------------------------
//13-bit 0~1<<13-1
//1920*1080 60FPS_148.5MHz
parameter  H_SYNC   =  13'd44;   //行同步脉冲
parameter  H_BACK   =  13'd148;   //行显示后沿
parameter  H_DISP   =  13'd1920;  //行有效数据
parameter  H_FRONT  =  13'd88;    //行显示前沿
parameter  H_TOTAL  =  13'd2200;  //行扫描周期

parameter  V_SYNC   =  13'd5;     //场同步脉冲
parameter  V_BACK   =  13'd36;    //场显示后沿
parameter  V_DISP   =  13'd1080;   //场有效数据
parameter  V_FRONT  =  13'd4;     //场显示前沿
parameter  V_TOTAL  =  13'd1125;   //场扫描周期


// //1400 x 1050 @ 60 Hz timing 122.61 MHz
// parameter  H_SYNC   =  13'd152;   //行同步脉冲
// parameter  H_BACK   =  13'd240;   //行显示后沿
// parameter  H_DISP   =  13'd1400;  //行有效数据
// parameter  H_FRONT  =  13'd88;    //行显示前沿
// parameter  H_TOTAL  =  13'd1880;  //行扫描周期

// parameter  V_SYNC   =  13'd3;     //场同步脉冲
// parameter  V_BACK   =  13'd33;    //场显示后沿
// parameter  V_DISP   =  13'd1050;   //场有效数据
// parameter  V_FRONT  =  13'd1;     //场显示前沿
// parameter  V_TOTAL  =  13'd1087;   //场扫描周期

// //640 x 480 @ 60 Hz 25.175Mhz
// parameter  H_SYNC   =  13'd96;   //行同步脉冲
// parameter  H_BACK   =  13'd48;   //行显示后沿
// parameter  H_DISP   =  13'd640;  //行有效数据
// parameter  H_FRONT  =  13'd16;    //行显示前沿
// parameter  H_TOTAL  =  13'd800;  //行扫描周期

// parameter  V_SYNC   =  13'd2;     //场同步脉冲
// parameter  V_BACK   =  13'd33;    //场显示后沿
// parameter  V_DISP   =  13'd480;   //场有效数据
// parameter  V_FRONT  =  13'd10;     //场显示前沿
// parameter  V_TOTAL  =  13'd525;   //场扫描周期

//------------------------------------------------------------------------------------------------

// reg [12:0] counter;
reg [12:0] counter_1;
reg [12:0] counter_2;
reg [1:0]  flag;
reg [255:0] reg_a;
reg [255:0] reg_b;
wire [12:0] x_pos;
wire [12:0] y_pos;
wire vga_disp_valid;
reg locked;
assign data_valid=(counter_h>=(H_SYNC+H_BACK+X_START_ADDR-SUB) && counter_h<(H_SYNC+H_BACK+H_DISP-X_START_ADDR-SUB) && counter_v>=(V_SYNC+V_BACK+Y_START_ADDR) && counter_v<(V_SYNC+V_BACK+V_DISP-Y_START_ADDR));//可以提早周期
assign vga_disp_valid=(counter_h>=(H_SYNC+H_BACK-SUB) && counter_h<(H_SYNC+H_BACK+H_DISP-SUB) && counter_v>=(V_SYNC+V_BACK) && counter_v<(V_SYNC+V_BACK+V_DISP));

assign x_pos=vga_disp_valid?(counter_h-(H_SYNC+H_BACK-SUB)):13'b0;
assign y_pos=vga_disp_valid?(counter_v-(V_SYNC+V_BACK)):13'b0;

//------------------------------------second stage---------------------------------------
always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			counter_1<=13'd0;
		else if(counter_1==(2*NUM) && data_valid)//1~4 5~8
			counter_1<=13'd1;
		else if(data_valid)
		counter_1<=counter_1+13'd1;
		else
			counter_1<=13'd0;
	end
	
always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			locked<=1'b0;
		else if(x_pos==13'd2 && y_pos==13'd28)
			locked<=1'b1;
	end
	
//----------------------------------------third stage---------------------------------------------

always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			ddr_fifo_rd_en<=1'b0;
		else if(x_pos==13'd0 && y_pos==13'd28 && ~locked )//locked 只有复位后的第一帧需要
			ddr_fifo_rd_en<=1'b1;
		else if(counter_1==(NUM+1) || counter_1==13'd1)//ddr_fifo读出来的数据能保持
			ddr_fifo_rd_en<=1'b1;
		else
			ddr_fifo_rd_en<=1'b0;
	end
	
// always @(posedge clk_vga,negedge rst_n)
	// begin
		// if(~rst_n)
			// flag<=2'b00;
		// else if(counter_1==13'd1)
		// flag<=2'b01;
		// else if(counter_1==13'd9)
		// flag<=2'b10;
	// end
	
always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			reg_a<=256'b0;
		else if(x_pos==13'd2 && y_pos==13'd28 && ~locked)
			reg_a<=ddr_fifo_dout;
		else if(counter_1==(NUM+3))///5读，6写
			reg_a<=ddr_fifo_dout;
		else if(counter_1<=NUM && counter_1>=13'd1)
			reg_a<=reg_a<<(256/NUM);
	end

always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			reg_b<=256'b0;
		else if(counter_1==13'd3)/////1读，2写
			reg_b<=ddr_fifo_dout;
		else if(counter_1>=(NUM+1))
			reg_b<=reg_b<<(256/NUM);
	end


always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			vga_data<=16'b0;
		else if(counter_1<=NUM && counter_1>=13'd1)
			vga_data<=reg_a[255-:16];
		else if(counter_1>=(NUM+1))
			vga_data<=reg_b[255-:16];
	end







// always @(posedge clk_vga,negedge rst_n)
	// begin
		// if(~rst_n)
			// counter<=13'd0;
		// else if(counter_h==13'b0 &&  y_pos>=13'd28 && y_pos<13'd1052)
			// counter<=13'd1;
		// else if(counter<13'd65 && counter>13'd0)
			// counter<=counter+1;
	// end
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////


// always @(posedge clk_vga,negedge rst_n)
	// begin
		// if(~rst_n)
			// counter_2<=13'd0;
		// else if(counter_2==13'd64)//parameter
			// counter_2<=13'd1;
		// else if(counter_1==13'd16)
		// counter_2<=counter_2+13'd1;
	// end

////////////////////////////////////////////////////////////////



// `include  "C:\Users\gyz\Documents\testout.v"

			

// reg [15:0] vga_signal;

// assign vga_data=(data_valid)?vga_signal:16'b0;
// reg locked;
// always @(posedge clk_vga,negedge rst_n)
	// begin
		// if(~rst_n)
			// locked<=1'b1;
		// else if(x_pos==13'd1 && y_pos==13'd28)
			// locked<=1'b0;
	// end
	
// assign vga_data=(flag)?reg_b[255-:16]:reg_a[255-:16];
// always @(posedge clk_vga,negedge rst_n)
	// begin
		// if(~rst_n)
			// vga_data<=16'b0;
		// else if(flag)
			// vga_data<=reg_b[255-:16];
		// else if(~flag)
			// vga_data<=reg_a[255-:16];
	// end

// always @(posedge clk_vga,negedge rst_n)
	// begin
		// if(~rst_n)
			// vga_signal<=16'b0;
		// else if(data_valid)
			// case(counter_2)
			// 7'd1: vga_signal<=data1[255-:16];
			// 7'd2: vga_signal<=data2[255-:16];
			// 7'd3: vga_signal<=data3[255-:16];
			// 7'd4: vga_signal<=data4[255-:16];
			// 7'd5: vga_signal<=data5[255-:16];
			// 7'd6: vga_signal<=data6[255-:16];
			// 7'd7: vga_signal<=data7[255-:16];
			// 7'd8: vga_signal<=data8[255-:16];
			// 7'd9: vga_signal<=data9[255-:16];
			// 7'd10: vga_signal<=data10[255-:16];
			// 7'd11: vga_signal<=data11[255-:16];
			// 7'd12: vga_signal<=data12[255-:16];
			// 7'd13: vga_signal<=data13[255-:16];
			// 7'd14: vga_signal<=data14[255-:16];
			// 7'd15: vga_signal<=data15[255-:16];
			// 7'd16: vga_signal<=data16[255-:16];
			// 7'd17: vga_signal<=data17[255-:16];
			// 7'd18: vga_signal<=data18[255-:16];
			// 7'd19: vga_signal<=data19[255-:16];
			// 7'd20: vga_signal<=data20[255-:16];
			// 7'd21: vga_signal<=data21[255-:16];
			// 7'd22: vga_signal<=data22[255-:16];
			// 7'd23: vga_signal<=data23[255-:16];
			// 7'd24: vga_signal<=data24[255-:16];
			// 7'd25: vga_signal<=data25[255-:16];
			// 7'd26: vga_signal<=data26[255-:16];
			// 7'd27: vga_signal<=data27[255-:16];
			// 7'd28: vga_signal<=data28[255-:16];
			// 7'd29: vga_signal<=data29[255-:16];
			// 7'd30: vga_signal<=data30[255-:16];
			// 7'd31: vga_signal<=data31[255-:16];
			// 7'd32: vga_signal<=data32[255-:16];
			// 7'd33: vga_signal<=data33[255-:16];
			// 7'd34: vga_signal<=data34[255-:16];
			// 7'd35: vga_signal<=data35[255-:16];
			// 7'd36: vga_signal<=data36[255-:16];
			// 7'd37: vga_signal<=data37[255-:16];
			// 7'd38: vga_signal<=data38[255-:16];
			// 7'd39: vga_signal<=data39[255-:16];
			// 7'd40: vga_signal<=data40[255-:16];
			// 7'd41: vga_signal<=data41[255-:16];
			// 7'd42: vga_signal<=data42[255-:16];
			// 7'd43: vga_signal<=data43[255-:16];
			// 7'd44: vga_signal<=data44[255-:16];
			// 7'd45: vga_signal<=data45[255-:16];
			// 7'd46: vga_signal<=data46[255-:16];
			// 7'd47: vga_signal<=data47[255-:16];
			// 7'd48: vga_signal<=data48[255-:16];
			// 7'd49: vga_signal<=data49[255-:16];
			// 7'd50: vga_signal<=data50[255-:16];
			// 7'd51: vga_signal<=data51[255-:16];
			// 7'd52: vga_signal<=data52[255-:16];
			// 7'd53: vga_signal<=data53[255-:16];
			// 7'd54: vga_signal<=data54[255-:16];
			// 7'd55: vga_signal<=data55[255-:16];
			// 7'd56: vga_signal<=data56[255-:16];
			// 7'd57: vga_signal<=data57[255-:16];
			// 7'd58: vga_signal<=data58[255-:16];
			// 7'd59: vga_signal<=data59[255-:16];
			// 7'd60: vga_signal<=data60[255-:16];
			// 7'd61: vga_signal<=data61[255-:16];
			// 7'd62: vga_signal<=data62[255-:16];
			// 7'd63: vga_signal<=data63[255-:16];
			// 7'd64: vga_signal<=data64[255-:16];
			// default: vga_signal<=16'b0;
		// endcase
	// else	
		// vga_signal<=16'b0;
	// end	
	
endmodule
