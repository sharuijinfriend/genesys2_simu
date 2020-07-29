module mem_burst
#(
	parameter MEM_DATA_BITS = 256,
	parameter ADDR_BITS = 29
)
(

	input wr_fifo_empty, //wr_fifo读空信号 来自wr_fifo
	input rd_fifo_notfull,

	input rst,                                   /*复位*/
	input mem_clk,                               /*接口时钟*/
	input rd_burst_req,                          /*读请求*/
	input wr_burst_req,                          /*写请求*/       //来自mem_test模块
	input[20:0] rd_burst_len,                     /*读数据长度*/
	input[20:0] wr_burst_len,                     /*写数据长度*/   //来自mem_test模块
	input[ADDR_BITS - 1:0] rd_burst_addr,        /*读首地址*/
	input[ADDR_BITS - 1:0] wr_burst_addr,        /*写首地址*/
	output rd_burst_data_valid,                  /*读出数据有效*/
	output wr_burst_data_req,                    /*写数据请求信号*/  //送往wr_fifo
	output[MEM_DATA_BITS - 1:0] rd_burst_data,   /*读出的数据*/
	input[MEM_DATA_BITS - 1:0] wr_burst_data,    /*待写入的数据*/  //来自wr_fifo
	output rd_burst_finish,                      /*读完成*/
	output wr_burst_finish,                      /*写完成*/
	output burst_finish,                         /*读或写完成*///burst_finish = rd_burst_finish | wr_burst_finish;
	
	///////////////////
   output[ADDR_BITS-1:0]                       app_addr,
   output[2:0]                                 app_cmd,
   output                                      app_en,
   output [MEM_DATA_BITS-1:0]                  app_wdf_data,
   output                                      app_wdf_end,
   output [MEM_DATA_BITS/8-1:0]                app_wdf_mask,//遮蔽一个字节
   output                                      app_wdf_wren,
   input [MEM_DATA_BITS-1:0]                   app_rd_data,
   input                                       app_rd_data_end,
   input                                       app_rd_data_valid,
   input                                       app_rdy,
   input                                       app_wdf_rdy,
   input                                       ui_clk_sync_rst,  
   input                                       init_calib_complete,
   
   output reg write_done
);

assign app_wdf_mask = {MEM_DATA_BITS/8{1'b0}};

// localparam ADDR_MAX = 262136; //512*512-8=262144-8
//localparam ADDR_MAX = 16777208;//ACTUAL,4096*4096-8;
//因为源程序一个像素点位数为32bit，有16bit0，所以是512*512*32/32-8=262136
//我没有补零的操作，因此是512*512*16/32-8=131064
//1024*1024/2-8=524280 4096*4096/2-8=8388600
localparam ADDR_MAX =524280;
localparam IDLE = 3'd0;
localparam MEM_READ = 3'd1;
localparam MEM_READ_WAIT = 3'd2;
localparam MEM_WRITE  = 3'd3;
localparam MEM_WRITE_WAIT = 3'd4;
localparam READ_END = 3'd5;
localparam WRITE_END = 3'd6;
localparam MEM_WRITE_FIRST_READ = 3'd7;

/*parameter IDLE = 3'd0;
parameter MEM_READ = 3'd1;
parameter MEM_READ_WAIT = 3'd2;
parameter MEM_WRITE  = 3'd3;
parameter MEM_WRITE_WAIT = 3'd4;
parameter READ_END = 3'd5;
parameter WRITE_END = 3'd6;
parameter MEM_WRITE_FIRST_READ = 3'd7;*/
reg[2:0] state;	
reg[15:0] rd_addr_cnt;
reg[15:0] rd_data_cnt;
reg[15:0] wr_addr_cnt;
reg[15:0] wr_data_cnt;

reg[2:0] app_cmd_r;
reg[ADDR_BITS-1:0] app_addr_r;
reg app_en_r;
reg app_wdf_end_r;
reg app_wdf_wren_r;
assign app_cmd = app_cmd_r;
assign app_addr = app_addr_r;
assign app_en = app_en_r;
assign app_wdf_end = app_wdf_wren;
assign app_wdf_data = wr_burst_data;
assign app_wdf_wren = wr_burst_finish?0:(app_wdf_wren_r & app_wdf_rdy);
assign rd_burst_finish = (state == READ_END);
assign wr_burst_finish = (state == WRITE_END);
assign burst_finish = rd_burst_finish | wr_burst_finish;

assign rd_burst_data = app_rd_data;
assign rd_burst_data_valid = app_rd_data_valid;
assign wr_burst_data_req = (state == MEM_WRITE) & app_wdf_rdy & !wr_fifo_empty; //读状态 、从机ready、fifo中有数据，开始请求读取fifo中的数据

always @(posedge mem_clk or posedge rst)
begin
	if (rst)
		write_done <= 0;
	else if(wr_burst_finish)
		write_done <=1;
	else 
		write_done <= write_done;
end

always@(posedge mem_clk or posedge rst)
begin
	if(rst)
	begin
		app_wdf_wren_r <= 1'b0;
	end
	else if(app_wdf_rdy)
		app_wdf_wren_r <= wr_burst_data_req;
end

always@(posedge mem_clk or posedge rst)
begin
	if(rst)
	begin
		state <= IDLE;
		app_cmd_r <= 3'b000;
		app_addr_r <= 0;
		app_en_r <= 1'b0;
		rd_addr_cnt <= 0;
		rd_data_cnt <= 0;
		wr_addr_cnt <= 0;
		wr_data_cnt <= 0;
		app_wdf_end_r <= 1'b0; //该信号无用
	end
	else if(init_calib_complete ==  1'b1)
	begin
		case(state)
			IDLE:  //复位状态、一次写完成、一次读完成均会回到IDLE状态
			begin
				if(rd_burst_req)         //检测到rd_burst_req 信号后，进入读状态，发送 读命令、读起始地址、 使能信号app_en 到DDR_CONTROL
				begin
					state <= MEM_READ;   //进入读状态
					app_cmd_r <= 3'b001;
					app_en_r <= 1'b1;
					app_addr_r <= app_addr_r;
				end	
				else if(wr_burst_req)    //检测到wr_burst_req 信号后，进入写状态，发送 写命令、写起始地址、 使能信号app_en 到DDR_CONTROL
				begin
					state <= MEM_WRITE;  //进入写状态
					app_cmd_r <= 3'b000;
					app_addr_r <= wr_burst_addr;
					//app_en_r <= 1'b1;
					wr_addr_cnt <= 0;
					app_wdf_end_r <= 1'b1;
					wr_data_cnt <= 0;
				end
			end
			MEM_READ:
			begin
				if(app_rdy)			//等待DDR_CONTROL的app_ready 信号拉高
				begin
					if (app_addr_r == ADDR_MAX)
						app_addr_r <= 0;
					else if(rd_fifo_notfull)// 加上fifo_full signal
						app_addr_r <= app_addr_r + 8;    //地址每次加8
						//加上app_en_r <= 1'b0;
					
					if(rd_addr_cnt == rd_burst_len - 1)
						app_en_r <= 1'b0;
					else if(~rd_fifo_notfull)//bug
						app_en_r<=1'b0;
					else	
						app_en_r<=1'b1;
					
					
					
					if(rd_addr_cnt == rd_burst_len - 1)  //检测读地址是否将要写完成
					begin
						state <= MEM_READ_WAIT;
						rd_addr_cnt <= 0;	          //地址写完成后拉低使能信号app_en
						
					end
					else
						rd_addr_cnt <= rd_addr_cnt + 1; //每写一次地址，加1，用于检测写入的读地址的个数
				end
				
				if(app_rd_data_valid)          //读出数据有效信号
				begin
					if(rd_data_cnt == rd_burst_len - 1)   //检测读出的数据的个数
					begin
						rd_data_cnt <= 0;
						state <= READ_END;              //读完成后跳转至READ_END状态
					end
					else
					begin
						rd_data_cnt <= rd_data_cnt + 1;
					end
				end
			end
			MEM_READ_WAIT:
			begin
				if(app_rd_data_valid)
				begin
					if(rd_data_cnt == rd_burst_len - 1)
					begin
						rd_data_cnt <= 0;
						state <= READ_END;
					end
					else
					begin
						rd_data_cnt <= rd_data_cnt + 1;
					end
				end
			end
			// MEM_WRITE_FIRST_READ:  //此状态未使用，删除
			// begin
				// app_en_r <= 1'b1;
				// state <= MEM_WRITE;
				// wr_addr_cnt <= 0;
			// end
			MEM_WRITE:
			begin
				if(app_rdy && wr_burst_data_req)    //等待DDR_CONTROL的app_ready 信号拉高
				begin
					app_en_r <= 1'b1;
					app_addr_r <= app_addr_r + 8;   //地址每次加8
					if(wr_addr_cnt == wr_burst_len)  //检测写地址是否将要写完成
					begin
						app_wdf_end_r <= 1'b0;           //地址写完成后拉低使能信号app_en
						app_en_r <= 1'b0;
					end
					else
					begin
						wr_addr_cnt <= wr_addr_cnt + 1;  //每写一次地址，加1，用于检测写入的写地址的个数
					end
				end
				else
					
						app_en_r <= 1'b0;
						
				if(wr_burst_data_req) //wr_burst_data_req = (state == MEM_WRITE) & app_wdf_rdy ; app_wdf_rdy有效时，向mem_test请求数据
				begin
					
					if(wr_data_cnt == wr_burst_len) //检测写数据是否将要完成
					begin	
						state <= WRITE_END;   //数据写完成后，跳转至MEM_WRITE_WAIT状态，等待所有地址发送完毕
					end
					else
					begin
						wr_data_cnt <= wr_data_cnt + 1; //每写一次数据，加1，用于检测写数据的个数
					end
				end
				
			end
			READ_END:
				state <= IDLE;
			MEM_WRITE_WAIT:
			begin
				if(app_rdy && wr_burst_data_req)
				begin
					app_en_r <=1;
					app_addr_r <= app_addr_r + 'b1000; //等待所有地址发送完毕
					if(wr_addr_cnt == wr_burst_len)
					begin
						app_wdf_end_r <= 1'b0;
						app_en_r <= 1'b0;
						if(app_wdf_rdy) 
							state <= WRITE_END;    //写数据结束，拉高wr_burst_finish，代表本次突发写数据结束，将wr_burst_finish发送到mem_test模块
					end								//在mem_test模块中，检测到wr_burst_finish后，将状态切换至read状态
					else
					begin
						wr_addr_cnt <= wr_addr_cnt + 1;
					end
				end
				else 
					app_en_r <=0;
				//else if(~app_en_r & app_wdf_rdy)
				//	state <= WRITE_END;
				
			end
			WRITE_END:
				begin
					state <= IDLE; //返回初始状态
					app_addr_r <=0;
				end
			default:
				state <= IDLE;
		endcase
	end
end
endmodule 