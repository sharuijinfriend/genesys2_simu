`timescale 1ps/100fs
module ddr3_sig_generator
#(
	parameter MEM_DATA_BITS = 256,
	parameter ADDR_BITS = 29,
	parameter RESOLUTION=1024
)
(
input test_pause,//用于ILA触发查看ddr3写状态
input sd_fifo_empty,
input ddr_fifo_s_empty,
input ddr_fifo_full_s_empty,
input rst_n,//rst_n && ~ui_clk_sync_rst && init_calib_complete
input clk,
input rd_burst_req,//init_calib_complete
input wr_burst_req,//init_calib_complete
output wire rd_burst_data_valid,                  /*读出数据有效*/
output wire rd_burst_data_full_valid,                  /*读出数据有效*/
output wire wr_burst_data_req,                    /*写数据请求信号*/  //送往wr_fifo
output wire [MEM_DATA_BITS - 1:0] rd_burst_data,   /*读出的数据*/
output wire [MEM_DATA_BITS - 1:0] rd_burst_data_full,   /*读出的数据_FULL*/
input[MEM_DATA_BITS - 1:0] wr_burst_data,    /*待写入的数据*/  //来自wr_fifo
output wire rd_burst_finish,                      /*读完成*/
output wire wr_burst_finish,                       /*写完成*/

//ddr3
input app_ref_ack,
output reg app_ref_req,
output reg [ADDR_BITS-1:0]                  app_addr,
output wire [2:0]                            app_cmd,
output reg                                  app_en,
output wire [MEM_DATA_BITS-1:0]              app_wdf_data,
output wire                                 app_wdf_end,
output wire [MEM_DATA_BITS/8-1:0]           app_wdf_mask,//遮蔽一个字节
output wire                                  app_wdf_wren,
input [MEM_DATA_BITS-1:0]                   app_rd_data,
input                                       app_rd_data_end,
input                                       app_rd_data_valid,
input                                       app_rdy,
input                                       app_wdf_rdy,
input                                       ui_clk_sync_rst 
// input                                       init_calib_complete
);
localparam IDEL=4'b0000;
localparam READ=4'b0001;
localparam READ_WAIT=4'b0010;
localparam READ_END=4'b0011;
localparam WRITE=4'b0100;
localparam WRITE_END=4'b0101;
localparam READ_FULL=4'b0110;
localparam READ_FULL_INIT=4'b0111;
localparam READ_FULL_END=4'b1000;
wire [21:0] wr_burst_len;
wire [20:0] rd_burst_len; 
wire [21:0] rd_burst_len_full; 
// assign  rd_burst_len=1024*1024/16;//65536//轮换读出图片
assign  rd_burst_len=RESOLUTION*RESOLUTION/(16*4);//读单张图片,纵向4分之一采样，横向送到data_convert进行四分之一采样,所以横向的数据是完全读出来的，只有纵向的数据忽略了
assign  rd_burst_len_full=RESOLUTION*RESOLUTION*2/16;
assign  wr_burst_len=RESOLUTION*RESOLUTION*2/16;//65536 1<<21
(* mark_debug = "true" *) reg [3:0] current_state;
reg [3:0] next_state;
(* keep = "TRUE" *) reg [21:0] wr_burst_addr_counter;//4096*4096*2/16
(* mark_debug = "true" *) reg [20:0] rd_burst_addr_counter; 
(* mark_debug = "true" *) reg [20:0] rd_burst_data_counter;
(* mark_debug = "true" *) reg [21:0] rd_burst_addr_counter_full; 
(* mark_debug = "true" *) reg [21:0] rd_burst_data_counter_full;
reg app_wdf_wren_r;
reg app_en_r;
reg [ADDR_BITS - 1:0] rd_burst_addr;//从29'b0开始
reg [ADDR_BITS - 1:0] rd_burst_addr_tem;//从29'b0开始
reg [ADDR_BITS - 1:0] rd_burst_addr_full;//从29'b0开始
reg [ADDR_BITS - 1:0] rd_burst_addr_tem_full;//从29'b0开始
wire [ADDR_BITS - 1:0] wr_burst_addr;//
assign wr_burst_addr=29'b0;
reg  burst_addr_counter;
reg [27:0] burst_addr_time_counter;
reg  burst_addr_counter_full;

//***********************************current_state****************************************
always @(posedge clk, negedge rst_n)
	begin
		if(~rst_n)
			current_state<=IDEL;
		else
			current_state<=next_state;
	end
	

//***********************************counter****************************************
//empty->启动计数->记到63停止归零
//     >启动全局计数

(* mark_debug = "true" *)  reg [6:0] ddr3_rd_en_counter;
always @(posedge clk, negedge rst_n)
	if(~rst_n)	
		ddr3_rd_en_counter<=7'd0;
	else if(ddr3_rd_en_counter==7'd63)
		ddr3_rd_en_counter<=7'd0;
	else if(app_en && app_rdy && (current_state==READ))
		ddr3_rd_en_counter<=ddr3_rd_en_counter+7'd1;
	
(* mark_debug = "true" *) reg [6:0] ddr3_rd_en_counter_full;
always @(posedge clk, negedge rst_n)
	if(~rst_n)	
		ddr3_rd_en_counter_full<=7'd0;
	else if(current_state==READ_FULL_INIT)
		ddr3_rd_en_counter_full<=7'd0;
	else if(app_en && app_rdy && (current_state==READ_FULL) && ddr3_rd_en_counter_full<7'd63)
		ddr3_rd_en_counter_full<=ddr3_rd_en_counter_full+7'd1;
		
//time counter, read address change
always @(posedge clk, negedge rst_n)
	if(~rst_n)	
		burst_addr_counter<=1'b0;
	else if(current_state==READ_END && burst_addr_time_counter==28'd60)
		burst_addr_counter<=~burst_addr_counter;
		
always @(posedge clk, negedge rst_n)
	if(~rst_n)	
		burst_addr_time_counter<=28'd0;
	else if(current_state==READ_END && burst_addr_time_counter==28'd60)
		burst_addr_time_counter<=28'd0;
	else if(current_state==READ_END)
		burst_addr_time_counter<=burst_addr_time_counter+28'd1;
		
// always @(posedge clk, negedge rst_n)
	// if(~rst_n)	
		// burst_addr_counter_full<=1'b0;
	// else if(rd_burst_data_counter_full== rd_burst_len_full-1)
		// burst_addr_counter_full<=~burst_addr_counter_full;//改full读出的起始地址

always @(posedge clk,negedge rst_n)
	begin
		if(~rst_n)
			rd_burst_addr_counter<=21'd0;
		else if(app_en  && current_state==READ )
			begin
				if(rd_burst_addr_counter==rd_burst_len-1 )
					rd_burst_addr_counter<=21'd0;
				else
					rd_burst_addr_counter<=rd_burst_addr_counter+1;
			end		
	end
always @(posedge clk,negedge rst_n)
	begin
		if(~rst_n)
			rd_burst_data_counter<=21'd0;
		else if(app_rd_data_valid&& (current_state==READ_WAIT || current_state==READ))
		// else if(~ddr_fifo_full && app_rd_data_valid&& (current_state==READ_WAIT))
			begin
				if(rd_burst_data_counter==rd_burst_len-1)
					rd_burst_data_counter<=21'd0;
				else
					rd_burst_data_counter<=rd_burst_data_counter+1;
			end	
	end

always @(posedge clk,negedge rst_n)
	begin
		if(~rst_n)
			rd_burst_addr_counter_full<=22'd0;
		else if(app_en  && current_state==READ_FULL )
			begin
				if(rd_burst_addr_counter_full==rd_burst_len_full-1 )
					rd_burst_addr_counter_full<=22'd0;
				else
					rd_burst_addr_counter_full<=rd_burst_addr_counter_full+1;//full读出的读地址计数器
			end		
	end
	
	

always @(posedge clk,negedge rst_n)
	begin
		if(~rst_n)
			rd_burst_data_counter_full<=22'd0;
		else if(app_rd_data_valid&& (current_state==READ_FULL))
		// else if(~ddr_fifo_full && app_rd_data_valid&& (current_state==READ_WAIT))
			begin
				if(rd_burst_data_counter_full==rd_burst_len_full-1)
					rd_burst_data_counter_full<=22'd0;
				else
					rd_burst_data_counter_full<=rd_burst_data_counter_full+1;//full读出的读数据计数器
			end	
	end
	
	
always @(posedge clk,negedge rst_n)
	begin
		if(~rst_n)
			wr_burst_addr_counter<=22'd0;
		else if(app_wdf_wren)
			begin
				if(wr_burst_addr_counter==wr_burst_len-1)
					wr_burst_addr_counter<=22'd0;
				else
					wr_burst_addr_counter<=wr_burst_addr_counter+1;
			end	
	end
	
always@(posedge clk, negedge rst_n)
begin
	if(~rst_n)
		app_wdf_wren_r <= 1'b0;
	else if(app_wdf_rdy & app_rdy)
		app_wdf_wren_r <= wr_burst_data_req;
end	
//***********************************output****************************************
assign app_wdf_end=app_wdf_wren;
// assign app_en=(current_state==READ)?(app_en_r & app_rdy):app_en_r;
always@(*)
	begin
	case(current_state)
	READ:app_en=app_en_r & app_rdy;
	READ_FULL:app_en=app_en_r & app_rdy;
	WRITE:app_en=app_wdf_wren;//之前一直为1导致就写入读出错误，很奇怪
	default:app_en=1'b0;
	endcase
	end
assign app_cmd=(current_state==WRITE)?3'b000:3'b001;
// assign app_wdf_wren = app_en & app_wdf_rdy & app_rdy & (current_state==WRITE) &init_calib_complete & ~sd_fifo_empty;
assign wr_burst_data_req = (current_state == WRITE) & app_wdf_rdy & app_rdy & !sd_fifo_empty;
assign rd_burst_data_valid = (current_state==READ || current_state== READ_WAIT)?app_rd_data_valid:1'b0;
assign rd_burst_data_full_valid = (current_state==READ_FULL)?app_rd_data_valid:1'b0;
assign app_wdf_mask=0;
assign app_wdf_data=wr_burst_data;
//如果data_valid都对上的话，下面两个可以合并
assign rd_burst_data=(current_state==READ || current_state== READ_WAIT)?app_rd_data:0;
assign rd_burst_data_full=(current_state==READ_FULL)?app_rd_data:0;
//
assign rd_burst_finish = (current_state == READ_END);
assign wr_burst_finish = (current_state == WRITE_END);
assign app_wdf_wren = (current_state == WRITE_END)?0:(app_wdf_wren_r & app_wdf_rdy & app_rdy);//这句可能可以改动，进行优化



//***********************************next_state****************************************
always @(*)
	if(~rst_n)
		next_state=IDEL;
	else 
		case(current_state)
		
		IDEL:			begin

							if(rd_burst_req && app_ref_ack)
								next_state=READ;
							else if(wr_burst_req & test_pause)
								next_state=WRITE;
							else
								next_state=IDEL;
						end
		

		READ:			begin
							if( app_en && app_rdy && rd_burst_addr_counter==(rd_burst_len - 1) )
								next_state=READ_WAIT;
							else if(app_rd_data_valid && rd_burst_data_counter==rd_burst_len - 1)
								next_state=READ_END;
							else if(rd_burst_addr_counter==rd_burst_data_counter && (~ddr_fifo_s_empty) && ddr_fifo_full_s_empty)
							begin
								next_state=READ_FULL_INIT;
							end
								
							else
								next_state=READ;
						end
		READ_WAIT:		begin
							if(app_rd_data_valid && rd_burst_data_counter==rd_burst_len - 1)
								next_state=READ_END;
							else
								next_state=READ_WAIT;
						end
		READ_END:		begin
							next_state=IDEL;
						end
		READ_FULL_INIT:		begin
								if(ddr_fifo_full_s_empty)
									next_state=READ_FULL;
								else
									next_state=READ_FULL_END;
						end
		READ_FULL:		begin
							// if(app_rd_data_valid && rd_burst_data_counter_full==(rd_burst_len_full - 1))
								// next_state=READ_FULL_END;
								
								
							// // if((rd_burst_addr_counter_full==rd_burst_data_counter_full) && (ddr_fifo_s_empty))//如果图像显示满足的话，这句话就不必加了
								// // next_state=READ_FULL_END;
							if((rd_burst_addr_counter_full==rd_burst_data_counter_full) && (ddr3_rd_en_counter_full==7'd63))
								next_state=READ_FULL_END;
							else
								next_state=READ_FULL;
						end
		
		READ_FULL_END:		begin
							next_state=READ;
						end
		WRITE:			begin
							if(app_wdf_wren && wr_burst_addr_counter==wr_burst_len-1) 
								next_state=WRITE_END;
							else
								next_state=WRITE;
						end
		WRITE_END:		begin
							next_state=IDEL;
						end
		default:		begin
							next_state=IDEL;
						end
		endcase
		
		
always @(posedge clk, negedge rst_n)
	if(~rst_n)
		begin
			   
			app_addr       <=29'd0;      
			app_en_r         <=1'd0;  
			rd_burst_addr<=29'd0;
			rd_burst_addr_full<=29'b0;
			rd_burst_addr_tem<=29'b0;
			rd_burst_addr_tem_full<=29'b0;
			app_ref_req<=1'b0;
		end
	else
		case(current_state)
		
		IDEL:			begin
							app_ref_req<=1'b0;
							app_addr       <=29'd0;      
							app_en_r         <=1'd0;
							case(burst_addr_counter)
							1'd0  :rd_burst_addr<=0;
							1'd1  :rd_burst_addr<=RESOLUTION*RESOLUTION/2;
							endcase
				
							
							if(rd_burst_req)
								begin
									app_addr<=rd_burst_addr;
									app_en_r<=1'b0;
								end
							else if(wr_burst_req)
								begin
									app_addr<=wr_burst_addr;
									app_en_r<=1'b1;
								end
							
						end
		
		READ:			begin
							 
							if(ddr3_rd_en_counter==7'd63)
								app_en_r<=1'b0;
							else if(ddr_fifo_s_empty)
								app_en_r<=1'b1;
							
							if(app_en)
								begin
								if((rd_burst_addr_counter+1)%256==0)
									app_addr<=app_addr+29'd6152;
								else
								app_addr<=app_addr+29'd8;
								end

						end
		READ_WAIT:		begin
							 
							app_addr       <=29'd0; 
							app_en_r         <=1'd0;  


						end
		READ_END:		begin
							app_ref_req<=1'b1;
							app_addr       <=29'd0; 
							app_en_r         <=1'd0;  
	

						end
		READ_FULL_INIT:		begin
							rd_burst_addr_tem <=app_addr;
							app_addr          <=rd_burst_addr_tem_full; 
							app_en_r          <=1'd0;  


						end
		READ_FULL:			begin
							
							if(ddr3_rd_en_counter_full==7'd63)
								app_en_r<=1'b0;
							// else if(app_en && app_rdy && rd_burst_addr_counter_full==rd_burst_len_full - 1)
								// app_en_r<=1'b0;
							else if(ddr3_rd_en_counter_full==7'd0)
								app_en_r<=1'b1;
							
							// case(burst_addr_counter_full)
							// 1'd0  :rd_burst_addr_full<=0;
							// 1'd1  :rd_burst_addr_full<=RESOLUTION*RESOLUTION/2;
							// endcase
							if((rd_burst_addr_counter_full== rd_burst_len_full-1 )&& app_en)
								app_addr<=0;
							else if(app_en)
								app_addr<=app_addr+29'd8;
							
						end

		READ_FULL_END:		begin
							rd_burst_addr_tem_full<=app_addr;
							app_addr          <=rd_burst_addr_tem; 
							app_en_r         <=1'd0;  
	

						end
		WRITE:			begin
							 
							app_en_r         <=1'b1; //应该无所谓，因为app_wdf_wren做了约束
							// if(~sd_fifo_empty && app_rdy  && app_wdf_rdy)
							if(app_wdf_wren)
								begin
								app_addr       <=app_addr+29'd8;
								 
								end
							else
								begin
								app_addr       <=app_addr;
								
								end
						end
		WRITE_END:		begin
							app_ref_req<=1'b1;
							app_addr       <=29'd0; 
							app_en_r         <=1'd0;  


						end
		default:		begin
							 
							app_addr       <=29'd0; 
							app_en_r         <=1'd0;  


						end
		endcase
			
endmodule