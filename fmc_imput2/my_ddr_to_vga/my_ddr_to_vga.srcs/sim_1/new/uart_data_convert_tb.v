`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 20:27:29
// Design Name: 
// Module Name: uart_data_convert_tb
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


module uart_data_convert_tb(

    );
	
reg rst_n;
reg clk_10m;
initial
	begin
		rst_n<=0;
		#1 rst_n<=0;
		#10 rst_n<=1;
	end

initial
clk_10m<=0;
always
#50 clk_10m<=~clk_10m;


reg [255:0] ddr_fifo_full_dout;
wire ddr_fifo_rd_en;
wire o_Tx_Active;
wire o_Tx_Serial;
wire o_Tx_Done;
wire [7:0] uart_data;
wire shift_data_valid;
wire ddr_fifo_full_rd_en;
reg ddr_fifo_full_empty;
initial 
begin
ddr_fifo_full_empty=1;
#200 ddr_fifo_full_empty=0;
end

always @(posedge clk_10m,negedge rst_n)
	if(~rst_n)
		ddr_fifo_full_dout<=0;
	else if(ddr_fifo_full_rd_en)
	begin
		// ddr_fifo_full_dout=169*((1<<248)+(1<<240));//+{$random}%(1<<254)
			// ddr_fifo_full_dout<=169*((1<<8)+1);//+{$random}%(1<<254)
			// ddr_fifo_full_dout<=256'hacacacacacacacacacacacacacacacacacacacacacacacacacacacacacacacacac+{$random}%(1<<254);
			ddr_fifo_full_dout<=256'h1c2c3c4c5c6c7c8c9c0c1c2c3c4c5c6c7c8c9cacbcccdcecfc0c1c2c3c4c5c6c;
	end
		


uart_data_convert convert
(
.clk_10m(clk_10m),
.rst_n(rst_n),
.ddr_fifo_full_dout(ddr_fifo_full_dout),
.o_Tx_Done(o_Tx_Done),
.ddr_fifo_full_empty(ddr_fifo_full_empty),
.ddr_fifo_full_rd_en(ddr_fifo_full_rd_en),
.uart_data(uart_data),
.shift_data_valid(shift_data_valid)
    );
	
uart_tx uart_test
  (
.clk_10m(clk_10m),//10Mhz
.rst_n(rst_n),
.i_Tx_DV(shift_data_valid),//data valid
.i_Tx_Byte(uart_data), 
.o_Tx_Active(o_Tx_Active),
.o_Tx_Serial(o_Tx_Serial),
.o_Tx_Done(o_Tx_Done)
   );
initial 
#12809000 $stop;
endmodule
