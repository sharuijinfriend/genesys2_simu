`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/06 10:40:35
// Design Name: 
// Module Name: data_shift
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


module data_shift(
input clk_vga,
input rst_n,
input [255:0] ddr_fifo_dout,
input valid,
input [6:0] counter,
input [6:0] counter_2,
output reg [255:0] data
    );


always @(posedge clk_vga,negedge rst_n)
begin
	if(~rst_n)
		data<=256'b0;
	else if(counter==7'd1)
		data<=ddr_fifo_dout;
	else if(counter_2==7'd1 && valid)
		data<=data<<16;
end

endmodule
