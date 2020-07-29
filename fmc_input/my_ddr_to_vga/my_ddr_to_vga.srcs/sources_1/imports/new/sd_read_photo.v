
module sd_read_photo
#(
parameter RESOLUTION=1024
)
(
    input                clk           ,  //时钟信号
    input                rst_n         ,  //复位信号,低电平有效
	input 		[1:0]    switch        ,  //图片选择信号
    input                rd_busy       ,  //SD卡读忙信号
	output  reg          rd_start_en   ,  //开始写SD卡数据信号
    output  reg  [31:0]  rd_sec_addr,      //读数据扇区地址
	input sd_fifo_empty
    );

//parameter define
parameter PHOTO_BASE_ADDR      = 32'd8192;                          
// parameter PHOTO_SECCTION_ADDR0 = 32'd8448;  //图片1扇区起始地址
parameter PHOTO_SECCTION_ADDR0 = 32'd24832;  //图片1扇区起始地址
parameter PHOTO_SECCTION_ADDR1 = 32'd9472;  //图片2扇区起始地址
parameter PHOTO_SECCTION_ADDR2 = 32'd10496;  //图片3扇区起始地址
parameter PHOTO_SECCTION_ADDR3 = 32'd11520;  //图片4扇区起始地址

//4k*4k/256 = 65536 一次读256个16bit
//parameter  RD_SECTION_NUM  = 17'd65536    ;  //图片总共读出的次数  

//512*512/256 = 1024 一次读256个16bit
//1024*1024/256=4096
//4096*4096/256=65536=1<<16
parameter  RD_SECTION_NUM  = RESOLUTION*RESOLUTION*2/256    ;  //图片总共读出的次数  

//reg define
(* keep = "TRUE" *) reg    [1:0]          rd_flow_cnt      ;    //读数据流程控制计数器
(* keep = "TRUE" *) reg    [16:0]         rd_sec_cnt       ;    //读扇区次数计数器
reg                   rd_addr_sw       ;    //读两张图片切换
reg    [25:0]         delay_cnt        ;    //延时切换图片计数器

reg                   rd_busy_d0       ;    //读忙信号打拍，用来采下降沿
reg                   rd_busy_d1       ;  

//wire define
wire                  neg_rd_busy      ;    //SD卡读忙信号下降沿

reg enable;//只读一次
always @(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
			enable<=1'b1;
		else if(rd_sec_cnt == RD_SECTION_NUM - 17'b1)
			enable<=1'b0;
	end


//*****************************************************
//**                    main code
//*****************************************************

assign  neg_rd_busy = rd_busy_d1 & (~rd_busy_d0);

//图片选择，switch为选择信号，对应4幅图片
reg [31:0] PHOTO_SECCTION_ADDR;
always @(*)
begin 
	if (switch == 2'b00)
		PHOTO_SECCTION_ADDR <= PHOTO_BASE_ADDR + PHOTO_SECCTION_ADDR0;
	else if (switch == 2'b01)
		PHOTO_SECCTION_ADDR <= PHOTO_BASE_ADDR + PHOTO_SECCTION_ADDR1;		
	else if (switch == 2'b10)
		PHOTO_SECCTION_ADDR <= PHOTO_BASE_ADDR + PHOTO_SECCTION_ADDR2;
	else if (switch == 2'b11)
		PHOTO_SECCTION_ADDR <= PHOTO_BASE_ADDR + PHOTO_SECCTION_ADDR3;
	else 
		PHOTO_SECCTION_ADDR <= PHOTO_BASE_ADDR + PHOTO_SECCTION_ADDR0;	
end


//对rd_busy信号进行延时打拍,用于采rd_busy信号的下降沿
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        rd_busy_d0 <= 1'b0;
        rd_busy_d1 <= 1'b0;
    end
    else begin
        rd_busy_d0 <= rd_busy;
        rd_busy_d1 <= rd_busy_d0;
    end
end

//读取SD卡中的图片,只读一张
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rd_flow_cnt <= 2'd0;
        //rd_addr_sw <= 1'b0;
        rd_sec_cnt <= 17'd0;
        rd_start_en <= 1'b0;
        // rd_sec_addr <= 32'd0;
		delay_cnt <= 26'b0;
		rd_sec_addr <= PHOTO_SECCTION_ADDR;
    end
    else begin
	    rd_start_en <= 1'b0;
        case(rd_flow_cnt)
            2'd0 : begin
                //开始读取SD卡数据
					
						
						rd_flow_cnt <= rd_flow_cnt + 2'd1;
						rd_start_en <= 1'b1;
						//rd_addr_sw <= ~rd_addr_sw;                     //读数据地址切换
						//if(rd_addr_sw == 1'b0)
						rd_sec_addr <= PHOTO_SECCTION_ADDR;
						

                //else
                //    rd_sec_addr <= PHOTO_SECTION_ADDR1;    
            end
            // 2'd1 : begin
                // //读忙信号的下降沿代表读完一个扇区,开始读取下一扇区地址数据
				
					// if(neg_rd_busy) begin          // && enable                
                    // rd_sec_cnt <= rd_sec_cnt + 17'd1;
                    // rd_sec_addr <= rd_sec_addr + 32'd1;
                    // //单张图片读完
                    // if(rd_sec_cnt == RD_SECTION_NUM - 17'b1) begin 
                        // rd_sec_cnt <= 17'd0;
                        // rd_flow_cnt <= rd_flow_cnt + 2'd1;
                    // end    
                    // else
                        // rd_start_en <= 1'b1;                   
                // end                    
            // end
            2'd1 : begin
                //读忙信号的下降沿代表读完一个扇区,开始读取下一扇区地址数据
				
					if(neg_rd_busy) 
						begin          // && enable                
							if(rd_sec_cnt == RD_SECTION_NUM - 17'b1) begin 
								rd_sec_cnt <= 17'd0;
								rd_flow_cnt <= rd_flow_cnt + 2'd1;
							end    
							else if(rd_sec_cnt%7==6)//512 byte,512*8/(256)*7=112正好小于设的fifo深度
								begin
									rd_flow_cnt <=2'b11;
								end
							else
								begin
								rd_start_en <= 1'b1;  
								rd_sec_cnt <= rd_sec_cnt + 17'd1;
								rd_sec_addr <= rd_sec_addr + 32'd1;
							//单张图片读完
								end
						end                    
				end
            2'd2 : begin
                delay_cnt <= delay_cnt + 26'd1;                //读取完成后延时1秒
                if(delay_cnt == 26'd50_000_000 - 26'd1) begin  //50_000_000*20ns = 1s
                    delay_cnt <= 26'd0;
                    rd_flow_cnt <= 2'd0;
                end 
				end
				
			2'b11 : begin
							if(sd_fifo_empty)
								begin
									rd_start_en <= 1'b1;  
									rd_sec_cnt <= rd_sec_cnt + 17'd1;
									rd_sec_addr <= rd_sec_addr + 32'd1;
									rd_flow_cnt <=2'b01;
								end
					end    
        endcase    
    end
end

endmodule