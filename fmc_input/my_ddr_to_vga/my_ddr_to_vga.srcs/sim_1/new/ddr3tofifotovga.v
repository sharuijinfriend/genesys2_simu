`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/26 15:41:32
// Design Name: 
// Module Name: ddr3tofifotovga
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


module ddr3tofifotovga
#(
// parameter RESOLUTION=4096
parameter RESOLUTION=1024
)
(
);
	
wire [15:0] vga_data;
// (* keep = "TRUE" *)wire [15:0] vga_data;

//------------------------------VGA Display-------------------------------------
wire [12:0] counter_h;
wire [12:0] counter_v;
wire  [12:0] x_pos;
wire  [12:0] y_pos;
reg vga_enable;
wire vga_hsync;
wire vga_vsync;
wire [4:0] vga_r;
wire [5:0] vga_g;
wire [4:0] vga_b;


//------------------------------DDR3-----------------------------------------------
reg            ui_clk;
wire [255:0] ddr_dout_256bit;
//------------------------------READ FROM DDR3 FIFO_small--------------------------------------------
(* keep = "TRUE" *)wire ddr_fifo_s_full;
(* keep = "TRUE" *)wire ddr_fifo_s_empty;
wire ddr_fifo_s_rd_en;
wire [255:0] ddr_fifo_s_dout;

//----------------------------  READ FROM FIFO_small FIFO_big--------------------------------------------
(* keep = "TRUE" *)wire ddr_fifo_b_full;
(* keep = "TRUE" *)wire ddr_fifo_b_empty;
wire ddr_fifo_b_rd_en;
reg ddr_fifo_b_wr_en_r;
wire ddr_fifo_b_wr_en;
wire [255:0] ddr_fifo_b_dout;
wire ddr_dout_b_valid;

wire data_valid;


reg rst_n;

reg clk_vga;
initial
	begin
		rst_n<=0;
		#1 rst_n<=0;
		#10 rst_n<=1;
	end

initial
ui_clk<=0;
always
#1 ui_clk<=~ui_clk;
// assign ui_clk=clk_vga;


initial
clk_vga<=0;
always
#1.5 clk_vga<=~clk_vga;






wire ddr_dout_valid;
reg [16:0] counter;
always @(posedge ui_clk,negedge rst_n)
	begin
		if(~rst_n)
			counter<=17'b0;
		else if(counter==17'd65536 && ~ddr_fifo_s_full)
			counter<=17'b1;
		else if(~ddr_fifo_s_full)
			counter<=counter+1;
	end
	
// always @(posedge ui_clk,negedge rst_n)
	// begin
		// if(~rst_n)
			// ddr_dout_256bit<=17'b0;
		// else if(~ddr_fifo_s_full)
			// ddr_dout_256bit<=counter;
	// end
	
assign ddr_dout_256bit=counter;
// always
// #5 ddr_dout_256bit={$random}%100000;

// always @(posedge ui_clk, negedge rst_n)
	// if(~rst_n)
		// ddr_dout_valid<=1'b0;
	// else if(~ddr_fifo_s_full && counter>=1)
		// ddr_dout_valid<=1'b1;
	// else
		// ddr_dout_valid<=1'b0;

assign ddr_dout_valid=(~ddr_fifo_s_full && counter>=1)?1:0;
	

//------------------------------READ FROM DDR3 FIFO_small--------------------------------------------


assign ddr_fifo_s_rd_en=(rst_n)?((~ddr_fifo_b_full)& (~ddr_fifo_s_empty)):0;
ddr_fifo_small read_fifo_1(
//input
.rst(~rst_n),
.wr_clk(ui_clk),
.rd_clk(ui_clk),
.din(ddr_dout_256bit),
.wr_en(ddr_dout_valid),
.rd_en(ddr_fifo_s_rd_en),
//output
.dout(ddr_fifo_s_dout),
.full(ddr_fifo_s_full),
.empty(ddr_fifo_s_empty)
);

//----------------------------  READ FROM FIFO_small FIFO_big--------------------------------------------
always @(posedge ui_clk, negedge rst_n)
	begin
		if(~rst_n)
			ddr_fifo_b_wr_en_r<=1'b0;
		else if(~ddr_fifo_b_full)
			ddr_fifo_b_wr_en_r<=ddr_fifo_s_rd_en;
	end
assign ddr_fifo_b_wr_en=(rst_n)?(ddr_fifo_b_wr_en_r && ~ddr_fifo_b_full ):0;
ddr_fifo_big read_fifo_2(
//input
.rst(~rst_n),
.wr_clk(ui_clk),
.rd_clk(clk_vga),
.din(ddr_fifo_s_dout),
.wr_en(ddr_fifo_b_wr_en),
.rd_en(ddr_fifo_b_rd_en),
//output
.dout(ddr_fifo_b_dout),
.full(ddr_fifo_b_full),
.empty(ddr_fifo_b_empty)
);

//--------------------------------------------reg 256 bit>16b bit-------------
data_convert 
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

 //------------------------------VGA Display-------------------------------------
always @(posedge clk_vga,negedge rst_n)
	begin
		if(~rst_n)
			vga_enable<=1'b0;
		else if(ddr_fifo_b_full & ~ddr_fifo_b_empty)//change
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

endmodule
