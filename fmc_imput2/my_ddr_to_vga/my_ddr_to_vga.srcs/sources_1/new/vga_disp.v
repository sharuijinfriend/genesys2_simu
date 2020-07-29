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


module vga_disp(
input wire clk,
input wire rst_n,
input wire [15:0] vga_data,
output reg vga_hsync, 
output reg vga_vsync,
output wire [4:0] vga_r,
output wire [5:0] vga_g,
output wire [4:0] vga_b,
output reg[12:0] counter_h,
output reg [12:0] counter_v,
// output reg [12:0] x_pos,
// output reg [12:0] y_pos,
// output wire [12:0] x_pos,
// output wire [12:0] y_pos,
input data_valid
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
//-----------------------------------------color--------------------------------------------------
parameter RED_R={5{1'b1}};
parameter RED_G={6{1'b0}};
parameter RED_B={5{1'b0}};
parameter GREEN_R={5{1'b0}};
parameter GREEN_G={6{1'b1}};
parameter GREEN_B={5{1'b0}};
parameter BLUE_R={5{1'b0}};
parameter BLUE_G={6{1'b0}};
parameter BLUE_B={5{1'b1}};
parameter WHITE_R={5{1'b1}};
parameter WHITE_G={6{1'b1}};
parameter WHITE_B={5{1'b1}};
reg [15:0] color;
wire [12:0] x_pos;
wire [12:0] y_pos;
//------------------------------------------------------------------------------------------------
// reg [12:0] counter_h;
// reg [12:0] counter_v;

reg sig_valid;
always @(posedge clk, negedge rst_n)
	begin
		if(~rst_n)
			counter_h<=13'd0;
		else if(counter_h<(H_TOTAL-13'd1))
			counter_h<=counter_h+13'd1;
		else 
			counter_h<= 13'd0;
	end

always @(posedge clk, negedge rst_n)
	begin
		if(~rst_n)
			counter_v<=13'd0;
		else if(counter_h==(H_TOTAL-13'd1))
			begin
				if(counter_v<(V_TOTAL-13'd1))
					counter_v<=counter_v+13'd1;
				else
					counter_v<=13'd0;
			end

	end
	
// assign vga_hsync=(counter_h<=H_SYNC-1'b1)?1'b0:1'b1;
// assign vga_vsync=(counter_v<=V_SYNC-1'b1)?1'b0:1'b1;
always @(posedge clk, negedge rst_n)
	begin
		if(~rst_n)
			vga_hsync<=1'b1;
		else if(counter_h<=H_SYNC-1'b1)
			vga_hsync<=1'b0;
		else
			vga_hsync<=1'b1;	
	end
always @(posedge clk, negedge rst_n)
	begin
		if(~rst_n)
			vga_vsync<=1'b1;
		else if(counter_v<=V_SYNC-1'b1)
			vga_vsync<=1'b0;
		else
			vga_vsync<=1'b1;	
	end

// assign x_pos=sig_valid?(counter_h-(H_SYNC+H_BACK+1)):13'b0;
// assign y_pos=sig_valid?(counter_v-(V_SYNC+V_BACK+1)):13'b0;


// always @(posedge clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// x_pos<=13'b0;
		// else if(counter_h>=(H_SYNC+H_BACK) && counter_h<(H_SYNC+H_BACK+H_DISP) && counter_v>=(V_SYNC+V_BACK) &&  counter_v<(V_SYNC+V_BACK+V_DISP))
			// x_pos<=(counter_h-(H_SYNC+H_BACK));
	// end

// always @(posedge clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// y_pos<=13'b0;
		// else if(counter_h>=(H_SYNC+H_BACK) && counter_h<(H_SYNC+H_BACK+H_DISP) && counter_v>=(V_SYNC+V_BACK) &&  counter_v<(V_SYNC+V_BACK+V_DISP))
			// y_pos<=(counter_v-(V_SYNC+V_BACK));
	// end
assign x_pos=(counter_h>=(H_SYNC+H_BACK) && counter_h<(H_SYNC+H_BACK+H_DISP) && counter_v>=(V_SYNC+V_BACK) &&  counter_v<(V_SYNC+V_BACK+V_DISP))?(counter_h-(H_SYNC+H_BACK)):13'b0;
assign y_pos=(counter_h>=(H_SYNC+H_BACK) && counter_h<(H_SYNC+H_BACK+H_DISP) && counter_v>=(V_SYNC+V_BACK) &&  counter_v<(V_SYNC+V_BACK+V_DISP))?(counter_v-(V_SYNC+V_BACK)):13'b0;

always @(posedge clk, negedge rst_n)
	begin
		if(~rst_n)
			sig_valid<=1'b0;
		// else if(x_pos>=13'd448 && x_pos<13'd1472 && y_pos>=13'd28 && y_pos<13'd1052)
		else if(counter_h>=(H_SYNC+H_BACK) && counter_h<(H_SYNC+H_BACK+H_DISP) && counter_v>=(V_SYNC+V_BACK) &&  counter_v<(V_SYNC+V_BACK+V_DISP))
			sig_valid<=1'b1;
		else	
			sig_valid<=1'b0;
	end
	
// wire valid_tem;
// assign valid_tem=(counter_h>=(H_SYNC+H_BACK) && counter_h<(H_SYNC+H_BACK+H_DISP) && counter_v>=(V_SYNC+V_BACK) &&  counter_v<(V_SYNC+V_BACK+V_DISP));
// always @(posedge clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// x_pos<=13'b0;
		// else if(valid_tem)
			// x_pos<=(counter_h-(H_SYNC+H_BACK));
	// end

// always @(posedge clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// y_pos<=13'b0;
		// else if(valid_tem)
			// y_pos<=(counter_v-(V_SYNC+V_BACK));
	// end

// always @(posedge clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// sig_valid<=1'b0;
		// else if(valid_tem)
			// sig_valid<=1'b1;
		// else	
			// sig_valid<=1'b0;
	// end
//--------------------------------------------------VGA 彩条--------------------------
// always @(posedge clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// color<=16'b0;
		// else if(x_pos<13'd480)
			// color<={RED_R,RED_G,RED_B};
		// else if(x_pos>=13'd480 && x_pos<13'd960)
			// color<={GREEN_R,GREEN_G,GREEN_B};
		// else if(x_pos>=13'd960 && x_pos<13'd1440)
			// color<={WHITE_R,WHITE_G,WHITE_B};
		// else
			// color<={BLUE_R,BLUE_G,BLUE_B};
	// end

//-------------------------------------------------------------------------------------
// always @(posedge clk, negedge rst_n)
	// begin
		// if(~rst_n)
			// color<=16'b0;
		// else if(x_pos<13'd448)
			// color<={RED_R,RED_G,RED_B};
		// else if(x_pos>=13'd448 && x_pos<13'd1472 && y_pos>=13'd28 && y_pos<13'd1052)
			// // color<={GREEN_R,GREEN_G,GREEN_B};
			// color<=vga_data;
		// else if(x_pos>=13'd1472)
			// // color<={WHITE_R,WHITE_G,WHITE_B};
			// color<={GREEN_R,GREEN_G,GREEN_B};
		// else
			// color<={BLUE_R,BLUE_G,BLUE_B};
	// end
always @(posedge clk, negedge rst_n)
	begin
		if(~rst_n)
			color<=16'b0;
		else if(x_pos<13'd448)
			color<={WHITE_R,WHITE_G,WHITE_B};
		else if(x_pos>=13'd448 && x_pos<13'd1472 && y_pos>=13'd28 && y_pos<13'd1052)
			// color<={GREEN_R,GREEN_G,GREEN_B};
			color<=vga_data;
		else if(x_pos>=13'd1472)
			// color<={WHITE_R,WHITE_G,WHITE_B};
			color<={WHITE_R,WHITE_G,WHITE_B};
		else
			color<={WHITE_R,WHITE_G,WHITE_B};
	end
assign vga_r=sig_valid?color[15:11]:{5{1'b0}};
assign vga_g=sig_valid?color[10:5]:{6{1'b0}};
assign vga_b=sig_valid?color[4:0]:{5{1'b0}};
// assign vga_r=sig_valid?vga_data[15:11]:{5{1'b1}};
// assign vga_g=sig_valid?vga_data[10:5]:{6{1'b0}};
// assign vga_b=sig_valid?vga_data[4:0]:{5{1'b0}};


endmodule
