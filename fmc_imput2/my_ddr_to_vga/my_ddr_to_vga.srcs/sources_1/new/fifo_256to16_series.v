`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 14:08:01
// Design Name: 
// Module Name: fifo_256to16_series
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


module fifo_256to16_series(
input rst_n,
input wr_clk,
input rd_clk,
input [255:0] data_in_256bit,
input wr_en,
input rd_en,

output wire fifo_full,
output wire [15:0] data_out_16bit,
output wire fifo_1_almost_empty,
output wire fifo_empty,
output wire fifo_almost_empty
    );
	
//------------------------------The first stage FIFO--------------------------------------------
wire fifo_1_full;
wire fifo_1_empty;
reg fifo_1_rd_en;////////
reg fifo_1_rd_en_r0;
reg fifo_1_rd_en_r;
reg [15:0] fifo_1_out_16;
wire [255:0] fifo_1_out_256;
reg [255:0] fifo_1_out_256_r;


//------------------------------256 bit > 16 bit-------------------------------------------------
reg [5:0] shift_cnt;
reg locked;
localparam IDLE=3'b00;
localparam READ=3'b001;
localparam WAIT0=3'b010;
localparam SHIFT=3'b011;
localparam WAIT1=3'b100;

reg [2:0] curr_state;
reg [2:0] next_state;
//----------------------------  The second stage FIFO--------------------------------------------
wire fifo_2_full;
wire fifo_2_almost_full;
reg fifo_2_wr_en;///////
wire fifo_2_empty;
wire fifo_2_almost_empty;

assign fifo_full=fifo_1_full;
assign fifo_empty=fifo_2_empty;
assign fifo_almost_empty=fifo_2_almost_empty;



always @(*)
	if(~rst_n)
		next_state=IDLE;
	else
		case(curr_state)
			IDLE:		if(~fifo_1_empty || ~fifo_1_full)
								next_state=READ;
						else
								next_state=IDLE;
			READ:		begin
							// if((~fifo_2_almost_full)& (~fifo_1_almost_empty))
							if( (~fifo_1_almost_empty))
								next_state=WAIT0;
							else
								next_state=READ;
						end
			WAIT0:		next_state=WAIT1;
			WAIT1:		next_state=SHIFT;
			SHIFT:		if(shift_cnt==6'd16)
							next_state=READ;
						else
							next_state=SHIFT;
							
			default:	next_state=IDLE;
		endcase
		
always @(posedge wr_clk, negedge rst_n)
	if(~rst_n)
		curr_state<=IDLE;
	else
		curr_state<=next_state;
		
always @(posedge wr_clk, negedge rst_n)
	if(~rst_n)
		begin
			fifo_1_rd_en<=0;
			fifo_2_wr_en<=0;
			fifo_1_out_256_r<=256'd0;
			fifo_1_out_16<=16'd0;
			shift_cnt<=6'd0;
		end
	else
	begin
		case(curr_state)
			IDLE:	begin
						fifo_1_rd_en<=0;
						fifo_2_wr_en<=0;
						fifo_1_out_256_r<=256'd0;
						fifo_1_out_16<=16'd0;
						shift_cnt<=6'd0;
					end	
			READ:	begin
						if((~fifo_1_almost_empty))
							fifo_1_rd_en<=1;
						else
							fifo_1_rd_en<=0;
						fifo_2_wr_en<=0;
						fifo_1_out_256_r<=256'd0;
						fifo_1_out_16<=16'd0;
						shift_cnt<=6'd0;
					end	
			WAIT0:	begin
						fifo_1_rd_en<=0;
						fifo_2_wr_en<=0;
						fifo_1_out_256_r<=0;
						fifo_1_out_16<=16'd0;
						shift_cnt<=6'd0;
					end	
			WAIT1:	begin
						fifo_1_rd_en<=0;
						fifo_2_wr_en<=0;
						fifo_1_out_256_r<=fifo_1_out_256;
						fifo_1_out_16<=16'd0;
						shift_cnt<=6'd0;
					end	
			SHIFT:	begin
						fifo_1_rd_en<=0;
						if(~fifo_2_almost_full)
							begin
								if(shift_cnt<=6'd15)
									begin
										fifo_2_wr_en<=1;
									end
								else
									fifo_2_wr_en<=0;
								fifo_1_out_256_r<=fifo_1_out_256_r<<16;
								fifo_1_out_16<=fifo_1_out_256_r[255-:16];
								shift_cnt<=shift_cnt+1;
							end
						else
							begin
							fifo_2_wr_en<=0;
							end
					end	
			default:	begin
						fifo_1_rd_en<=0;
						fifo_2_wr_en<=0;
						fifo_1_out_256_r<=256'd0;
						fifo_1_out_16<=16'd0;
						shift_cnt<=6'd0;
					end	
		endcase
	end

//------------------------------The first stage FIFO--------------------------------------------
fifo_256_ddr read_fifo_1(
//input
.rst(~rst_n),
.wr_clk(wr_clk),
.rd_clk(wr_clk),
.din(data_in_256bit),
.wr_en(wr_en),
.rd_en(fifo_1_rd_en),
//output
.dout(fifo_1_out_256),
.full(fifo_1_full),
.empty(fifo_1_empty),
.almost_empty(fifo_1_almost_empty)
);

//----------------------------  READ FROM FIFO_stage_1 to FIFO_stage_2--------------------------------------------

fifo_16_out read_fifo_2(
//input
.rst(~rst_n),
.wr_clk(wr_clk),
.rd_clk(rd_clk),
.din(fifo_1_out_16),
.wr_en(fifo_2_wr_en),
.rd_en(rd_en),
//output
.dout(data_out_16bit),
.full(fifo_2_full),
.almost_full(fifo_2_almost_full),
.empty(fifo_2_empty),
.almost_empty(fifo_2_almost_empty)
);

endmodule
