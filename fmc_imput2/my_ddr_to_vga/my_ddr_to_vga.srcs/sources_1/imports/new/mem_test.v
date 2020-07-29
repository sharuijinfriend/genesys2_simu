module mem_test
#(
	parameter MEM_DATA_BITS = 256, //8突发，8*32=256
	parameter ADDR_BITS = 29,
	parameter burst_len=21'd65535
)
(
    input rd_fifo_notfull,
	input rst,                                        //复位 active high ui_clk_sync_rst 
	input mem_clk,                                    //接口时钟
	output reg rd_burst_req,                          //读请求
	output reg wr_burst_req,                          //写请求
	output reg[20:0] rd_burst_len,                     //读数据长度
	output reg[20:0] wr_burst_len,                     //数据长度
	output reg[ADDR_BITS - 1:0] rd_burst_addr,        //读首地址
	output reg[ADDR_BITS - 1:0] wr_burst_addr,        //写首地址
	input rd_burst_data_valid,                        //读出数据有效
	input wr_burst_data_req,                          //写数据信号
	//input[MEM_DATA_BITS - 1:0] rd_burst_data,         //出的数据
	output[MEM_DATA_BITS - 1:0] wr_burst_data,        //写入的数据
	input rd_burst_finish,                            //读完成
	input wr_burst_finish ,                            //写完成    
    output reg read_ddr	
);
localparam IDLE = 3'd0;
localparam MEM_WRITE  = 3'd1;
localparam MEM_READ = 3'd2;


reg[2:0] state;
reg[9:0] wr_cnt;
reg[MEM_DATA_BITS - 1:0] wr_burst_data_reg;
assign wr_burst_data = wr_burst_data_reg;

always@(posedge mem_clk or posedge rst)
begin
	if(rst)
	begin
		wr_burst_data_reg <= {MEM_DATA_BITS{1'b0}};
		wr_cnt <= 8'd0;
	end
	else if(state == MEM_WRITE)
	begin
		if(wr_burst_data_req)
			begin
			//此部分为测试DDR所用的数据，最终并没使用
				wr_burst_data_reg <= wr_cnt;  
				wr_cnt <= wr_cnt + 8'd1;
			end
		else if(wr_burst_finish)
			wr_cnt <= 8'd0;
	end
end

always@(posedge mem_clk or posedge rst)
begin
	if(rst)
	begin
		state <= IDLE;
		wr_burst_req <= 1'b0;
		rd_burst_req <= 1'b0;
		// rd_burst_len <= 16'd256;           //256,一次读取2行的数据,FIFO深度为512
		rd_burst_len <= 21'd64; 				//一次读一行，1024*16/(8*32)=64
		//wr_burst_len <= 16'd512;			//TEST
		wr_burst_len <= 21'd65535;			//512*512个数一次写入
		//原程序是16bit0+16bit有效数据，因此512*512*(16+16)/(8*32)=32768
		//本程序没有补零，因此512*512*16/(8*32)=16384
		//1024*1024*16/（8*32）=65536
		//4096*4096*16/（8*32）=1048576
		//8*32,是突发模式，连续读取8个地址，一个地址读出的数据位数为32位。
		rd_burst_addr <= 0;                //读起始地址均为0
		wr_burst_addr <= 29'h1fff_fff8; //写地址加8=0
		read_ddr <= 0;
	end
	else
	begin
		case(state)
			IDLE:
			begin
				state <= MEM_WRITE;         //复位后进入写操作，将写请求拉高，发送到mem_burst模块
				wr_burst_req <= 1'b1;
				wr_burst_len <= 21'd65535;    // 写数据的个数发送到mem_burst模块
			end
			MEM_WRITE:
			begin
				if(wr_burst_finish)
				begin
					state <= MEM_READ;     //检测到wr_burst_finish后，将状态切换至read状态
					wr_burst_req <= 1'b0;  //写请求拉低，读请求拉高，给出读数据个数，并给出读的起始地址，发送到mem_burst模块
					rd_burst_len <= 21'd64;
					rd_burst_addr <= 29'h0;
				end
			end
			MEM_READ://一直处于mem_read的状态
			begin
				if(rd_burst_finish)
				begin
					read_ddr <= 1;
					rd_burst_req <= 1'b0;				
				end
				else if(rd_fifo_notfull)
					rd_burst_req <= 1'b1;    
				else 
					rd_burst_req <= rd_burst_req;	//可能需要修改，rd_burst_finish这是一个脉冲			
				//if (rd_frame_finish)
			end
			default:
				state <= IDLE;
		endcase
	end
end

endmodule