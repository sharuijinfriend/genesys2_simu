module mem_burst
#(
	parameter MEM_DATA_BITS = 256,
	parameter ADDR_BITS = 29
)
(

	input wr_fifo_empty, //wr_fifo�����ź� ����wr_fifo
	input rd_fifo_notfull,

	input rst,                                   /*��λ*/
	input mem_clk,                               /*�ӿ�ʱ��*/
	input rd_burst_req,                          /*������*/
	input wr_burst_req,                          /*д����*/       //����mem_testģ��
	input[20:0] rd_burst_len,                     /*�����ݳ���*/
	input[20:0] wr_burst_len,                     /*д���ݳ���*/   //����mem_testģ��
	input[ADDR_BITS - 1:0] rd_burst_addr,        /*���׵�ַ*/
	input[ADDR_BITS - 1:0] wr_burst_addr,        /*д�׵�ַ*/
	output rd_burst_data_valid,                  /*����������Ч*/
	output wr_burst_data_req,                    /*д���������ź�*/  //����wr_fifo
	output[MEM_DATA_BITS - 1:0] rd_burst_data,   /*����������*/
	input[MEM_DATA_BITS - 1:0] wr_burst_data,    /*��д�������*/  //����wr_fifo
	output rd_burst_finish,                      /*�����*/
	output wr_burst_finish,                      /*д���*/
	output burst_finish,                         /*����д���*///burst_finish = rd_burst_finish | wr_burst_finish;
	
	///////////////////
   output[ADDR_BITS-1:0]                       app_addr,
   output[2:0]                                 app_cmd,
   output                                      app_en,
   output [MEM_DATA_BITS-1:0]                  app_wdf_data,
   output                                      app_wdf_end,
   output [MEM_DATA_BITS/8-1:0]                app_wdf_mask,//�ڱ�һ���ֽ�
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
//��ΪԴ����һ�����ص�λ��Ϊ32bit����16bit0��������512*512*32/32-8=262136
//��û�в���Ĳ����������512*512*16/32-8=131064
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
assign wr_burst_data_req = (state == MEM_WRITE) & app_wdf_rdy & !wr_fifo_empty; //��״̬ ���ӻ�ready��fifo�������ݣ���ʼ�����ȡfifo�е�����

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
		app_wdf_end_r <= 1'b0; //���ź�����
	end
	else if(init_calib_complete ==  1'b1)
	begin
		case(state)
			IDLE:  //��λ״̬��һ��д��ɡ�һ�ζ���ɾ���ص�IDLE״̬
			begin
				if(rd_burst_req)         //��⵽rd_burst_req �źź󣬽����״̬������ ���������ʼ��ַ�� ʹ���ź�app_en ��DDR_CONTROL
				begin
					state <= MEM_READ;   //�����״̬
					app_cmd_r <= 3'b001;
					app_en_r <= 1'b1;
					app_addr_r <= app_addr_r;
				end	
				else if(wr_burst_req)    //��⵽wr_burst_req �źź󣬽���д״̬������ д���д��ʼ��ַ�� ʹ���ź�app_en ��DDR_CONTROL
				begin
					state <= MEM_WRITE;  //����д״̬
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
				if(app_rdy)			//�ȴ�DDR_CONTROL��app_ready �ź�����
				begin
					if (app_addr_r == ADDR_MAX)
						app_addr_r <= 0;
					else if(rd_fifo_notfull)// ����fifo_full signal
						app_addr_r <= app_addr_r + 8;    //��ַÿ�μ�8
						//����app_en_r <= 1'b0;
					
					if(rd_addr_cnt == rd_burst_len - 1)
						app_en_r <= 1'b0;
					else if(~rd_fifo_notfull)//bug
						app_en_r<=1'b0;
					else	
						app_en_r<=1'b1;
					
					
					
					if(rd_addr_cnt == rd_burst_len - 1)  //������ַ�Ƿ�Ҫд���
					begin
						state <= MEM_READ_WAIT;
						rd_addr_cnt <= 0;	          //��ַд��ɺ�����ʹ���ź�app_en
						
					end
					else
						rd_addr_cnt <= rd_addr_cnt + 1; //ÿдһ�ε�ַ����1�����ڼ��д��Ķ���ַ�ĸ���
				end
				
				if(app_rd_data_valid)          //����������Ч�ź�
				begin
					if(rd_data_cnt == rd_burst_len - 1)   //�����������ݵĸ���
					begin
						rd_data_cnt <= 0;
						state <= READ_END;              //����ɺ���ת��READ_END״̬
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
			// MEM_WRITE_FIRST_READ:  //��״̬δʹ�ã�ɾ��
			// begin
				// app_en_r <= 1'b1;
				// state <= MEM_WRITE;
				// wr_addr_cnt <= 0;
			// end
			MEM_WRITE:
			begin
				if(app_rdy && wr_burst_data_req)    //�ȴ�DDR_CONTROL��app_ready �ź�����
				begin
					app_en_r <= 1'b1;
					app_addr_r <= app_addr_r + 8;   //��ַÿ�μ�8
					if(wr_addr_cnt == wr_burst_len)  //���д��ַ�Ƿ�Ҫд���
					begin
						app_wdf_end_r <= 1'b0;           //��ַд��ɺ�����ʹ���ź�app_en
						app_en_r <= 1'b0;
					end
					else
					begin
						wr_addr_cnt <= wr_addr_cnt + 1;  //ÿдһ�ε�ַ����1�����ڼ��д���д��ַ�ĸ���
					end
				end
				else
					
						app_en_r <= 1'b0;
						
				if(wr_burst_data_req) //wr_burst_data_req = (state == MEM_WRITE) & app_wdf_rdy ; app_wdf_rdy��Чʱ����mem_test��������
				begin
					
					if(wr_data_cnt == wr_burst_len) //���д�����Ƿ�Ҫ���
					begin	
						state <= WRITE_END;   //����д��ɺ���ת��MEM_WRITE_WAIT״̬���ȴ����е�ַ�������
					end
					else
					begin
						wr_data_cnt <= wr_data_cnt + 1; //ÿдһ�����ݣ���1�����ڼ��д���ݵĸ���
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
					app_addr_r <= app_addr_r + 'b1000; //�ȴ����е�ַ�������
					if(wr_addr_cnt == wr_burst_len)
					begin
						app_wdf_end_r <= 1'b0;
						app_en_r <= 1'b0;
						if(app_wdf_rdy) 
							state <= WRITE_END;    //д���ݽ���������wr_burst_finish��������ͻ��д���ݽ�������wr_burst_finish���͵�mem_testģ��
					end								//��mem_testģ���У���⵽wr_burst_finish�󣬽�״̬�л���read״̬
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
					state <= IDLE; //���س�ʼ״̬
					app_addr_r <=0;
				end
			default:
				state <= IDLE;
		endcase
	end
end
endmodule 