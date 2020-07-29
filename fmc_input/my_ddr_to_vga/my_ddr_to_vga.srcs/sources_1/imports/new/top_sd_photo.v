
module top_sd_photo
#(
parameter RESOLUTION=1024
)
(
	input                	 clk_50m   ,  
	input                 	clk_50m_180deg   ,  
	input                 	sys_rst_n   ,  //系统复位，低电平有效
	input 					ddr_init_done,
    // input [1:0]				switch,                  
    //SD卡接口               
	input                 sd_miso     ,  //SD卡SPI串行输入数据信号
	output                sd_clk      ,  //SD卡SPI时钟信号
	output                sd_cs       ,  //SD卡SPI片选信号
	output                sd_mosi     ,  //SD卡SPI串行输出数据信号
	output  [255:0]			sd_dout_256bit,
	output  				sd_dout_valid,
	output sd_init_done,
	input sd_fifo_empty
    );

	wire                  rst_n           ;
	wire                  sys_init_done   ;  //系统初始化完成                 
	wire                  sd_rd_start_en  ;  //开始写SD卡数据信号
	wire          [31:0]  sd_rd_sec_addr  ;  //读数据扇区地址    
	wire                  sd_rd_busy      ;  //读忙信号
(* keep = "TRUE" *) 	wire                  sd_rd_val_en    ;  //数据读取有效使能信号
(* keep = "TRUE" *) 	wire          [15:0]  sd_rd_val_data  ;  //读数据
//wire                  sd_init_done    ;  //SD卡初始化完成信号

//-----------------------------------------tem!!!!!!!!!---------------------------------
// wire ddr_init_done;
wire [1:0] switch;
// assign ddr_init_done=1'b1;
assign switch=2'b00;
//--------------------------------------------------------------------------------------
//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n &sd_init_done & ddr_init_done;;
//assign  sys_init_done = sd_init_done & ddr_init_done; 


//读取SD卡图片
sd_read_photo 
#(
.RESOLUTION(RESOLUTION)
)
u_sd_read_photo
(
    .clk             (clk_50m),
    //系统初始化完成之后,再开始从SD卡中读取图片
    .rst_n           (rst_n), 
	.switch 		(switch),
    .rd_busy         (sd_rd_busy),
    .rd_start_en     (sd_rd_start_en),
    .rd_sec_addr     (sd_rd_sec_addr),
	.sd_fifo_empty(sd_fifo_empty)
    );     

//SD卡顶层控制模块
sd_ctrl_top u_sd_ctrl_top(
    .clk_ref           (clk_50m),
    .clk_ref_180deg    (clk_50m_180deg),
    .rst_n             (sys_rst_n),
    //SD卡接口
    .sd_miso           (sd_miso),
    .sd_clk            (sd_clk),
    .sd_cs             (sd_cs),
    .sd_mosi           (sd_mosi),
    //用户写SD卡接口
    .wr_start_en       (1'b0),               //不需要写入数据,写入接口赋值为0
    .wr_sec_addr       (32'b0),
    .wr_data           (16'b0),
    .wr_busy           (),
    .wr_req            (),
    //用户读SD卡接口
    .rd_start_en       (sd_rd_start_en),
    .rd_sec_addr       (sd_rd_sec_addr),
    .rd_busy           (sd_rd_busy),
    .rd_val_en         (sd_rd_val_en),
    .rd_val_data       (sd_rd_val_data),    
    
    .sd_init_done      (sd_init_done)
    );  
	

//以下完成对16个16bit数据的拼接，拼接成256bit
reg [4:0]count;
// always@(posedge clk_50m)
// begin
	// if(!sys_rst_n)
		// count <= 5'b0;
	// else if (count == 5'b10000)//2^4=16
		// count <= 5'b0;
	// else if(sd_rd_val_en && ~sd_fifo_full)
		// count <= count + 5'b1;
	// else 
		// count <= count;
// end
always@(posedge clk_50m)
begin
	if(!sys_rst_n)
		count <= 5'b0;
	else if (count == 5'b10000)//2^4=16
		count <= 5'b0;
	else if(sd_rd_val_en )//&& ~sd_fifo_full
		count <= count + 5'b1;
	else 
		count <= count;
end
//移位
(* keep = "TRUE" *) reg [255:0] data;
always@(posedge clk_50m)
begin
	if(!sys_rst_n)
		data <= 256'b0;
	else if(sd_rd_val_en )//&& ~sd_fifo_full
		data <= {data[239:0],sd_rd_val_data};
end
//输出
(* keep = "TRUE" *)wire out_valid;
// always@(posedge clk_50m)
// begin
	// if(!sys_rst_n)
			// out_valid <= 0;
	// else if(count == 5'b10000)
			// out_valid <=1;
	// else
			// out_valid <= 0;
// end
assign out_valid=(count == 5'b10000)?1:0;
assign sd_dout_256bit = data;
assign sd_dout_valid = out_valid;

endmodule