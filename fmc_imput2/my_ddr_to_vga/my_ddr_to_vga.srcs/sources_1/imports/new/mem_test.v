module mem_test
#(
	parameter MEM_DATA_BITS = 256, //8ͻ����8*32=256
	parameter ADDR_BITS = 29,
	parameter burst_len=21'd65535
)
(
    input rd_fifo_notfull,
	input rst,                                        //��λ active high ui_clk_sync_rst 
	input mem_clk,                                    //�ӿ�ʱ��
	output reg rd_burst_req,                          //������
	output reg wr_burst_req,                          //д����
	output reg[20:0] rd_burst_len,                     //�����ݳ���
	output reg[20:0] wr_burst_len,                     //���ݳ���
	output reg[ADDR_BITS - 1:0] rd_burst_addr,        //���׵�ַ
	output reg[ADDR_BITS - 1:0] wr_burst_addr,        //д�׵�ַ
	input rd_burst_data_valid,                        //����������Ч
	input wr_burst_data_req,                          //д�����ź�
	//input[MEM_DATA_BITS - 1:0] rd_burst_data,         //��������
	output[MEM_DATA_BITS - 1:0] wr_burst_data,        //д�������
	input rd_burst_finish,                            //�����
	input wr_burst_finish ,                            //д���    
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
			//�˲���Ϊ����DDR���õ����ݣ����ղ�ûʹ��
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
		// rd_burst_len <= 16'd256;           //256,һ�ζ�ȡ2�е�����,FIFO���Ϊ512
		rd_burst_len <= 21'd64; 				//һ�ζ�һ�У�1024*16/(8*32)=64
		//wr_burst_len <= 16'd512;			//TEST
		wr_burst_len <= 21'd65535;			//512*512����һ��д��
		//ԭ������16bit0+16bit��Ч���ݣ����512*512*(16+16)/(8*32)=32768
		//������û�в��㣬���512*512*16/(8*32)=16384
		//1024*1024*16/��8*32��=65536
		//4096*4096*16/��8*32��=1048576
		//8*32,��ͻ��ģʽ��������ȡ8����ַ��һ����ַ����������λ��Ϊ32λ��
		rd_burst_addr <= 0;                //����ʼ��ַ��Ϊ0
		wr_burst_addr <= 29'h1fff_fff8; //д��ַ��8=0
		read_ddr <= 0;
	end
	else
	begin
		case(state)
			IDLE:
			begin
				state <= MEM_WRITE;         //��λ�����д��������д�������ߣ����͵�mem_burstģ��
				wr_burst_req <= 1'b1;
				wr_burst_len <= 21'd65535;    // д���ݵĸ������͵�mem_burstģ��
			end
			MEM_WRITE:
			begin
				if(wr_burst_finish)
				begin
					state <= MEM_READ;     //��⵽wr_burst_finish�󣬽�״̬�л���read״̬
					wr_burst_req <= 1'b0;  //д�������ͣ����������ߣ����������ݸ�����������������ʼ��ַ�����͵�mem_burstģ��
					rd_burst_len <= 21'd64;
					rd_burst_addr <= 29'h0;
				end
			end
			MEM_READ://һֱ����mem_read��״̬
			begin
				if(rd_burst_finish)
				begin
					read_ddr <= 1;
					rd_burst_req <= 1'b0;				
				end
				else if(rd_fifo_notfull)
					rd_burst_req <= 1'b1;    
				else 
					rd_burst_req <= rd_burst_req;	//������Ҫ�޸ģ�rd_burst_finish����һ������			
				//if (rd_frame_finish)
			end
			default:
				state <= IDLE;
		endcase
	end
end

endmodule