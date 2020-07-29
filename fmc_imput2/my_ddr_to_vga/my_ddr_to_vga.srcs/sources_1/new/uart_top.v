`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/18 12:14:16
// Design Name: 
// Module Name: uart_top
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


module uart_top(
input  ddr_fifo_full_empty,
input [255:0] ddr_fifo_full_dout,
input clk_10m,
input rst_n,
output wire o_Tx_Serial,
output wire ddr_fifo_full_rd_en
    );
	

wire ddr_fifo_rd_en;
wire o_Tx_Active;

wire o_Tx_Done;
wire [7:0] uart_data;
wire shift_data_valid;




		


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
endmodule
