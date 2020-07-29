// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Sep 26 15:19:31 2019
// Host        : DESKTOP-NM2AVR9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/sd_fifo/sd_fifo_sim_netlist.v
// Design      : sd_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sd_fifo,fifo_generator_v13_2_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module sd_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [255:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [255:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [255:0]din;
  wire [255:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [6:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "7" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "256" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "256" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "125" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "124" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "7" *) 
  (* C_WR_DEPTH = "128" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "7" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  sd_fifo_fifo_generator_v13_2_3 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[6:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[6:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module sd_fifo_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module sd_fifo_xpm_cdc_async_rst__2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module sd_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module sd_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module sd_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module sd_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module sd_fifo_clk_x_pntrs
   (ram_full_fb_i_reg,
    WR_PNTR_RD,
    FULL_FB,
    wr_en,
    out,
    Q,
    ram_full_i_i_2_0,
    wr_clk,
    \src_gray_ff_reg[6] ,
    rd_clk,
    \src_gray_ff_reg[6]_0 );
  output ram_full_fb_i_reg;
  output [6:0]WR_PNTR_RD;
  input FULL_FB;
  input wr_en;
  input out;
  input [6:0]Q;
  input [6:0]ram_full_i_i_2_0;
  input wr_clk;
  input [6:0]\src_gray_ff_reg[6] ;
  input rd_clk;
  input [6:0]\src_gray_ff_reg[6]_0 ;

  wire FULL_FB;
  wire [6:0]Q;
  wire [6:0]WR_PNTR_RD;
  wire \gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ;
  wire \gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp2 ;
  wire out;
  wire [6:0]p_25_out;
  wire ram_full_fb_i_reg;
  wire [6:0]ram_full_i_i_2_0;
  wire ram_full_i_i_4_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_i_6_n_0;
  wire ram_full_i_i_7_n_0;
  wire rd_clk;
  wire [6:0]\src_gray_ff_reg[6] ;
  wire [6:0]\src_gray_ff_reg[6]_0 ;
  wire wr_clk;
  wire wr_en;

  LUT5 #(
    .INIT(32'h0000FF20)) 
    ram_full_i_i_1
       (.I0(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp2 ),
        .I1(FULL_FB),
        .I2(wr_en),
        .I3(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ),
        .I4(out),
        .O(ram_full_fb_i_reg));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    ram_full_i_i_2
       (.I0(ram_full_i_i_4_n_0),
        .I1(p_25_out[0]),
        .I2(ram_full_i_i_2_0[0]),
        .I3(p_25_out[1]),
        .I4(ram_full_i_i_2_0[1]),
        .I5(ram_full_i_i_5_n_0),
        .O(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp2 ));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    ram_full_i_i_3
       (.I0(ram_full_i_i_6_n_0),
        .I1(p_25_out[0]),
        .I2(Q[0]),
        .I3(p_25_out[1]),
        .I4(Q[1]),
        .I5(ram_full_i_i_7_n_0),
        .O(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_4
       (.I0(p_25_out[2]),
        .I1(ram_full_i_i_2_0[2]),
        .I2(p_25_out[3]),
        .I3(ram_full_i_i_2_0[3]),
        .O(ram_full_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_5
       (.I0(p_25_out[6]),
        .I1(ram_full_i_i_2_0[6]),
        .I2(ram_full_i_i_2_0[5]),
        .I3(p_25_out[5]),
        .I4(ram_full_i_i_2_0[4]),
        .I5(p_25_out[4]),
        .O(ram_full_i_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_6
       (.I0(p_25_out[2]),
        .I1(Q[2]),
        .I2(p_25_out[3]),
        .I3(Q[3]),
        .O(ram_full_i_i_6_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_7
       (.I0(p_25_out[6]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(p_25_out[5]),
        .I4(Q[4]),
        .I5(p_25_out[4]),
        .O(ram_full_i_i_7_n_0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  sd_fifo_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin(p_25_out),
        .src_clk(rd_clk),
        .src_in_bin(\src_gray_ff_reg[6]_0 ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  sd_fifo_xpm_cdc_gray__2 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(wr_clk),
        .src_in_bin(\src_gray_ff_reg[6] ));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module sd_fifo_dmem
   (dout,
    wr_clk,
    din,
    \gpr1.dout_i_reg[0]_0 ,
    Q,
    \gpr1.dout_i_reg[0]_1 ,
    \gpr1.dout_i_reg[255]_0 ,
    ADDRC,
    \gpr1.dout_i_reg[192]_0 ,
    \gpr1.dout_i_reg[252]_0 ,
    E,
    rd_clk,
    AR);
  output [255:0]dout;
  input wr_clk;
  input [255:0]din;
  input \gpr1.dout_i_reg[0]_0 ;
  input [6:0]Q;
  input [5:0]\gpr1.dout_i_reg[0]_1 ;
  input \gpr1.dout_i_reg[255]_0 ;
  input [5:0]ADDRC;
  input [5:0]\gpr1.dout_i_reg[192]_0 ;
  input [5:0]\gpr1.dout_i_reg[252]_0 ;
  input [0:0]E;
  input rd_clk;
  input [3:0]AR;

  wire [5:0]ADDRC;
  wire [3:0]AR;
  wire [0:0]E;
  wire [6:0]Q;
  wire RAM_reg_0_63_0_2_n_0;
  wire RAM_reg_0_63_0_2_n_1;
  wire RAM_reg_0_63_0_2_n_2;
  wire RAM_reg_0_63_102_104_n_0;
  wire RAM_reg_0_63_102_104_n_1;
  wire RAM_reg_0_63_102_104_n_2;
  wire RAM_reg_0_63_105_107_n_0;
  wire RAM_reg_0_63_105_107_n_1;
  wire RAM_reg_0_63_105_107_n_2;
  wire RAM_reg_0_63_108_110_n_0;
  wire RAM_reg_0_63_108_110_n_1;
  wire RAM_reg_0_63_108_110_n_2;
  wire RAM_reg_0_63_111_113_n_0;
  wire RAM_reg_0_63_111_113_n_1;
  wire RAM_reg_0_63_111_113_n_2;
  wire RAM_reg_0_63_114_116_n_0;
  wire RAM_reg_0_63_114_116_n_1;
  wire RAM_reg_0_63_114_116_n_2;
  wire RAM_reg_0_63_117_119_n_0;
  wire RAM_reg_0_63_117_119_n_1;
  wire RAM_reg_0_63_117_119_n_2;
  wire RAM_reg_0_63_120_122_n_0;
  wire RAM_reg_0_63_120_122_n_1;
  wire RAM_reg_0_63_120_122_n_2;
  wire RAM_reg_0_63_123_125_n_0;
  wire RAM_reg_0_63_123_125_n_1;
  wire RAM_reg_0_63_123_125_n_2;
  wire RAM_reg_0_63_126_128_n_0;
  wire RAM_reg_0_63_126_128_n_1;
  wire RAM_reg_0_63_126_128_n_2;
  wire RAM_reg_0_63_129_131_n_0;
  wire RAM_reg_0_63_129_131_n_1;
  wire RAM_reg_0_63_129_131_n_2;
  wire RAM_reg_0_63_12_14_n_0;
  wire RAM_reg_0_63_12_14_n_1;
  wire RAM_reg_0_63_12_14_n_2;
  wire RAM_reg_0_63_132_134_n_0;
  wire RAM_reg_0_63_132_134_n_1;
  wire RAM_reg_0_63_132_134_n_2;
  wire RAM_reg_0_63_135_137_n_0;
  wire RAM_reg_0_63_135_137_n_1;
  wire RAM_reg_0_63_135_137_n_2;
  wire RAM_reg_0_63_138_140_n_0;
  wire RAM_reg_0_63_138_140_n_1;
  wire RAM_reg_0_63_138_140_n_2;
  wire RAM_reg_0_63_141_143_n_0;
  wire RAM_reg_0_63_141_143_n_1;
  wire RAM_reg_0_63_141_143_n_2;
  wire RAM_reg_0_63_144_146_n_0;
  wire RAM_reg_0_63_144_146_n_1;
  wire RAM_reg_0_63_144_146_n_2;
  wire RAM_reg_0_63_147_149_n_0;
  wire RAM_reg_0_63_147_149_n_1;
  wire RAM_reg_0_63_147_149_n_2;
  wire RAM_reg_0_63_150_152_n_0;
  wire RAM_reg_0_63_150_152_n_1;
  wire RAM_reg_0_63_150_152_n_2;
  wire RAM_reg_0_63_153_155_n_0;
  wire RAM_reg_0_63_153_155_n_1;
  wire RAM_reg_0_63_153_155_n_2;
  wire RAM_reg_0_63_156_158_n_0;
  wire RAM_reg_0_63_156_158_n_1;
  wire RAM_reg_0_63_156_158_n_2;
  wire RAM_reg_0_63_159_161_n_0;
  wire RAM_reg_0_63_159_161_n_1;
  wire RAM_reg_0_63_159_161_n_2;
  wire RAM_reg_0_63_15_17_n_0;
  wire RAM_reg_0_63_15_17_n_1;
  wire RAM_reg_0_63_15_17_n_2;
  wire RAM_reg_0_63_162_164_n_0;
  wire RAM_reg_0_63_162_164_n_1;
  wire RAM_reg_0_63_162_164_n_2;
  wire RAM_reg_0_63_165_167_n_0;
  wire RAM_reg_0_63_165_167_n_1;
  wire RAM_reg_0_63_165_167_n_2;
  wire RAM_reg_0_63_168_170_n_0;
  wire RAM_reg_0_63_168_170_n_1;
  wire RAM_reg_0_63_168_170_n_2;
  wire RAM_reg_0_63_171_173_n_0;
  wire RAM_reg_0_63_171_173_n_1;
  wire RAM_reg_0_63_171_173_n_2;
  wire RAM_reg_0_63_174_176_n_0;
  wire RAM_reg_0_63_174_176_n_1;
  wire RAM_reg_0_63_174_176_n_2;
  wire RAM_reg_0_63_177_179_n_0;
  wire RAM_reg_0_63_177_179_n_1;
  wire RAM_reg_0_63_177_179_n_2;
  wire RAM_reg_0_63_180_182_n_0;
  wire RAM_reg_0_63_180_182_n_1;
  wire RAM_reg_0_63_180_182_n_2;
  wire RAM_reg_0_63_183_185_n_0;
  wire RAM_reg_0_63_183_185_n_1;
  wire RAM_reg_0_63_183_185_n_2;
  wire RAM_reg_0_63_186_188_n_0;
  wire RAM_reg_0_63_186_188_n_1;
  wire RAM_reg_0_63_186_188_n_2;
  wire RAM_reg_0_63_189_191_n_0;
  wire RAM_reg_0_63_189_191_n_1;
  wire RAM_reg_0_63_189_191_n_2;
  wire RAM_reg_0_63_18_20_n_0;
  wire RAM_reg_0_63_18_20_n_1;
  wire RAM_reg_0_63_18_20_n_2;
  wire RAM_reg_0_63_192_194_n_0;
  wire RAM_reg_0_63_192_194_n_1;
  wire RAM_reg_0_63_192_194_n_2;
  wire RAM_reg_0_63_195_197_n_0;
  wire RAM_reg_0_63_195_197_n_1;
  wire RAM_reg_0_63_195_197_n_2;
  wire RAM_reg_0_63_198_200_n_0;
  wire RAM_reg_0_63_198_200_n_1;
  wire RAM_reg_0_63_198_200_n_2;
  wire RAM_reg_0_63_201_203_n_0;
  wire RAM_reg_0_63_201_203_n_1;
  wire RAM_reg_0_63_201_203_n_2;
  wire RAM_reg_0_63_204_206_n_0;
  wire RAM_reg_0_63_204_206_n_1;
  wire RAM_reg_0_63_204_206_n_2;
  wire RAM_reg_0_63_207_209_n_0;
  wire RAM_reg_0_63_207_209_n_1;
  wire RAM_reg_0_63_207_209_n_2;
  wire RAM_reg_0_63_210_212_n_0;
  wire RAM_reg_0_63_210_212_n_1;
  wire RAM_reg_0_63_210_212_n_2;
  wire RAM_reg_0_63_213_215_n_0;
  wire RAM_reg_0_63_213_215_n_1;
  wire RAM_reg_0_63_213_215_n_2;
  wire RAM_reg_0_63_216_218_n_0;
  wire RAM_reg_0_63_216_218_n_1;
  wire RAM_reg_0_63_216_218_n_2;
  wire RAM_reg_0_63_219_221_n_0;
  wire RAM_reg_0_63_219_221_n_1;
  wire RAM_reg_0_63_219_221_n_2;
  wire RAM_reg_0_63_21_23_n_0;
  wire RAM_reg_0_63_21_23_n_1;
  wire RAM_reg_0_63_21_23_n_2;
  wire RAM_reg_0_63_222_224_n_0;
  wire RAM_reg_0_63_222_224_n_1;
  wire RAM_reg_0_63_222_224_n_2;
  wire RAM_reg_0_63_225_227_n_0;
  wire RAM_reg_0_63_225_227_n_1;
  wire RAM_reg_0_63_225_227_n_2;
  wire RAM_reg_0_63_228_230_n_0;
  wire RAM_reg_0_63_228_230_n_1;
  wire RAM_reg_0_63_228_230_n_2;
  wire RAM_reg_0_63_231_233_n_0;
  wire RAM_reg_0_63_231_233_n_1;
  wire RAM_reg_0_63_231_233_n_2;
  wire RAM_reg_0_63_234_236_n_0;
  wire RAM_reg_0_63_234_236_n_1;
  wire RAM_reg_0_63_234_236_n_2;
  wire RAM_reg_0_63_237_239_n_0;
  wire RAM_reg_0_63_237_239_n_1;
  wire RAM_reg_0_63_237_239_n_2;
  wire RAM_reg_0_63_240_242_n_0;
  wire RAM_reg_0_63_240_242_n_1;
  wire RAM_reg_0_63_240_242_n_2;
  wire RAM_reg_0_63_243_245_n_0;
  wire RAM_reg_0_63_243_245_n_1;
  wire RAM_reg_0_63_243_245_n_2;
  wire RAM_reg_0_63_246_248_n_0;
  wire RAM_reg_0_63_246_248_n_1;
  wire RAM_reg_0_63_246_248_n_2;
  wire RAM_reg_0_63_249_251_n_0;
  wire RAM_reg_0_63_249_251_n_1;
  wire RAM_reg_0_63_249_251_n_2;
  wire RAM_reg_0_63_24_26_n_0;
  wire RAM_reg_0_63_24_26_n_1;
  wire RAM_reg_0_63_24_26_n_2;
  wire RAM_reg_0_63_252_254_n_0;
  wire RAM_reg_0_63_252_254_n_1;
  wire RAM_reg_0_63_252_254_n_2;
  wire RAM_reg_0_63_255_255_n_0;
  wire RAM_reg_0_63_27_29_n_0;
  wire RAM_reg_0_63_27_29_n_1;
  wire RAM_reg_0_63_27_29_n_2;
  wire RAM_reg_0_63_30_32_n_0;
  wire RAM_reg_0_63_30_32_n_1;
  wire RAM_reg_0_63_30_32_n_2;
  wire RAM_reg_0_63_33_35_n_0;
  wire RAM_reg_0_63_33_35_n_1;
  wire RAM_reg_0_63_33_35_n_2;
  wire RAM_reg_0_63_36_38_n_0;
  wire RAM_reg_0_63_36_38_n_1;
  wire RAM_reg_0_63_36_38_n_2;
  wire RAM_reg_0_63_39_41_n_0;
  wire RAM_reg_0_63_39_41_n_1;
  wire RAM_reg_0_63_39_41_n_2;
  wire RAM_reg_0_63_3_5_n_0;
  wire RAM_reg_0_63_3_5_n_1;
  wire RAM_reg_0_63_3_5_n_2;
  wire RAM_reg_0_63_42_44_n_0;
  wire RAM_reg_0_63_42_44_n_1;
  wire RAM_reg_0_63_42_44_n_2;
  wire RAM_reg_0_63_45_47_n_0;
  wire RAM_reg_0_63_45_47_n_1;
  wire RAM_reg_0_63_45_47_n_2;
  wire RAM_reg_0_63_48_50_n_0;
  wire RAM_reg_0_63_48_50_n_1;
  wire RAM_reg_0_63_48_50_n_2;
  wire RAM_reg_0_63_51_53_n_0;
  wire RAM_reg_0_63_51_53_n_1;
  wire RAM_reg_0_63_51_53_n_2;
  wire RAM_reg_0_63_54_56_n_0;
  wire RAM_reg_0_63_54_56_n_1;
  wire RAM_reg_0_63_54_56_n_2;
  wire RAM_reg_0_63_57_59_n_0;
  wire RAM_reg_0_63_57_59_n_1;
  wire RAM_reg_0_63_57_59_n_2;
  wire RAM_reg_0_63_60_62_n_0;
  wire RAM_reg_0_63_60_62_n_1;
  wire RAM_reg_0_63_60_62_n_2;
  wire RAM_reg_0_63_63_65_n_0;
  wire RAM_reg_0_63_63_65_n_1;
  wire RAM_reg_0_63_63_65_n_2;
  wire RAM_reg_0_63_66_68_n_0;
  wire RAM_reg_0_63_66_68_n_1;
  wire RAM_reg_0_63_66_68_n_2;
  wire RAM_reg_0_63_69_71_n_0;
  wire RAM_reg_0_63_69_71_n_1;
  wire RAM_reg_0_63_69_71_n_2;
  wire RAM_reg_0_63_6_8_n_0;
  wire RAM_reg_0_63_6_8_n_1;
  wire RAM_reg_0_63_6_8_n_2;
  wire RAM_reg_0_63_72_74_n_0;
  wire RAM_reg_0_63_72_74_n_1;
  wire RAM_reg_0_63_72_74_n_2;
  wire RAM_reg_0_63_75_77_n_0;
  wire RAM_reg_0_63_75_77_n_1;
  wire RAM_reg_0_63_75_77_n_2;
  wire RAM_reg_0_63_78_80_n_0;
  wire RAM_reg_0_63_78_80_n_1;
  wire RAM_reg_0_63_78_80_n_2;
  wire RAM_reg_0_63_81_83_n_0;
  wire RAM_reg_0_63_81_83_n_1;
  wire RAM_reg_0_63_81_83_n_2;
  wire RAM_reg_0_63_84_86_n_0;
  wire RAM_reg_0_63_84_86_n_1;
  wire RAM_reg_0_63_84_86_n_2;
  wire RAM_reg_0_63_87_89_n_0;
  wire RAM_reg_0_63_87_89_n_1;
  wire RAM_reg_0_63_87_89_n_2;
  wire RAM_reg_0_63_90_92_n_0;
  wire RAM_reg_0_63_90_92_n_1;
  wire RAM_reg_0_63_90_92_n_2;
  wire RAM_reg_0_63_93_95_n_0;
  wire RAM_reg_0_63_93_95_n_1;
  wire RAM_reg_0_63_93_95_n_2;
  wire RAM_reg_0_63_96_98_n_0;
  wire RAM_reg_0_63_96_98_n_1;
  wire RAM_reg_0_63_96_98_n_2;
  wire RAM_reg_0_63_99_101_n_0;
  wire RAM_reg_0_63_99_101_n_1;
  wire RAM_reg_0_63_99_101_n_2;
  wire RAM_reg_0_63_9_11_n_0;
  wire RAM_reg_0_63_9_11_n_1;
  wire RAM_reg_0_63_9_11_n_2;
  wire RAM_reg_64_127_0_2_n_0;
  wire RAM_reg_64_127_0_2_n_1;
  wire RAM_reg_64_127_0_2_n_2;
  wire RAM_reg_64_127_102_104_n_0;
  wire RAM_reg_64_127_102_104_n_1;
  wire RAM_reg_64_127_102_104_n_2;
  wire RAM_reg_64_127_105_107_n_0;
  wire RAM_reg_64_127_105_107_n_1;
  wire RAM_reg_64_127_105_107_n_2;
  wire RAM_reg_64_127_108_110_n_0;
  wire RAM_reg_64_127_108_110_n_1;
  wire RAM_reg_64_127_108_110_n_2;
  wire RAM_reg_64_127_111_113_n_0;
  wire RAM_reg_64_127_111_113_n_1;
  wire RAM_reg_64_127_111_113_n_2;
  wire RAM_reg_64_127_114_116_n_0;
  wire RAM_reg_64_127_114_116_n_1;
  wire RAM_reg_64_127_114_116_n_2;
  wire RAM_reg_64_127_117_119_n_0;
  wire RAM_reg_64_127_117_119_n_1;
  wire RAM_reg_64_127_117_119_n_2;
  wire RAM_reg_64_127_120_122_n_0;
  wire RAM_reg_64_127_120_122_n_1;
  wire RAM_reg_64_127_120_122_n_2;
  wire RAM_reg_64_127_123_125_n_0;
  wire RAM_reg_64_127_123_125_n_1;
  wire RAM_reg_64_127_123_125_n_2;
  wire RAM_reg_64_127_126_128_n_0;
  wire RAM_reg_64_127_126_128_n_1;
  wire RAM_reg_64_127_126_128_n_2;
  wire RAM_reg_64_127_129_131_n_0;
  wire RAM_reg_64_127_129_131_n_1;
  wire RAM_reg_64_127_129_131_n_2;
  wire RAM_reg_64_127_12_14_n_0;
  wire RAM_reg_64_127_12_14_n_1;
  wire RAM_reg_64_127_12_14_n_2;
  wire RAM_reg_64_127_132_134_n_0;
  wire RAM_reg_64_127_132_134_n_1;
  wire RAM_reg_64_127_132_134_n_2;
  wire RAM_reg_64_127_135_137_n_0;
  wire RAM_reg_64_127_135_137_n_1;
  wire RAM_reg_64_127_135_137_n_2;
  wire RAM_reg_64_127_138_140_n_0;
  wire RAM_reg_64_127_138_140_n_1;
  wire RAM_reg_64_127_138_140_n_2;
  wire RAM_reg_64_127_141_143_n_0;
  wire RAM_reg_64_127_141_143_n_1;
  wire RAM_reg_64_127_141_143_n_2;
  wire RAM_reg_64_127_144_146_n_0;
  wire RAM_reg_64_127_144_146_n_1;
  wire RAM_reg_64_127_144_146_n_2;
  wire RAM_reg_64_127_147_149_n_0;
  wire RAM_reg_64_127_147_149_n_1;
  wire RAM_reg_64_127_147_149_n_2;
  wire RAM_reg_64_127_150_152_n_0;
  wire RAM_reg_64_127_150_152_n_1;
  wire RAM_reg_64_127_150_152_n_2;
  wire RAM_reg_64_127_153_155_n_0;
  wire RAM_reg_64_127_153_155_n_1;
  wire RAM_reg_64_127_153_155_n_2;
  wire RAM_reg_64_127_156_158_n_0;
  wire RAM_reg_64_127_156_158_n_1;
  wire RAM_reg_64_127_156_158_n_2;
  wire RAM_reg_64_127_159_161_n_0;
  wire RAM_reg_64_127_159_161_n_1;
  wire RAM_reg_64_127_159_161_n_2;
  wire RAM_reg_64_127_15_17_n_0;
  wire RAM_reg_64_127_15_17_n_1;
  wire RAM_reg_64_127_15_17_n_2;
  wire RAM_reg_64_127_162_164_n_0;
  wire RAM_reg_64_127_162_164_n_1;
  wire RAM_reg_64_127_162_164_n_2;
  wire RAM_reg_64_127_165_167_n_0;
  wire RAM_reg_64_127_165_167_n_1;
  wire RAM_reg_64_127_165_167_n_2;
  wire RAM_reg_64_127_168_170_n_0;
  wire RAM_reg_64_127_168_170_n_1;
  wire RAM_reg_64_127_168_170_n_2;
  wire RAM_reg_64_127_171_173_n_0;
  wire RAM_reg_64_127_171_173_n_1;
  wire RAM_reg_64_127_171_173_n_2;
  wire RAM_reg_64_127_174_176_n_0;
  wire RAM_reg_64_127_174_176_n_1;
  wire RAM_reg_64_127_174_176_n_2;
  wire RAM_reg_64_127_177_179_n_0;
  wire RAM_reg_64_127_177_179_n_1;
  wire RAM_reg_64_127_177_179_n_2;
  wire RAM_reg_64_127_180_182_n_0;
  wire RAM_reg_64_127_180_182_n_1;
  wire RAM_reg_64_127_180_182_n_2;
  wire RAM_reg_64_127_183_185_n_0;
  wire RAM_reg_64_127_183_185_n_1;
  wire RAM_reg_64_127_183_185_n_2;
  wire RAM_reg_64_127_186_188_n_0;
  wire RAM_reg_64_127_186_188_n_1;
  wire RAM_reg_64_127_186_188_n_2;
  wire RAM_reg_64_127_189_191_n_0;
  wire RAM_reg_64_127_189_191_n_1;
  wire RAM_reg_64_127_189_191_n_2;
  wire RAM_reg_64_127_18_20_n_0;
  wire RAM_reg_64_127_18_20_n_1;
  wire RAM_reg_64_127_18_20_n_2;
  wire RAM_reg_64_127_192_194_n_0;
  wire RAM_reg_64_127_192_194_n_1;
  wire RAM_reg_64_127_192_194_n_2;
  wire RAM_reg_64_127_195_197_n_0;
  wire RAM_reg_64_127_195_197_n_1;
  wire RAM_reg_64_127_195_197_n_2;
  wire RAM_reg_64_127_198_200_n_0;
  wire RAM_reg_64_127_198_200_n_1;
  wire RAM_reg_64_127_198_200_n_2;
  wire RAM_reg_64_127_201_203_n_0;
  wire RAM_reg_64_127_201_203_n_1;
  wire RAM_reg_64_127_201_203_n_2;
  wire RAM_reg_64_127_204_206_n_0;
  wire RAM_reg_64_127_204_206_n_1;
  wire RAM_reg_64_127_204_206_n_2;
  wire RAM_reg_64_127_207_209_n_0;
  wire RAM_reg_64_127_207_209_n_1;
  wire RAM_reg_64_127_207_209_n_2;
  wire RAM_reg_64_127_210_212_n_0;
  wire RAM_reg_64_127_210_212_n_1;
  wire RAM_reg_64_127_210_212_n_2;
  wire RAM_reg_64_127_213_215_n_0;
  wire RAM_reg_64_127_213_215_n_1;
  wire RAM_reg_64_127_213_215_n_2;
  wire RAM_reg_64_127_216_218_n_0;
  wire RAM_reg_64_127_216_218_n_1;
  wire RAM_reg_64_127_216_218_n_2;
  wire RAM_reg_64_127_219_221_n_0;
  wire RAM_reg_64_127_219_221_n_1;
  wire RAM_reg_64_127_219_221_n_2;
  wire RAM_reg_64_127_21_23_n_0;
  wire RAM_reg_64_127_21_23_n_1;
  wire RAM_reg_64_127_21_23_n_2;
  wire RAM_reg_64_127_222_224_n_0;
  wire RAM_reg_64_127_222_224_n_1;
  wire RAM_reg_64_127_222_224_n_2;
  wire RAM_reg_64_127_225_227_n_0;
  wire RAM_reg_64_127_225_227_n_1;
  wire RAM_reg_64_127_225_227_n_2;
  wire RAM_reg_64_127_228_230_n_0;
  wire RAM_reg_64_127_228_230_n_1;
  wire RAM_reg_64_127_228_230_n_2;
  wire RAM_reg_64_127_231_233_n_0;
  wire RAM_reg_64_127_231_233_n_1;
  wire RAM_reg_64_127_231_233_n_2;
  wire RAM_reg_64_127_234_236_n_0;
  wire RAM_reg_64_127_234_236_n_1;
  wire RAM_reg_64_127_234_236_n_2;
  wire RAM_reg_64_127_237_239_n_0;
  wire RAM_reg_64_127_237_239_n_1;
  wire RAM_reg_64_127_237_239_n_2;
  wire RAM_reg_64_127_240_242_n_0;
  wire RAM_reg_64_127_240_242_n_1;
  wire RAM_reg_64_127_240_242_n_2;
  wire RAM_reg_64_127_243_245_n_0;
  wire RAM_reg_64_127_243_245_n_1;
  wire RAM_reg_64_127_243_245_n_2;
  wire RAM_reg_64_127_246_248_n_0;
  wire RAM_reg_64_127_246_248_n_1;
  wire RAM_reg_64_127_246_248_n_2;
  wire RAM_reg_64_127_249_251_n_0;
  wire RAM_reg_64_127_249_251_n_1;
  wire RAM_reg_64_127_249_251_n_2;
  wire RAM_reg_64_127_24_26_n_0;
  wire RAM_reg_64_127_24_26_n_1;
  wire RAM_reg_64_127_24_26_n_2;
  wire RAM_reg_64_127_252_254_n_0;
  wire RAM_reg_64_127_252_254_n_1;
  wire RAM_reg_64_127_252_254_n_2;
  wire RAM_reg_64_127_255_255_n_0;
  wire RAM_reg_64_127_27_29_n_0;
  wire RAM_reg_64_127_27_29_n_1;
  wire RAM_reg_64_127_27_29_n_2;
  wire RAM_reg_64_127_30_32_n_0;
  wire RAM_reg_64_127_30_32_n_1;
  wire RAM_reg_64_127_30_32_n_2;
  wire RAM_reg_64_127_33_35_n_0;
  wire RAM_reg_64_127_33_35_n_1;
  wire RAM_reg_64_127_33_35_n_2;
  wire RAM_reg_64_127_36_38_n_0;
  wire RAM_reg_64_127_36_38_n_1;
  wire RAM_reg_64_127_36_38_n_2;
  wire RAM_reg_64_127_39_41_n_0;
  wire RAM_reg_64_127_39_41_n_1;
  wire RAM_reg_64_127_39_41_n_2;
  wire RAM_reg_64_127_3_5_n_0;
  wire RAM_reg_64_127_3_5_n_1;
  wire RAM_reg_64_127_3_5_n_2;
  wire RAM_reg_64_127_42_44_n_0;
  wire RAM_reg_64_127_42_44_n_1;
  wire RAM_reg_64_127_42_44_n_2;
  wire RAM_reg_64_127_45_47_n_0;
  wire RAM_reg_64_127_45_47_n_1;
  wire RAM_reg_64_127_45_47_n_2;
  wire RAM_reg_64_127_48_50_n_0;
  wire RAM_reg_64_127_48_50_n_1;
  wire RAM_reg_64_127_48_50_n_2;
  wire RAM_reg_64_127_51_53_n_0;
  wire RAM_reg_64_127_51_53_n_1;
  wire RAM_reg_64_127_51_53_n_2;
  wire RAM_reg_64_127_54_56_n_0;
  wire RAM_reg_64_127_54_56_n_1;
  wire RAM_reg_64_127_54_56_n_2;
  wire RAM_reg_64_127_57_59_n_0;
  wire RAM_reg_64_127_57_59_n_1;
  wire RAM_reg_64_127_57_59_n_2;
  wire RAM_reg_64_127_60_62_n_0;
  wire RAM_reg_64_127_60_62_n_1;
  wire RAM_reg_64_127_60_62_n_2;
  wire RAM_reg_64_127_63_65_n_0;
  wire RAM_reg_64_127_63_65_n_1;
  wire RAM_reg_64_127_63_65_n_2;
  wire RAM_reg_64_127_66_68_n_0;
  wire RAM_reg_64_127_66_68_n_1;
  wire RAM_reg_64_127_66_68_n_2;
  wire RAM_reg_64_127_69_71_n_0;
  wire RAM_reg_64_127_69_71_n_1;
  wire RAM_reg_64_127_69_71_n_2;
  wire RAM_reg_64_127_6_8_n_0;
  wire RAM_reg_64_127_6_8_n_1;
  wire RAM_reg_64_127_6_8_n_2;
  wire RAM_reg_64_127_72_74_n_0;
  wire RAM_reg_64_127_72_74_n_1;
  wire RAM_reg_64_127_72_74_n_2;
  wire RAM_reg_64_127_75_77_n_0;
  wire RAM_reg_64_127_75_77_n_1;
  wire RAM_reg_64_127_75_77_n_2;
  wire RAM_reg_64_127_78_80_n_0;
  wire RAM_reg_64_127_78_80_n_1;
  wire RAM_reg_64_127_78_80_n_2;
  wire RAM_reg_64_127_81_83_n_0;
  wire RAM_reg_64_127_81_83_n_1;
  wire RAM_reg_64_127_81_83_n_2;
  wire RAM_reg_64_127_84_86_n_0;
  wire RAM_reg_64_127_84_86_n_1;
  wire RAM_reg_64_127_84_86_n_2;
  wire RAM_reg_64_127_87_89_n_0;
  wire RAM_reg_64_127_87_89_n_1;
  wire RAM_reg_64_127_87_89_n_2;
  wire RAM_reg_64_127_90_92_n_0;
  wire RAM_reg_64_127_90_92_n_1;
  wire RAM_reg_64_127_90_92_n_2;
  wire RAM_reg_64_127_93_95_n_0;
  wire RAM_reg_64_127_93_95_n_1;
  wire RAM_reg_64_127_93_95_n_2;
  wire RAM_reg_64_127_96_98_n_0;
  wire RAM_reg_64_127_96_98_n_1;
  wire RAM_reg_64_127_96_98_n_2;
  wire RAM_reg_64_127_99_101_n_0;
  wire RAM_reg_64_127_99_101_n_1;
  wire RAM_reg_64_127_99_101_n_2;
  wire RAM_reg_64_127_9_11_n_0;
  wire RAM_reg_64_127_9_11_n_1;
  wire RAM_reg_64_127_9_11_n_2;
  wire [255:0]din;
  wire [255:0]dout;
  wire \gpr1.dout_i_reg[0]_0 ;
  wire [5:0]\gpr1.dout_i_reg[0]_1 ;
  wire [5:0]\gpr1.dout_i_reg[192]_0 ;
  wire [5:0]\gpr1.dout_i_reg[252]_0 ;
  wire \gpr1.dout_i_reg[255]_0 ;
  wire [255:0]p_0_out;
  wire rd_clk;
  wire wr_clk;
  wire NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_102_104_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_105_107_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_108_110_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_111_113_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_114_116_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_117_119_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_120_122_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_123_125_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_126_128_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_129_131_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_132_134_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_135_137_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_138_140_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_141_143_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_144_146_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_147_149_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_150_152_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_153_155_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_156_158_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_159_161_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_162_164_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_165_167_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_168_170_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_171_173_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_174_176_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_177_179_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_180_182_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_183_185_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_186_188_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_189_191_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_192_194_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_195_197_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_198_200_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_201_203_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_204_206_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_207_209_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_210_212_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_213_215_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_216_218_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_219_221_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_222_224_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_225_227_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_228_230_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_231_233_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_234_236_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_237_239_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_240_242_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_243_245_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_246_248_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_249_251_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_252_254_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_255_255_SPO_UNCONNECTED;
  wire NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_30_32_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_33_35_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_36_38_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_39_41_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_42_44_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_45_47_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_48_50_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_51_53_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_54_56_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_57_59_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_60_62_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_63_65_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_66_68_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_69_71_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_72_74_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_75_77_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_78_80_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_81_83_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_84_86_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_87_89_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_90_92_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_93_95_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_96_98_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_99_101_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_102_104_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_105_107_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_108_110_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_111_113_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_114_116_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_117_119_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_120_122_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_123_125_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_126_128_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_129_131_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_132_134_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_135_137_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_138_140_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_141_143_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_144_146_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_147_149_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_150_152_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_153_155_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_156_158_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_159_161_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_162_164_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_165_167_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_168_170_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_171_173_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_174_176_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_177_179_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_180_182_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_183_185_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_186_188_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_189_191_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_192_194_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_195_197_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_198_200_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_201_203_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_204_206_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_207_209_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_210_212_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_213_215_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_216_218_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_219_221_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_222_224_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_225_227_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_228_230_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_231_233_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_234_236_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_237_239_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_240_242_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_243_245_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_246_248_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_249_251_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_24_26_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_252_254_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_255_255_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_27_29_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_30_32_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_33_35_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_36_38_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_39_41_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_42_44_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_45_47_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_48_50_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_51_53_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_54_56_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_57_59_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_60_62_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_63_65_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_66_68_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_69_71_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_72_74_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_75_77_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_78_80_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_81_83_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_84_86_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_87_89_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_90_92_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_93_95_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_96_98_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_99_101_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_0_63_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_0_2_n_0),
        .DOB(RAM_reg_0_63_0_2_n_1),
        .DOC(RAM_reg_0_63_0_2_n_2),
        .DOD(NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "102" *) 
  (* ram_slice_end = "104" *) 
  RAM64M RAM_reg_0_63_102_104
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[102]),
        .DIB(din[103]),
        .DIC(din[104]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_102_104_n_0),
        .DOB(RAM_reg_0_63_102_104_n_1),
        .DOC(RAM_reg_0_63_102_104_n_2),
        .DOD(NLW_RAM_reg_0_63_102_104_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "105" *) 
  (* ram_slice_end = "107" *) 
  RAM64M RAM_reg_0_63_105_107
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[105]),
        .DIB(din[106]),
        .DIC(din[107]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_105_107_n_0),
        .DOB(RAM_reg_0_63_105_107_n_1),
        .DOC(RAM_reg_0_63_105_107_n_2),
        .DOD(NLW_RAM_reg_0_63_105_107_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "110" *) 
  RAM64M RAM_reg_0_63_108_110
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[108]),
        .DIB(din[109]),
        .DIC(din[110]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_108_110_n_0),
        .DOB(RAM_reg_0_63_108_110_n_1),
        .DOC(RAM_reg_0_63_108_110_n_2),
        .DOD(NLW_RAM_reg_0_63_108_110_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "111" *) 
  (* ram_slice_end = "113" *) 
  RAM64M RAM_reg_0_63_111_113
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[111]),
        .DIB(din[112]),
        .DIC(din[113]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_111_113_n_0),
        .DOB(RAM_reg_0_63_111_113_n_1),
        .DOC(RAM_reg_0_63_111_113_n_2),
        .DOD(NLW_RAM_reg_0_63_111_113_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "114" *) 
  (* ram_slice_end = "116" *) 
  RAM64M RAM_reg_0_63_114_116
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[114]),
        .DIB(din[115]),
        .DIC(din[116]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_114_116_n_0),
        .DOB(RAM_reg_0_63_114_116_n_1),
        .DOC(RAM_reg_0_63_114_116_n_2),
        .DOD(NLW_RAM_reg_0_63_114_116_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "117" *) 
  (* ram_slice_end = "119" *) 
  RAM64M RAM_reg_0_63_117_119
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[117]),
        .DIB(din[118]),
        .DIC(din[119]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_117_119_n_0),
        .DOB(RAM_reg_0_63_117_119_n_1),
        .DOC(RAM_reg_0_63_117_119_n_2),
        .DOD(NLW_RAM_reg_0_63_117_119_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "120" *) 
  (* ram_slice_end = "122" *) 
  RAM64M RAM_reg_0_63_120_122
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[120]),
        .DIB(din[121]),
        .DIC(din[122]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_120_122_n_0),
        .DOB(RAM_reg_0_63_120_122_n_1),
        .DOC(RAM_reg_0_63_120_122_n_2),
        .DOD(NLW_RAM_reg_0_63_120_122_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "123" *) 
  (* ram_slice_end = "125" *) 
  RAM64M RAM_reg_0_63_123_125
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[123]),
        .DIB(din[124]),
        .DIC(din[125]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_123_125_n_0),
        .DOB(RAM_reg_0_63_123_125_n_1),
        .DOC(RAM_reg_0_63_123_125_n_2),
        .DOD(NLW_RAM_reg_0_63_123_125_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "126" *) 
  (* ram_slice_end = "128" *) 
  RAM64M RAM_reg_0_63_126_128
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[126]),
        .DIB(din[127]),
        .DIC(din[128]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_126_128_n_0),
        .DOB(RAM_reg_0_63_126_128_n_1),
        .DOC(RAM_reg_0_63_126_128_n_2),
        .DOD(NLW_RAM_reg_0_63_126_128_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "129" *) 
  (* ram_slice_end = "131" *) 
  RAM64M RAM_reg_0_63_129_131
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[129]),
        .DIB(din[130]),
        .DIC(din[131]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_129_131_n_0),
        .DOB(RAM_reg_0_63_129_131_n_1),
        .DOC(RAM_reg_0_63_129_131_n_2),
        .DOD(NLW_RAM_reg_0_63_129_131_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M RAM_reg_0_63_12_14
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_12_14_n_0),
        .DOB(RAM_reg_0_63_12_14_n_1),
        .DOC(RAM_reg_0_63_12_14_n_2),
        .DOD(NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "132" *) 
  (* ram_slice_end = "134" *) 
  RAM64M RAM_reg_0_63_132_134
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[132]),
        .DIB(din[133]),
        .DIC(din[134]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_132_134_n_0),
        .DOB(RAM_reg_0_63_132_134_n_1),
        .DOC(RAM_reg_0_63_132_134_n_2),
        .DOD(NLW_RAM_reg_0_63_132_134_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "135" *) 
  (* ram_slice_end = "137" *) 
  RAM64M RAM_reg_0_63_135_137
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[135]),
        .DIB(din[136]),
        .DIC(din[137]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_135_137_n_0),
        .DOB(RAM_reg_0_63_135_137_n_1),
        .DOC(RAM_reg_0_63_135_137_n_2),
        .DOD(NLW_RAM_reg_0_63_135_137_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "138" *) 
  (* ram_slice_end = "140" *) 
  RAM64M RAM_reg_0_63_138_140
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[138]),
        .DIB(din[139]),
        .DIC(din[140]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_138_140_n_0),
        .DOB(RAM_reg_0_63_138_140_n_1),
        .DOC(RAM_reg_0_63_138_140_n_2),
        .DOD(NLW_RAM_reg_0_63_138_140_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "141" *) 
  (* ram_slice_end = "143" *) 
  RAM64M RAM_reg_0_63_141_143
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[141]),
        .DIB(din[142]),
        .DIC(din[143]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_141_143_n_0),
        .DOB(RAM_reg_0_63_141_143_n_1),
        .DOC(RAM_reg_0_63_141_143_n_2),
        .DOD(NLW_RAM_reg_0_63_141_143_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "146" *) 
  RAM64M RAM_reg_0_63_144_146
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[144]),
        .DIB(din[145]),
        .DIC(din[146]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_144_146_n_0),
        .DOB(RAM_reg_0_63_144_146_n_1),
        .DOC(RAM_reg_0_63_144_146_n_2),
        .DOD(NLW_RAM_reg_0_63_144_146_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "147" *) 
  (* ram_slice_end = "149" *) 
  RAM64M RAM_reg_0_63_147_149
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[147]),
        .DIB(din[148]),
        .DIC(din[149]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_147_149_n_0),
        .DOB(RAM_reg_0_63_147_149_n_1),
        .DOC(RAM_reg_0_63_147_149_n_2),
        .DOD(NLW_RAM_reg_0_63_147_149_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "150" *) 
  (* ram_slice_end = "152" *) 
  RAM64M RAM_reg_0_63_150_152
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[150]),
        .DIB(din[151]),
        .DIC(din[152]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_150_152_n_0),
        .DOB(RAM_reg_0_63_150_152_n_1),
        .DOC(RAM_reg_0_63_150_152_n_2),
        .DOD(NLW_RAM_reg_0_63_150_152_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "153" *) 
  (* ram_slice_end = "155" *) 
  RAM64M RAM_reg_0_63_153_155
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[153]),
        .DIB(din[154]),
        .DIC(din[155]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_153_155_n_0),
        .DOB(RAM_reg_0_63_153_155_n_1),
        .DOC(RAM_reg_0_63_153_155_n_2),
        .DOD(NLW_RAM_reg_0_63_153_155_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "156" *) 
  (* ram_slice_end = "158" *) 
  RAM64M RAM_reg_0_63_156_158
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[156]),
        .DIB(din[157]),
        .DIC(din[158]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_156_158_n_0),
        .DOB(RAM_reg_0_63_156_158_n_1),
        .DOC(RAM_reg_0_63_156_158_n_2),
        .DOD(NLW_RAM_reg_0_63_156_158_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "159" *) 
  (* ram_slice_end = "161" *) 
  RAM64M RAM_reg_0_63_159_161
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[159]),
        .DIB(din[160]),
        .DIC(din[161]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_159_161_n_0),
        .DOB(RAM_reg_0_63_159_161_n_1),
        .DOC(RAM_reg_0_63_159_161_n_2),
        .DOD(NLW_RAM_reg_0_63_159_161_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M RAM_reg_0_63_15_17
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[15]),
        .DIB(din[16]),
        .DIC(din[17]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_15_17_n_0),
        .DOB(RAM_reg_0_63_15_17_n_1),
        .DOC(RAM_reg_0_63_15_17_n_2),
        .DOD(NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "162" *) 
  (* ram_slice_end = "164" *) 
  RAM64M RAM_reg_0_63_162_164
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[162]),
        .DIB(din[163]),
        .DIC(din[164]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_162_164_n_0),
        .DOB(RAM_reg_0_63_162_164_n_1),
        .DOC(RAM_reg_0_63_162_164_n_2),
        .DOD(NLW_RAM_reg_0_63_162_164_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "165" *) 
  (* ram_slice_end = "167" *) 
  RAM64M RAM_reg_0_63_165_167
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[165]),
        .DIB(din[166]),
        .DIC(din[167]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_165_167_n_0),
        .DOB(RAM_reg_0_63_165_167_n_1),
        .DOC(RAM_reg_0_63_165_167_n_2),
        .DOD(NLW_RAM_reg_0_63_165_167_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "168" *) 
  (* ram_slice_end = "170" *) 
  RAM64M RAM_reg_0_63_168_170
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[168]),
        .DIB(din[169]),
        .DIC(din[170]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_168_170_n_0),
        .DOB(RAM_reg_0_63_168_170_n_1),
        .DOC(RAM_reg_0_63_168_170_n_2),
        .DOD(NLW_RAM_reg_0_63_168_170_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "171" *) 
  (* ram_slice_end = "173" *) 
  RAM64M RAM_reg_0_63_171_173
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[171]),
        .DIB(din[172]),
        .DIC(din[173]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_171_173_n_0),
        .DOB(RAM_reg_0_63_171_173_n_1),
        .DOC(RAM_reg_0_63_171_173_n_2),
        .DOD(NLW_RAM_reg_0_63_171_173_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "174" *) 
  (* ram_slice_end = "176" *) 
  RAM64M RAM_reg_0_63_174_176
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[174]),
        .DIB(din[175]),
        .DIC(din[176]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_174_176_n_0),
        .DOB(RAM_reg_0_63_174_176_n_1),
        .DOC(RAM_reg_0_63_174_176_n_2),
        .DOD(NLW_RAM_reg_0_63_174_176_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "177" *) 
  (* ram_slice_end = "179" *) 
  RAM64M RAM_reg_0_63_177_179
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[177]),
        .DIB(din[178]),
        .DIC(din[179]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_177_179_n_0),
        .DOB(RAM_reg_0_63_177_179_n_1),
        .DOC(RAM_reg_0_63_177_179_n_2),
        .DOD(NLW_RAM_reg_0_63_177_179_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "180" *) 
  (* ram_slice_end = "182" *) 
  RAM64M RAM_reg_0_63_180_182
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[180]),
        .DIB(din[181]),
        .DIC(din[182]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_180_182_n_0),
        .DOB(RAM_reg_0_63_180_182_n_1),
        .DOC(RAM_reg_0_63_180_182_n_2),
        .DOD(NLW_RAM_reg_0_63_180_182_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "183" *) 
  (* ram_slice_end = "185" *) 
  RAM64M RAM_reg_0_63_183_185
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[183]),
        .DIB(din[184]),
        .DIC(din[185]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_183_185_n_0),
        .DOB(RAM_reg_0_63_183_185_n_1),
        .DOC(RAM_reg_0_63_183_185_n_2),
        .DOD(NLW_RAM_reg_0_63_183_185_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "186" *) 
  (* ram_slice_end = "188" *) 
  RAM64M RAM_reg_0_63_186_188
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[186]),
        .DIB(din[187]),
        .DIC(din[188]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_186_188_n_0),
        .DOB(RAM_reg_0_63_186_188_n_1),
        .DOC(RAM_reg_0_63_186_188_n_2),
        .DOD(NLW_RAM_reg_0_63_186_188_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "189" *) 
  (* ram_slice_end = "191" *) 
  RAM64M RAM_reg_0_63_189_191
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[189]),
        .DIB(din[190]),
        .DIC(din[191]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_189_191_n_0),
        .DOB(RAM_reg_0_63_189_191_n_1),
        .DOC(RAM_reg_0_63_189_191_n_2),
        .DOD(NLW_RAM_reg_0_63_189_191_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M RAM_reg_0_63_18_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[18]),
        .DIB(din[19]),
        .DIC(din[20]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_18_20_n_0),
        .DOB(RAM_reg_0_63_18_20_n_1),
        .DOC(RAM_reg_0_63_18_20_n_2),
        .DOD(NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "192" *) 
  (* ram_slice_end = "194" *) 
  RAM64M RAM_reg_0_63_192_194
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[192]),
        .DIB(din[193]),
        .DIC(din[194]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_192_194_n_0),
        .DOB(RAM_reg_0_63_192_194_n_1),
        .DOC(RAM_reg_0_63_192_194_n_2),
        .DOD(NLW_RAM_reg_0_63_192_194_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "195" *) 
  (* ram_slice_end = "197" *) 
  RAM64M RAM_reg_0_63_195_197
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[195]),
        .DIB(din[196]),
        .DIC(din[197]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_195_197_n_0),
        .DOB(RAM_reg_0_63_195_197_n_1),
        .DOC(RAM_reg_0_63_195_197_n_2),
        .DOD(NLW_RAM_reg_0_63_195_197_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "198" *) 
  (* ram_slice_end = "200" *) 
  RAM64M RAM_reg_0_63_198_200
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[198]),
        .DIB(din[199]),
        .DIC(din[200]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_198_200_n_0),
        .DOB(RAM_reg_0_63_198_200_n_1),
        .DOC(RAM_reg_0_63_198_200_n_2),
        .DOD(NLW_RAM_reg_0_63_198_200_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "201" *) 
  (* ram_slice_end = "203" *) 
  RAM64M RAM_reg_0_63_201_203
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[201]),
        .DIB(din[202]),
        .DIC(din[203]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_201_203_n_0),
        .DOB(RAM_reg_0_63_201_203_n_1),
        .DOC(RAM_reg_0_63_201_203_n_2),
        .DOD(NLW_RAM_reg_0_63_201_203_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "204" *) 
  (* ram_slice_end = "206" *) 
  RAM64M RAM_reg_0_63_204_206
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[204]),
        .DIB(din[205]),
        .DIC(din[206]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_204_206_n_0),
        .DOB(RAM_reg_0_63_204_206_n_1),
        .DOC(RAM_reg_0_63_204_206_n_2),
        .DOD(NLW_RAM_reg_0_63_204_206_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "207" *) 
  (* ram_slice_end = "209" *) 
  RAM64M RAM_reg_0_63_207_209
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[207]),
        .DIB(din[208]),
        .DIC(din[209]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_207_209_n_0),
        .DOB(RAM_reg_0_63_207_209_n_1),
        .DOC(RAM_reg_0_63_207_209_n_2),
        .DOD(NLW_RAM_reg_0_63_207_209_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "210" *) 
  (* ram_slice_end = "212" *) 
  RAM64M RAM_reg_0_63_210_212
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[210]),
        .DIB(din[211]),
        .DIC(din[212]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_210_212_n_0),
        .DOB(RAM_reg_0_63_210_212_n_1),
        .DOC(RAM_reg_0_63_210_212_n_2),
        .DOD(NLW_RAM_reg_0_63_210_212_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "213" *) 
  (* ram_slice_end = "215" *) 
  RAM64M RAM_reg_0_63_213_215
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[213]),
        .DIB(din[214]),
        .DIC(din[215]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_213_215_n_0),
        .DOB(RAM_reg_0_63_213_215_n_1),
        .DOC(RAM_reg_0_63_213_215_n_2),
        .DOD(NLW_RAM_reg_0_63_213_215_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "218" *) 
  RAM64M RAM_reg_0_63_216_218
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[216]),
        .DIB(din[217]),
        .DIC(din[218]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_216_218_n_0),
        .DOB(RAM_reg_0_63_216_218_n_1),
        .DOC(RAM_reg_0_63_216_218_n_2),
        .DOD(NLW_RAM_reg_0_63_216_218_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "219" *) 
  (* ram_slice_end = "221" *) 
  RAM64M RAM_reg_0_63_219_221
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[219]),
        .DIB(din[220]),
        .DIC(din[221]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_219_221_n_0),
        .DOB(RAM_reg_0_63_219_221_n_1),
        .DOC(RAM_reg_0_63_219_221_n_2),
        .DOD(NLW_RAM_reg_0_63_219_221_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M RAM_reg_0_63_21_23
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_21_23_n_0),
        .DOB(RAM_reg_0_63_21_23_n_1),
        .DOC(RAM_reg_0_63_21_23_n_2),
        .DOD(NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "222" *) 
  (* ram_slice_end = "224" *) 
  RAM64M RAM_reg_0_63_222_224
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[222]),
        .DIB(din[223]),
        .DIC(din[224]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_222_224_n_0),
        .DOB(RAM_reg_0_63_222_224_n_1),
        .DOC(RAM_reg_0_63_222_224_n_2),
        .DOD(NLW_RAM_reg_0_63_222_224_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "225" *) 
  (* ram_slice_end = "227" *) 
  RAM64M RAM_reg_0_63_225_227
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[225]),
        .DIB(din[226]),
        .DIC(din[227]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_225_227_n_0),
        .DOB(RAM_reg_0_63_225_227_n_1),
        .DOC(RAM_reg_0_63_225_227_n_2),
        .DOD(NLW_RAM_reg_0_63_225_227_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "228" *) 
  (* ram_slice_end = "230" *) 
  RAM64M RAM_reg_0_63_228_230
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[228]),
        .DIB(din[229]),
        .DIC(din[230]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_228_230_n_0),
        .DOB(RAM_reg_0_63_228_230_n_1),
        .DOC(RAM_reg_0_63_228_230_n_2),
        .DOD(NLW_RAM_reg_0_63_228_230_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "231" *) 
  (* ram_slice_end = "233" *) 
  RAM64M RAM_reg_0_63_231_233
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[231]),
        .DIB(din[232]),
        .DIC(din[233]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_231_233_n_0),
        .DOB(RAM_reg_0_63_231_233_n_1),
        .DOC(RAM_reg_0_63_231_233_n_2),
        .DOD(NLW_RAM_reg_0_63_231_233_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "234" *) 
  (* ram_slice_end = "236" *) 
  RAM64M RAM_reg_0_63_234_236
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[234]),
        .DIB(din[235]),
        .DIC(din[236]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_234_236_n_0),
        .DOB(RAM_reg_0_63_234_236_n_1),
        .DOC(RAM_reg_0_63_234_236_n_2),
        .DOD(NLW_RAM_reg_0_63_234_236_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "237" *) 
  (* ram_slice_end = "239" *) 
  RAM64M RAM_reg_0_63_237_239
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[237]),
        .DIB(din[238]),
        .DIC(din[239]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_237_239_n_0),
        .DOB(RAM_reg_0_63_237_239_n_1),
        .DOC(RAM_reg_0_63_237_239_n_2),
        .DOD(NLW_RAM_reg_0_63_237_239_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "240" *) 
  (* ram_slice_end = "242" *) 
  RAM64M RAM_reg_0_63_240_242
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[240]),
        .DIB(din[241]),
        .DIC(din[242]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_240_242_n_0),
        .DOB(RAM_reg_0_63_240_242_n_1),
        .DOC(RAM_reg_0_63_240_242_n_2),
        .DOD(NLW_RAM_reg_0_63_240_242_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "243" *) 
  (* ram_slice_end = "245" *) 
  RAM64M RAM_reg_0_63_243_245
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[243]),
        .DIB(din[244]),
        .DIC(din[245]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_243_245_n_0),
        .DOB(RAM_reg_0_63_243_245_n_1),
        .DOC(RAM_reg_0_63_243_245_n_2),
        .DOD(NLW_RAM_reg_0_63_243_245_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "246" *) 
  (* ram_slice_end = "248" *) 
  RAM64M RAM_reg_0_63_246_248
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[246]),
        .DIB(din[247]),
        .DIC(din[248]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_246_248_n_0),
        .DOB(RAM_reg_0_63_246_248_n_1),
        .DOC(RAM_reg_0_63_246_248_n_2),
        .DOD(NLW_RAM_reg_0_63_246_248_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "249" *) 
  (* ram_slice_end = "251" *) 
  RAM64M RAM_reg_0_63_249_251
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[249]),
        .DIB(din[250]),
        .DIC(din[251]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_249_251_n_0),
        .DOB(RAM_reg_0_63_249_251_n_1),
        .DOC(RAM_reg_0_63_249_251_n_2),
        .DOD(NLW_RAM_reg_0_63_249_251_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M RAM_reg_0_63_24_26
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[24]),
        .DIB(din[25]),
        .DIC(din[26]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_24_26_n_0),
        .DOB(RAM_reg_0_63_24_26_n_1),
        .DOC(RAM_reg_0_63_24_26_n_2),
        .DOD(NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "252" *) 
  (* ram_slice_end = "254" *) 
  RAM64M RAM_reg_0_63_252_254
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[252]),
        .DIB(din[253]),
        .DIC(din[254]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_252_254_n_0),
        .DOB(RAM_reg_0_63_252_254_n_1),
        .DOC(RAM_reg_0_63_252_254_n_2),
        .DOD(NLW_RAM_reg_0_63_252_254_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "255" *) 
  (* ram_slice_end = "255" *) 
  RAM64X1D RAM_reg_0_63_255_255
       (.A0(\gpr1.dout_i_reg[0]_1 [0]),
        .A1(\gpr1.dout_i_reg[0]_1 [1]),
        .A2(\gpr1.dout_i_reg[0]_1 [2]),
        .A3(\gpr1.dout_i_reg[0]_1 [3]),
        .A4(\gpr1.dout_i_reg[0]_1 [4]),
        .A5(\gpr1.dout_i_reg[0]_1 [5]),
        .D(din[255]),
        .DPO(RAM_reg_0_63_255_255_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_0_63_255_255_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M RAM_reg_0_63_27_29
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[27]),
        .DIB(din[28]),
        .DIC(din[29]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_27_29_n_0),
        .DOB(RAM_reg_0_63_27_29_n_1),
        .DOC(RAM_reg_0_63_27_29_n_2),
        .DOD(NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M RAM_reg_0_63_30_32
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[30]),
        .DIB(din[31]),
        .DIC(din[32]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_30_32_n_0),
        .DOB(RAM_reg_0_63_30_32_n_1),
        .DOC(RAM_reg_0_63_30_32_n_2),
        .DOD(NLW_RAM_reg_0_63_30_32_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M RAM_reg_0_63_33_35
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[33]),
        .DIB(din[34]),
        .DIC(din[35]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_33_35_n_0),
        .DOB(RAM_reg_0_63_33_35_n_1),
        .DOC(RAM_reg_0_63_33_35_n_2),
        .DOD(NLW_RAM_reg_0_63_33_35_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M RAM_reg_0_63_36_38
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[36]),
        .DIB(din[37]),
        .DIC(din[38]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_36_38_n_0),
        .DOB(RAM_reg_0_63_36_38_n_1),
        .DOC(RAM_reg_0_63_36_38_n_2),
        .DOD(NLW_RAM_reg_0_63_36_38_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M RAM_reg_0_63_39_41
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[39]),
        .DIB(din[40]),
        .DIC(din[41]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_39_41_n_0),
        .DOB(RAM_reg_0_63_39_41_n_1),
        .DOC(RAM_reg_0_63_39_41_n_2),
        .DOD(NLW_RAM_reg_0_63_39_41_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_0_63_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_3_5_n_0),
        .DOB(RAM_reg_0_63_3_5_n_1),
        .DOC(RAM_reg_0_63_3_5_n_2),
        .DOD(NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M RAM_reg_0_63_42_44
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[42]),
        .DIB(din[43]),
        .DIC(din[44]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_42_44_n_0),
        .DOB(RAM_reg_0_63_42_44_n_1),
        .DOC(RAM_reg_0_63_42_44_n_2),
        .DOD(NLW_RAM_reg_0_63_42_44_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "47" *) 
  RAM64M RAM_reg_0_63_45_47
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[45]),
        .DIB(din[46]),
        .DIC(din[47]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_45_47_n_0),
        .DOB(RAM_reg_0_63_45_47_n_1),
        .DOC(RAM_reg_0_63_45_47_n_2),
        .DOD(NLW_RAM_reg_0_63_45_47_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "50" *) 
  RAM64M RAM_reg_0_63_48_50
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[48]),
        .DIB(din[49]),
        .DIC(din[50]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_48_50_n_0),
        .DOB(RAM_reg_0_63_48_50_n_1),
        .DOC(RAM_reg_0_63_48_50_n_2),
        .DOD(NLW_RAM_reg_0_63_48_50_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "53" *) 
  RAM64M RAM_reg_0_63_51_53
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[51]),
        .DIB(din[52]),
        .DIC(din[53]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_51_53_n_0),
        .DOB(RAM_reg_0_63_51_53_n_1),
        .DOC(RAM_reg_0_63_51_53_n_2),
        .DOD(NLW_RAM_reg_0_63_51_53_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "56" *) 
  RAM64M RAM_reg_0_63_54_56
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[54]),
        .DIB(din[55]),
        .DIC(din[56]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_54_56_n_0),
        .DOB(RAM_reg_0_63_54_56_n_1),
        .DOC(RAM_reg_0_63_54_56_n_2),
        .DOD(NLW_RAM_reg_0_63_54_56_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "59" *) 
  RAM64M RAM_reg_0_63_57_59
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[57]),
        .DIB(din[58]),
        .DIC(din[59]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_57_59_n_0),
        .DOB(RAM_reg_0_63_57_59_n_1),
        .DOC(RAM_reg_0_63_57_59_n_2),
        .DOD(NLW_RAM_reg_0_63_57_59_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "62" *) 
  RAM64M RAM_reg_0_63_60_62
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[60]),
        .DIB(din[61]),
        .DIC(din[62]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_60_62_n_0),
        .DOB(RAM_reg_0_63_60_62_n_1),
        .DOC(RAM_reg_0_63_60_62_n_2),
        .DOD(NLW_RAM_reg_0_63_60_62_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "65" *) 
  RAM64M RAM_reg_0_63_63_65
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[63]),
        .DIB(din[64]),
        .DIC(din[65]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_63_65_n_0),
        .DOB(RAM_reg_0_63_63_65_n_1),
        .DOC(RAM_reg_0_63_63_65_n_2),
        .DOD(NLW_RAM_reg_0_63_63_65_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "66" *) 
  (* ram_slice_end = "68" *) 
  RAM64M RAM_reg_0_63_66_68
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[66]),
        .DIB(din[67]),
        .DIC(din[68]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_66_68_n_0),
        .DOB(RAM_reg_0_63_66_68_n_1),
        .DOC(RAM_reg_0_63_66_68_n_2),
        .DOD(NLW_RAM_reg_0_63_66_68_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "69" *) 
  (* ram_slice_end = "71" *) 
  RAM64M RAM_reg_0_63_69_71
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[69]),
        .DIB(din[70]),
        .DIC(din[71]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_69_71_n_0),
        .DOB(RAM_reg_0_63_69_71_n_1),
        .DOC(RAM_reg_0_63_69_71_n_2),
        .DOD(NLW_RAM_reg_0_63_69_71_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_0_63_6_8
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_6_8_n_0),
        .DOB(RAM_reg_0_63_6_8_n_1),
        .DOC(RAM_reg_0_63_6_8_n_2),
        .DOD(NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "74" *) 
  RAM64M RAM_reg_0_63_72_74
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[72]),
        .DIB(din[73]),
        .DIC(din[74]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_72_74_n_0),
        .DOB(RAM_reg_0_63_72_74_n_1),
        .DOC(RAM_reg_0_63_72_74_n_2),
        .DOD(NLW_RAM_reg_0_63_72_74_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "75" *) 
  (* ram_slice_end = "77" *) 
  RAM64M RAM_reg_0_63_75_77
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[75]),
        .DIB(din[76]),
        .DIC(din[77]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_75_77_n_0),
        .DOB(RAM_reg_0_63_75_77_n_1),
        .DOC(RAM_reg_0_63_75_77_n_2),
        .DOD(NLW_RAM_reg_0_63_75_77_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "78" *) 
  (* ram_slice_end = "80" *) 
  RAM64M RAM_reg_0_63_78_80
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[78]),
        .DIB(din[79]),
        .DIC(din[80]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_78_80_n_0),
        .DOB(RAM_reg_0_63_78_80_n_1),
        .DOC(RAM_reg_0_63_78_80_n_2),
        .DOD(NLW_RAM_reg_0_63_78_80_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "81" *) 
  (* ram_slice_end = "83" *) 
  RAM64M RAM_reg_0_63_81_83
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[81]),
        .DIB(din[82]),
        .DIC(din[83]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_81_83_n_0),
        .DOB(RAM_reg_0_63_81_83_n_1),
        .DOC(RAM_reg_0_63_81_83_n_2),
        .DOD(NLW_RAM_reg_0_63_81_83_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "84" *) 
  (* ram_slice_end = "86" *) 
  RAM64M RAM_reg_0_63_84_86
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[84]),
        .DIB(din[85]),
        .DIC(din[86]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_84_86_n_0),
        .DOB(RAM_reg_0_63_84_86_n_1),
        .DOC(RAM_reg_0_63_84_86_n_2),
        .DOD(NLW_RAM_reg_0_63_84_86_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "87" *) 
  (* ram_slice_end = "89" *) 
  RAM64M RAM_reg_0_63_87_89
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[87]),
        .DIB(din[88]),
        .DIC(din[89]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_87_89_n_0),
        .DOB(RAM_reg_0_63_87_89_n_1),
        .DOC(RAM_reg_0_63_87_89_n_2),
        .DOD(NLW_RAM_reg_0_63_87_89_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "90" *) 
  (* ram_slice_end = "92" *) 
  RAM64M RAM_reg_0_63_90_92
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[90]),
        .DIB(din[91]),
        .DIC(din[92]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_90_92_n_0),
        .DOB(RAM_reg_0_63_90_92_n_1),
        .DOC(RAM_reg_0_63_90_92_n_2),
        .DOD(NLW_RAM_reg_0_63_90_92_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "93" *) 
  (* ram_slice_end = "95" *) 
  RAM64M RAM_reg_0_63_93_95
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[93]),
        .DIB(din[94]),
        .DIC(din[95]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_93_95_n_0),
        .DOB(RAM_reg_0_63_93_95_n_1),
        .DOC(RAM_reg_0_63_93_95_n_2),
        .DOD(NLW_RAM_reg_0_63_93_95_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "96" *) 
  (* ram_slice_end = "98" *) 
  RAM64M RAM_reg_0_63_96_98
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[96]),
        .DIB(din[97]),
        .DIC(din[98]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_96_98_n_0),
        .DOB(RAM_reg_0_63_96_98_n_1),
        .DOC(RAM_reg_0_63_96_98_n_2),
        .DOD(NLW_RAM_reg_0_63_96_98_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "99" *) 
  (* ram_slice_end = "101" *) 
  RAM64M RAM_reg_0_63_99_101
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[99]),
        .DIB(din[100]),
        .DIC(din[101]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_99_101_n_0),
        .DOB(RAM_reg_0_63_99_101_n_1),
        .DOC(RAM_reg_0_63_99_101_n_2),
        .DOD(NLW_RAM_reg_0_63_99_101_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_0_63_9_11
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_9_11_n_0),
        .DOB(RAM_reg_0_63_9_11_n_1),
        .DOC(RAM_reg_0_63_9_11_n_2),
        .DOD(NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_64_127_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_0_2_n_0),
        .DOB(RAM_reg_64_127_0_2_n_1),
        .DOC(RAM_reg_64_127_0_2_n_2),
        .DOD(NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "102" *) 
  (* ram_slice_end = "104" *) 
  RAM64M RAM_reg_64_127_102_104
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[102]),
        .DIB(din[103]),
        .DIC(din[104]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_102_104_n_0),
        .DOB(RAM_reg_64_127_102_104_n_1),
        .DOC(RAM_reg_64_127_102_104_n_2),
        .DOD(NLW_RAM_reg_64_127_102_104_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "105" *) 
  (* ram_slice_end = "107" *) 
  RAM64M RAM_reg_64_127_105_107
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[105]),
        .DIB(din[106]),
        .DIC(din[107]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_105_107_n_0),
        .DOB(RAM_reg_64_127_105_107_n_1),
        .DOC(RAM_reg_64_127_105_107_n_2),
        .DOD(NLW_RAM_reg_64_127_105_107_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "110" *) 
  RAM64M RAM_reg_64_127_108_110
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[108]),
        .DIB(din[109]),
        .DIC(din[110]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_108_110_n_0),
        .DOB(RAM_reg_64_127_108_110_n_1),
        .DOC(RAM_reg_64_127_108_110_n_2),
        .DOD(NLW_RAM_reg_64_127_108_110_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "111" *) 
  (* ram_slice_end = "113" *) 
  RAM64M RAM_reg_64_127_111_113
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[111]),
        .DIB(din[112]),
        .DIC(din[113]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_111_113_n_0),
        .DOB(RAM_reg_64_127_111_113_n_1),
        .DOC(RAM_reg_64_127_111_113_n_2),
        .DOD(NLW_RAM_reg_64_127_111_113_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "114" *) 
  (* ram_slice_end = "116" *) 
  RAM64M RAM_reg_64_127_114_116
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[114]),
        .DIB(din[115]),
        .DIC(din[116]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_114_116_n_0),
        .DOB(RAM_reg_64_127_114_116_n_1),
        .DOC(RAM_reg_64_127_114_116_n_2),
        .DOD(NLW_RAM_reg_64_127_114_116_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "117" *) 
  (* ram_slice_end = "119" *) 
  RAM64M RAM_reg_64_127_117_119
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[117]),
        .DIB(din[118]),
        .DIC(din[119]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_117_119_n_0),
        .DOB(RAM_reg_64_127_117_119_n_1),
        .DOC(RAM_reg_64_127_117_119_n_2),
        .DOD(NLW_RAM_reg_64_127_117_119_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "120" *) 
  (* ram_slice_end = "122" *) 
  RAM64M RAM_reg_64_127_120_122
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[120]),
        .DIB(din[121]),
        .DIC(din[122]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_120_122_n_0),
        .DOB(RAM_reg_64_127_120_122_n_1),
        .DOC(RAM_reg_64_127_120_122_n_2),
        .DOD(NLW_RAM_reg_64_127_120_122_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "123" *) 
  (* ram_slice_end = "125" *) 
  RAM64M RAM_reg_64_127_123_125
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[123]),
        .DIB(din[124]),
        .DIC(din[125]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_123_125_n_0),
        .DOB(RAM_reg_64_127_123_125_n_1),
        .DOC(RAM_reg_64_127_123_125_n_2),
        .DOD(NLW_RAM_reg_64_127_123_125_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "126" *) 
  (* ram_slice_end = "128" *) 
  RAM64M RAM_reg_64_127_126_128
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[126]),
        .DIB(din[127]),
        .DIC(din[128]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_126_128_n_0),
        .DOB(RAM_reg_64_127_126_128_n_1),
        .DOC(RAM_reg_64_127_126_128_n_2),
        .DOD(NLW_RAM_reg_64_127_126_128_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "129" *) 
  (* ram_slice_end = "131" *) 
  RAM64M RAM_reg_64_127_129_131
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[129]),
        .DIB(din[130]),
        .DIC(din[131]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_129_131_n_0),
        .DOB(RAM_reg_64_127_129_131_n_1),
        .DOC(RAM_reg_64_127_129_131_n_2),
        .DOD(NLW_RAM_reg_64_127_129_131_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M RAM_reg_64_127_12_14
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_12_14_n_0),
        .DOB(RAM_reg_64_127_12_14_n_1),
        .DOC(RAM_reg_64_127_12_14_n_2),
        .DOD(NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "132" *) 
  (* ram_slice_end = "134" *) 
  RAM64M RAM_reg_64_127_132_134
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[132]),
        .DIB(din[133]),
        .DIC(din[134]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_132_134_n_0),
        .DOB(RAM_reg_64_127_132_134_n_1),
        .DOC(RAM_reg_64_127_132_134_n_2),
        .DOD(NLW_RAM_reg_64_127_132_134_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "135" *) 
  (* ram_slice_end = "137" *) 
  RAM64M RAM_reg_64_127_135_137
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[135]),
        .DIB(din[136]),
        .DIC(din[137]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_135_137_n_0),
        .DOB(RAM_reg_64_127_135_137_n_1),
        .DOC(RAM_reg_64_127_135_137_n_2),
        .DOD(NLW_RAM_reg_64_127_135_137_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "138" *) 
  (* ram_slice_end = "140" *) 
  RAM64M RAM_reg_64_127_138_140
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[138]),
        .DIB(din[139]),
        .DIC(din[140]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_138_140_n_0),
        .DOB(RAM_reg_64_127_138_140_n_1),
        .DOC(RAM_reg_64_127_138_140_n_2),
        .DOD(NLW_RAM_reg_64_127_138_140_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "141" *) 
  (* ram_slice_end = "143" *) 
  RAM64M RAM_reg_64_127_141_143
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[141]),
        .DIB(din[142]),
        .DIC(din[143]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_141_143_n_0),
        .DOB(RAM_reg_64_127_141_143_n_1),
        .DOC(RAM_reg_64_127_141_143_n_2),
        .DOD(NLW_RAM_reg_64_127_141_143_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "146" *) 
  RAM64M RAM_reg_64_127_144_146
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[144]),
        .DIB(din[145]),
        .DIC(din[146]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_144_146_n_0),
        .DOB(RAM_reg_64_127_144_146_n_1),
        .DOC(RAM_reg_64_127_144_146_n_2),
        .DOD(NLW_RAM_reg_64_127_144_146_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "147" *) 
  (* ram_slice_end = "149" *) 
  RAM64M RAM_reg_64_127_147_149
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[147]),
        .DIB(din[148]),
        .DIC(din[149]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_147_149_n_0),
        .DOB(RAM_reg_64_127_147_149_n_1),
        .DOC(RAM_reg_64_127_147_149_n_2),
        .DOD(NLW_RAM_reg_64_127_147_149_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "150" *) 
  (* ram_slice_end = "152" *) 
  RAM64M RAM_reg_64_127_150_152
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[150]),
        .DIB(din[151]),
        .DIC(din[152]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_150_152_n_0),
        .DOB(RAM_reg_64_127_150_152_n_1),
        .DOC(RAM_reg_64_127_150_152_n_2),
        .DOD(NLW_RAM_reg_64_127_150_152_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "153" *) 
  (* ram_slice_end = "155" *) 
  RAM64M RAM_reg_64_127_153_155
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[153]),
        .DIB(din[154]),
        .DIC(din[155]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_153_155_n_0),
        .DOB(RAM_reg_64_127_153_155_n_1),
        .DOC(RAM_reg_64_127_153_155_n_2),
        .DOD(NLW_RAM_reg_64_127_153_155_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "156" *) 
  (* ram_slice_end = "158" *) 
  RAM64M RAM_reg_64_127_156_158
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[156]),
        .DIB(din[157]),
        .DIC(din[158]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_156_158_n_0),
        .DOB(RAM_reg_64_127_156_158_n_1),
        .DOC(RAM_reg_64_127_156_158_n_2),
        .DOD(NLW_RAM_reg_64_127_156_158_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "159" *) 
  (* ram_slice_end = "161" *) 
  RAM64M RAM_reg_64_127_159_161
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[159]),
        .DIB(din[160]),
        .DIC(din[161]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_159_161_n_0),
        .DOB(RAM_reg_64_127_159_161_n_1),
        .DOC(RAM_reg_64_127_159_161_n_2),
        .DOD(NLW_RAM_reg_64_127_159_161_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M RAM_reg_64_127_15_17
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[15]),
        .DIB(din[16]),
        .DIC(din[17]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_15_17_n_0),
        .DOB(RAM_reg_64_127_15_17_n_1),
        .DOC(RAM_reg_64_127_15_17_n_2),
        .DOD(NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "162" *) 
  (* ram_slice_end = "164" *) 
  RAM64M RAM_reg_64_127_162_164
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[162]),
        .DIB(din[163]),
        .DIC(din[164]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_162_164_n_0),
        .DOB(RAM_reg_64_127_162_164_n_1),
        .DOC(RAM_reg_64_127_162_164_n_2),
        .DOD(NLW_RAM_reg_64_127_162_164_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "165" *) 
  (* ram_slice_end = "167" *) 
  RAM64M RAM_reg_64_127_165_167
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[165]),
        .DIB(din[166]),
        .DIC(din[167]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_165_167_n_0),
        .DOB(RAM_reg_64_127_165_167_n_1),
        .DOC(RAM_reg_64_127_165_167_n_2),
        .DOD(NLW_RAM_reg_64_127_165_167_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "168" *) 
  (* ram_slice_end = "170" *) 
  RAM64M RAM_reg_64_127_168_170
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[168]),
        .DIB(din[169]),
        .DIC(din[170]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_168_170_n_0),
        .DOB(RAM_reg_64_127_168_170_n_1),
        .DOC(RAM_reg_64_127_168_170_n_2),
        .DOD(NLW_RAM_reg_64_127_168_170_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "171" *) 
  (* ram_slice_end = "173" *) 
  RAM64M RAM_reg_64_127_171_173
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[171]),
        .DIB(din[172]),
        .DIC(din[173]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_171_173_n_0),
        .DOB(RAM_reg_64_127_171_173_n_1),
        .DOC(RAM_reg_64_127_171_173_n_2),
        .DOD(NLW_RAM_reg_64_127_171_173_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "174" *) 
  (* ram_slice_end = "176" *) 
  RAM64M RAM_reg_64_127_174_176
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[174]),
        .DIB(din[175]),
        .DIC(din[176]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_174_176_n_0),
        .DOB(RAM_reg_64_127_174_176_n_1),
        .DOC(RAM_reg_64_127_174_176_n_2),
        .DOD(NLW_RAM_reg_64_127_174_176_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "177" *) 
  (* ram_slice_end = "179" *) 
  RAM64M RAM_reg_64_127_177_179
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[177]),
        .DIB(din[178]),
        .DIC(din[179]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_177_179_n_0),
        .DOB(RAM_reg_64_127_177_179_n_1),
        .DOC(RAM_reg_64_127_177_179_n_2),
        .DOD(NLW_RAM_reg_64_127_177_179_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "180" *) 
  (* ram_slice_end = "182" *) 
  RAM64M RAM_reg_64_127_180_182
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[180]),
        .DIB(din[181]),
        .DIC(din[182]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_180_182_n_0),
        .DOB(RAM_reg_64_127_180_182_n_1),
        .DOC(RAM_reg_64_127_180_182_n_2),
        .DOD(NLW_RAM_reg_64_127_180_182_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "183" *) 
  (* ram_slice_end = "185" *) 
  RAM64M RAM_reg_64_127_183_185
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[183]),
        .DIB(din[184]),
        .DIC(din[185]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_183_185_n_0),
        .DOB(RAM_reg_64_127_183_185_n_1),
        .DOC(RAM_reg_64_127_183_185_n_2),
        .DOD(NLW_RAM_reg_64_127_183_185_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "186" *) 
  (* ram_slice_end = "188" *) 
  RAM64M RAM_reg_64_127_186_188
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[186]),
        .DIB(din[187]),
        .DIC(din[188]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_186_188_n_0),
        .DOB(RAM_reg_64_127_186_188_n_1),
        .DOC(RAM_reg_64_127_186_188_n_2),
        .DOD(NLW_RAM_reg_64_127_186_188_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "189" *) 
  (* ram_slice_end = "191" *) 
  RAM64M RAM_reg_64_127_189_191
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[189]),
        .DIB(din[190]),
        .DIC(din[191]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_189_191_n_0),
        .DOB(RAM_reg_64_127_189_191_n_1),
        .DOC(RAM_reg_64_127_189_191_n_2),
        .DOD(NLW_RAM_reg_64_127_189_191_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M RAM_reg_64_127_18_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[18]),
        .DIB(din[19]),
        .DIC(din[20]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_18_20_n_0),
        .DOB(RAM_reg_64_127_18_20_n_1),
        .DOC(RAM_reg_64_127_18_20_n_2),
        .DOD(NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "192" *) 
  (* ram_slice_end = "194" *) 
  RAM64M RAM_reg_64_127_192_194
       (.ADDRA(\gpr1.dout_i_reg[192]_0 ),
        .ADDRB(\gpr1.dout_i_reg[192]_0 ),
        .ADDRC(\gpr1.dout_i_reg[192]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[192]),
        .DIB(din[193]),
        .DIC(din[194]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_192_194_n_0),
        .DOB(RAM_reg_64_127_192_194_n_1),
        .DOC(RAM_reg_64_127_192_194_n_2),
        .DOD(NLW_RAM_reg_64_127_192_194_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "195" *) 
  (* ram_slice_end = "197" *) 
  RAM64M RAM_reg_64_127_195_197
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[195]),
        .DIB(din[196]),
        .DIC(din[197]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_195_197_n_0),
        .DOB(RAM_reg_64_127_195_197_n_1),
        .DOC(RAM_reg_64_127_195_197_n_2),
        .DOD(NLW_RAM_reg_64_127_195_197_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "198" *) 
  (* ram_slice_end = "200" *) 
  RAM64M RAM_reg_64_127_198_200
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[198]),
        .DIB(din[199]),
        .DIC(din[200]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_198_200_n_0),
        .DOB(RAM_reg_64_127_198_200_n_1),
        .DOC(RAM_reg_64_127_198_200_n_2),
        .DOD(NLW_RAM_reg_64_127_198_200_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "201" *) 
  (* ram_slice_end = "203" *) 
  RAM64M RAM_reg_64_127_201_203
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[201]),
        .DIB(din[202]),
        .DIC(din[203]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_201_203_n_0),
        .DOB(RAM_reg_64_127_201_203_n_1),
        .DOC(RAM_reg_64_127_201_203_n_2),
        .DOD(NLW_RAM_reg_64_127_201_203_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "204" *) 
  (* ram_slice_end = "206" *) 
  RAM64M RAM_reg_64_127_204_206
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[204]),
        .DIB(din[205]),
        .DIC(din[206]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_204_206_n_0),
        .DOB(RAM_reg_64_127_204_206_n_1),
        .DOC(RAM_reg_64_127_204_206_n_2),
        .DOD(NLW_RAM_reg_64_127_204_206_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "207" *) 
  (* ram_slice_end = "209" *) 
  RAM64M RAM_reg_64_127_207_209
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[207]),
        .DIB(din[208]),
        .DIC(din[209]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_207_209_n_0),
        .DOB(RAM_reg_64_127_207_209_n_1),
        .DOC(RAM_reg_64_127_207_209_n_2),
        .DOD(NLW_RAM_reg_64_127_207_209_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "210" *) 
  (* ram_slice_end = "212" *) 
  RAM64M RAM_reg_64_127_210_212
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[210]),
        .DIB(din[211]),
        .DIC(din[212]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_210_212_n_0),
        .DOB(RAM_reg_64_127_210_212_n_1),
        .DOC(RAM_reg_64_127_210_212_n_2),
        .DOD(NLW_RAM_reg_64_127_210_212_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "213" *) 
  (* ram_slice_end = "215" *) 
  RAM64M RAM_reg_64_127_213_215
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[213]),
        .DIB(din[214]),
        .DIC(din[215]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_213_215_n_0),
        .DOB(RAM_reg_64_127_213_215_n_1),
        .DOC(RAM_reg_64_127_213_215_n_2),
        .DOD(NLW_RAM_reg_64_127_213_215_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "218" *) 
  RAM64M RAM_reg_64_127_216_218
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[216]),
        .DIB(din[217]),
        .DIC(din[218]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_216_218_n_0),
        .DOB(RAM_reg_64_127_216_218_n_1),
        .DOC(RAM_reg_64_127_216_218_n_2),
        .DOD(NLW_RAM_reg_64_127_216_218_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "219" *) 
  (* ram_slice_end = "221" *) 
  RAM64M RAM_reg_64_127_219_221
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[219]),
        .DIB(din[220]),
        .DIC(din[221]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_219_221_n_0),
        .DOB(RAM_reg_64_127_219_221_n_1),
        .DOC(RAM_reg_64_127_219_221_n_2),
        .DOD(NLW_RAM_reg_64_127_219_221_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M RAM_reg_64_127_21_23
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_21_23_n_0),
        .DOB(RAM_reg_64_127_21_23_n_1),
        .DOC(RAM_reg_64_127_21_23_n_2),
        .DOD(NLW_RAM_reg_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "222" *) 
  (* ram_slice_end = "224" *) 
  RAM64M RAM_reg_64_127_222_224
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[222]),
        .DIB(din[223]),
        .DIC(din[224]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_222_224_n_0),
        .DOB(RAM_reg_64_127_222_224_n_1),
        .DOC(RAM_reg_64_127_222_224_n_2),
        .DOD(NLW_RAM_reg_64_127_222_224_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "225" *) 
  (* ram_slice_end = "227" *) 
  RAM64M RAM_reg_64_127_225_227
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[225]),
        .DIB(din[226]),
        .DIC(din[227]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_225_227_n_0),
        .DOB(RAM_reg_64_127_225_227_n_1),
        .DOC(RAM_reg_64_127_225_227_n_2),
        .DOD(NLW_RAM_reg_64_127_225_227_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "228" *) 
  (* ram_slice_end = "230" *) 
  RAM64M RAM_reg_64_127_228_230
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[228]),
        .DIB(din[229]),
        .DIC(din[230]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_228_230_n_0),
        .DOB(RAM_reg_64_127_228_230_n_1),
        .DOC(RAM_reg_64_127_228_230_n_2),
        .DOD(NLW_RAM_reg_64_127_228_230_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "231" *) 
  (* ram_slice_end = "233" *) 
  RAM64M RAM_reg_64_127_231_233
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[231]),
        .DIB(din[232]),
        .DIC(din[233]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_231_233_n_0),
        .DOB(RAM_reg_64_127_231_233_n_1),
        .DOC(RAM_reg_64_127_231_233_n_2),
        .DOD(NLW_RAM_reg_64_127_231_233_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "234" *) 
  (* ram_slice_end = "236" *) 
  RAM64M RAM_reg_64_127_234_236
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[234]),
        .DIB(din[235]),
        .DIC(din[236]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_234_236_n_0),
        .DOB(RAM_reg_64_127_234_236_n_1),
        .DOC(RAM_reg_64_127_234_236_n_2),
        .DOD(NLW_RAM_reg_64_127_234_236_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "237" *) 
  (* ram_slice_end = "239" *) 
  RAM64M RAM_reg_64_127_237_239
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[237]),
        .DIB(din[238]),
        .DIC(din[239]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_237_239_n_0),
        .DOB(RAM_reg_64_127_237_239_n_1),
        .DOC(RAM_reg_64_127_237_239_n_2),
        .DOD(NLW_RAM_reg_64_127_237_239_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "240" *) 
  (* ram_slice_end = "242" *) 
  RAM64M RAM_reg_64_127_240_242
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[240]),
        .DIB(din[241]),
        .DIC(din[242]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_240_242_n_0),
        .DOB(RAM_reg_64_127_240_242_n_1),
        .DOC(RAM_reg_64_127_240_242_n_2),
        .DOD(NLW_RAM_reg_64_127_240_242_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "243" *) 
  (* ram_slice_end = "245" *) 
  RAM64M RAM_reg_64_127_243_245
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[243]),
        .DIB(din[244]),
        .DIC(din[245]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_243_245_n_0),
        .DOB(RAM_reg_64_127_243_245_n_1),
        .DOC(RAM_reg_64_127_243_245_n_2),
        .DOD(NLW_RAM_reg_64_127_243_245_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "246" *) 
  (* ram_slice_end = "248" *) 
  RAM64M RAM_reg_64_127_246_248
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[246]),
        .DIB(din[247]),
        .DIC(din[248]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_246_248_n_0),
        .DOB(RAM_reg_64_127_246_248_n_1),
        .DOC(RAM_reg_64_127_246_248_n_2),
        .DOD(NLW_RAM_reg_64_127_246_248_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "249" *) 
  (* ram_slice_end = "251" *) 
  RAM64M RAM_reg_64_127_249_251
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[249]),
        .DIB(din[250]),
        .DIC(din[251]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_249_251_n_0),
        .DOB(RAM_reg_64_127_249_251_n_1),
        .DOC(RAM_reg_64_127_249_251_n_2),
        .DOD(NLW_RAM_reg_64_127_249_251_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M RAM_reg_64_127_24_26
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[24]),
        .DIB(din[25]),
        .DIC(din[26]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_24_26_n_0),
        .DOB(RAM_reg_64_127_24_26_n_1),
        .DOC(RAM_reg_64_127_24_26_n_2),
        .DOD(NLW_RAM_reg_64_127_24_26_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "252" *) 
  (* ram_slice_end = "254" *) 
  RAM64M RAM_reg_64_127_252_254
       (.ADDRA(\gpr1.dout_i_reg[252]_0 ),
        .ADDRB(\gpr1.dout_i_reg[252]_0 ),
        .ADDRC(\gpr1.dout_i_reg[252]_0 ),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[252]),
        .DIB(din[253]),
        .DIC(din[254]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_252_254_n_0),
        .DOB(RAM_reg_64_127_252_254_n_1),
        .DOC(RAM_reg_64_127_252_254_n_2),
        .DOD(NLW_RAM_reg_64_127_252_254_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "255" *) 
  (* ram_slice_end = "255" *) 
  RAM64X1D RAM_reg_64_127_255_255
       (.A0(\gpr1.dout_i_reg[0]_1 [0]),
        .A1(\gpr1.dout_i_reg[0]_1 [1]),
        .A2(\gpr1.dout_i_reg[0]_1 [2]),
        .A3(\gpr1.dout_i_reg[0]_1 [3]),
        .A4(\gpr1.dout_i_reg[0]_1 [4]),
        .A5(\gpr1.dout_i_reg[0]_1 [5]),
        .D(din[255]),
        .DPO(RAM_reg_64_127_255_255_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_64_127_255_255_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M RAM_reg_64_127_27_29
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[27]),
        .DIB(din[28]),
        .DIC(din[29]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_27_29_n_0),
        .DOB(RAM_reg_64_127_27_29_n_1),
        .DOC(RAM_reg_64_127_27_29_n_2),
        .DOD(NLW_RAM_reg_64_127_27_29_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M RAM_reg_64_127_30_32
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[30]),
        .DIB(din[31]),
        .DIC(din[32]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_30_32_n_0),
        .DOB(RAM_reg_64_127_30_32_n_1),
        .DOC(RAM_reg_64_127_30_32_n_2),
        .DOD(NLW_RAM_reg_64_127_30_32_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M RAM_reg_64_127_33_35
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[33]),
        .DIB(din[34]),
        .DIC(din[35]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_33_35_n_0),
        .DOB(RAM_reg_64_127_33_35_n_1),
        .DOC(RAM_reg_64_127_33_35_n_2),
        .DOD(NLW_RAM_reg_64_127_33_35_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M RAM_reg_64_127_36_38
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[36]),
        .DIB(din[37]),
        .DIC(din[38]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_36_38_n_0),
        .DOB(RAM_reg_64_127_36_38_n_1),
        .DOC(RAM_reg_64_127_36_38_n_2),
        .DOD(NLW_RAM_reg_64_127_36_38_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M RAM_reg_64_127_39_41
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[39]),
        .DIB(din[40]),
        .DIC(din[41]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_39_41_n_0),
        .DOB(RAM_reg_64_127_39_41_n_1),
        .DOC(RAM_reg_64_127_39_41_n_2),
        .DOD(NLW_RAM_reg_64_127_39_41_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_64_127_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_3_5_n_0),
        .DOB(RAM_reg_64_127_3_5_n_1),
        .DOC(RAM_reg_64_127_3_5_n_2),
        .DOD(NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M RAM_reg_64_127_42_44
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[42]),
        .DIB(din[43]),
        .DIC(din[44]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_42_44_n_0),
        .DOB(RAM_reg_64_127_42_44_n_1),
        .DOC(RAM_reg_64_127_42_44_n_2),
        .DOD(NLW_RAM_reg_64_127_42_44_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "47" *) 
  RAM64M RAM_reg_64_127_45_47
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[45]),
        .DIB(din[46]),
        .DIC(din[47]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_45_47_n_0),
        .DOB(RAM_reg_64_127_45_47_n_1),
        .DOC(RAM_reg_64_127_45_47_n_2),
        .DOD(NLW_RAM_reg_64_127_45_47_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "50" *) 
  RAM64M RAM_reg_64_127_48_50
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[48]),
        .DIB(din[49]),
        .DIC(din[50]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_48_50_n_0),
        .DOB(RAM_reg_64_127_48_50_n_1),
        .DOC(RAM_reg_64_127_48_50_n_2),
        .DOD(NLW_RAM_reg_64_127_48_50_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "53" *) 
  RAM64M RAM_reg_64_127_51_53
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[51]),
        .DIB(din[52]),
        .DIC(din[53]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_51_53_n_0),
        .DOB(RAM_reg_64_127_51_53_n_1),
        .DOC(RAM_reg_64_127_51_53_n_2),
        .DOD(NLW_RAM_reg_64_127_51_53_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "56" *) 
  RAM64M RAM_reg_64_127_54_56
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[54]),
        .DIB(din[55]),
        .DIC(din[56]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_54_56_n_0),
        .DOB(RAM_reg_64_127_54_56_n_1),
        .DOC(RAM_reg_64_127_54_56_n_2),
        .DOD(NLW_RAM_reg_64_127_54_56_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "59" *) 
  RAM64M RAM_reg_64_127_57_59
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[57]),
        .DIB(din[58]),
        .DIC(din[59]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_57_59_n_0),
        .DOB(RAM_reg_64_127_57_59_n_1),
        .DOC(RAM_reg_64_127_57_59_n_2),
        .DOD(NLW_RAM_reg_64_127_57_59_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "62" *) 
  RAM64M RAM_reg_64_127_60_62
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[60]),
        .DIB(din[61]),
        .DIC(din[62]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_60_62_n_0),
        .DOB(RAM_reg_64_127_60_62_n_1),
        .DOC(RAM_reg_64_127_60_62_n_2),
        .DOD(NLW_RAM_reg_64_127_60_62_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "65" *) 
  RAM64M RAM_reg_64_127_63_65
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[63]),
        .DIB(din[64]),
        .DIC(din[65]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_63_65_n_0),
        .DOB(RAM_reg_64_127_63_65_n_1),
        .DOC(RAM_reg_64_127_63_65_n_2),
        .DOD(NLW_RAM_reg_64_127_63_65_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "66" *) 
  (* ram_slice_end = "68" *) 
  RAM64M RAM_reg_64_127_66_68
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[66]),
        .DIB(din[67]),
        .DIC(din[68]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_66_68_n_0),
        .DOB(RAM_reg_64_127_66_68_n_1),
        .DOC(RAM_reg_64_127_66_68_n_2),
        .DOD(NLW_RAM_reg_64_127_66_68_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "69" *) 
  (* ram_slice_end = "71" *) 
  RAM64M RAM_reg_64_127_69_71
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[69]),
        .DIB(din[70]),
        .DIC(din[71]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_69_71_n_0),
        .DOB(RAM_reg_64_127_69_71_n_1),
        .DOC(RAM_reg_64_127_69_71_n_2),
        .DOD(NLW_RAM_reg_64_127_69_71_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_64_127_6_8
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_6_8_n_0),
        .DOB(RAM_reg_64_127_6_8_n_1),
        .DOC(RAM_reg_64_127_6_8_n_2),
        .DOD(NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "74" *) 
  RAM64M RAM_reg_64_127_72_74
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[72]),
        .DIB(din[73]),
        .DIC(din[74]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_72_74_n_0),
        .DOB(RAM_reg_64_127_72_74_n_1),
        .DOC(RAM_reg_64_127_72_74_n_2),
        .DOD(NLW_RAM_reg_64_127_72_74_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "75" *) 
  (* ram_slice_end = "77" *) 
  RAM64M RAM_reg_64_127_75_77
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[75]),
        .DIB(din[76]),
        .DIC(din[77]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_75_77_n_0),
        .DOB(RAM_reg_64_127_75_77_n_1),
        .DOC(RAM_reg_64_127_75_77_n_2),
        .DOD(NLW_RAM_reg_64_127_75_77_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "78" *) 
  (* ram_slice_end = "80" *) 
  RAM64M RAM_reg_64_127_78_80
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[78]),
        .DIB(din[79]),
        .DIC(din[80]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_78_80_n_0),
        .DOB(RAM_reg_64_127_78_80_n_1),
        .DOC(RAM_reg_64_127_78_80_n_2),
        .DOD(NLW_RAM_reg_64_127_78_80_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "81" *) 
  (* ram_slice_end = "83" *) 
  RAM64M RAM_reg_64_127_81_83
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[81]),
        .DIB(din[82]),
        .DIC(din[83]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_81_83_n_0),
        .DOB(RAM_reg_64_127_81_83_n_1),
        .DOC(RAM_reg_64_127_81_83_n_2),
        .DOD(NLW_RAM_reg_64_127_81_83_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "84" *) 
  (* ram_slice_end = "86" *) 
  RAM64M RAM_reg_64_127_84_86
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[84]),
        .DIB(din[85]),
        .DIC(din[86]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_84_86_n_0),
        .DOB(RAM_reg_64_127_84_86_n_1),
        .DOC(RAM_reg_64_127_84_86_n_2),
        .DOD(NLW_RAM_reg_64_127_84_86_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "87" *) 
  (* ram_slice_end = "89" *) 
  RAM64M RAM_reg_64_127_87_89
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[87]),
        .DIB(din[88]),
        .DIC(din[89]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_87_89_n_0),
        .DOB(RAM_reg_64_127_87_89_n_1),
        .DOC(RAM_reg_64_127_87_89_n_2),
        .DOD(NLW_RAM_reg_64_127_87_89_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "90" *) 
  (* ram_slice_end = "92" *) 
  RAM64M RAM_reg_64_127_90_92
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[90]),
        .DIB(din[91]),
        .DIC(din[92]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_90_92_n_0),
        .DOB(RAM_reg_64_127_90_92_n_1),
        .DOC(RAM_reg_64_127_90_92_n_2),
        .DOD(NLW_RAM_reg_64_127_90_92_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "93" *) 
  (* ram_slice_end = "95" *) 
  RAM64M RAM_reg_64_127_93_95
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[93]),
        .DIB(din[94]),
        .DIC(din[95]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_93_95_n_0),
        .DOB(RAM_reg_64_127_93_95_n_1),
        .DOC(RAM_reg_64_127_93_95_n_2),
        .DOD(NLW_RAM_reg_64_127_93_95_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "96" *) 
  (* ram_slice_end = "98" *) 
  RAM64M RAM_reg_64_127_96_98
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[96]),
        .DIB(din[97]),
        .DIC(din[98]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_96_98_n_0),
        .DOB(RAM_reg_64_127_96_98_n_1),
        .DOC(RAM_reg_64_127_96_98_n_2),
        .DOD(NLW_RAM_reg_64_127_96_98_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "99" *) 
  (* ram_slice_end = "101" *) 
  RAM64M RAM_reg_64_127_99_101
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[99]),
        .DIB(din[100]),
        .DIC(din[101]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_99_101_n_0),
        .DOB(RAM_reg_64_127_99_101_n_1),
        .DOC(RAM_reg_64_127_99_101_n_2),
        .DOD(NLW_RAM_reg_64_127_99_101_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_64_127_9_11
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i_reg[0]_1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_9_11_n_0),
        .DOB(RAM_reg_64_127_9_11_n_1),
        .DOC(RAM_reg_64_127_9_11_n_2),
        .DOD(NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i_reg[255]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[0]_i_1 
       (.I0(RAM_reg_64_127_0_2_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_0_2_n_0),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[100]_i_1 
       (.I0(RAM_reg_64_127_99_101_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_99_101_n_1),
        .O(p_0_out[100]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[101]_i_1 
       (.I0(RAM_reg_64_127_99_101_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_99_101_n_2),
        .O(p_0_out[101]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[102]_i_1 
       (.I0(RAM_reg_64_127_102_104_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_102_104_n_0),
        .O(p_0_out[102]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[103]_i_1 
       (.I0(RAM_reg_64_127_102_104_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_102_104_n_1),
        .O(p_0_out[103]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[104]_i_1 
       (.I0(RAM_reg_64_127_102_104_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_102_104_n_2),
        .O(p_0_out[104]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[105]_i_1 
       (.I0(RAM_reg_64_127_105_107_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_105_107_n_0),
        .O(p_0_out[105]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[106]_i_1 
       (.I0(RAM_reg_64_127_105_107_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_105_107_n_1),
        .O(p_0_out[106]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[107]_i_1 
       (.I0(RAM_reg_64_127_105_107_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_105_107_n_2),
        .O(p_0_out[107]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[108]_i_1 
       (.I0(RAM_reg_64_127_108_110_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_108_110_n_0),
        .O(p_0_out[108]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[109]_i_1 
       (.I0(RAM_reg_64_127_108_110_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_108_110_n_1),
        .O(p_0_out[109]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[10]_i_1 
       (.I0(RAM_reg_64_127_9_11_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_9_11_n_1),
        .O(p_0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[110]_i_1 
       (.I0(RAM_reg_64_127_108_110_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_108_110_n_2),
        .O(p_0_out[110]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[111]_i_1 
       (.I0(RAM_reg_64_127_111_113_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_111_113_n_0),
        .O(p_0_out[111]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[112]_i_1 
       (.I0(RAM_reg_64_127_111_113_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_111_113_n_1),
        .O(p_0_out[112]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[113]_i_1 
       (.I0(RAM_reg_64_127_111_113_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_111_113_n_2),
        .O(p_0_out[113]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[114]_i_1 
       (.I0(RAM_reg_64_127_114_116_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_114_116_n_0),
        .O(p_0_out[114]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[115]_i_1 
       (.I0(RAM_reg_64_127_114_116_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_114_116_n_1),
        .O(p_0_out[115]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[116]_i_1 
       (.I0(RAM_reg_64_127_114_116_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_114_116_n_2),
        .O(p_0_out[116]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[117]_i_1 
       (.I0(RAM_reg_64_127_117_119_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_117_119_n_0),
        .O(p_0_out[117]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[118]_i_1 
       (.I0(RAM_reg_64_127_117_119_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_117_119_n_1),
        .O(p_0_out[118]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[119]_i_1 
       (.I0(RAM_reg_64_127_117_119_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_117_119_n_2),
        .O(p_0_out[119]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[11]_i_1 
       (.I0(RAM_reg_64_127_9_11_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_9_11_n_2),
        .O(p_0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[120]_i_1 
       (.I0(RAM_reg_64_127_120_122_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_120_122_n_0),
        .O(p_0_out[120]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[121]_i_1 
       (.I0(RAM_reg_64_127_120_122_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_120_122_n_1),
        .O(p_0_out[121]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[122]_i_1 
       (.I0(RAM_reg_64_127_120_122_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_120_122_n_2),
        .O(p_0_out[122]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[123]_i_1 
       (.I0(RAM_reg_64_127_123_125_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_123_125_n_0),
        .O(p_0_out[123]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[124]_i_1 
       (.I0(RAM_reg_64_127_123_125_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_123_125_n_1),
        .O(p_0_out[124]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[125]_i_1 
       (.I0(RAM_reg_64_127_123_125_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_123_125_n_2),
        .O(p_0_out[125]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[126]_i_1 
       (.I0(RAM_reg_64_127_126_128_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_126_128_n_0),
        .O(p_0_out[126]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[127]_i_1 
       (.I0(RAM_reg_64_127_126_128_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_126_128_n_1),
        .O(p_0_out[127]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[128]_i_1 
       (.I0(RAM_reg_64_127_126_128_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_126_128_n_2),
        .O(p_0_out[128]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[129]_i_1 
       (.I0(RAM_reg_64_127_129_131_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_129_131_n_0),
        .O(p_0_out[129]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[12]_i_1 
       (.I0(RAM_reg_64_127_12_14_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_12_14_n_0),
        .O(p_0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[130]_i_1 
       (.I0(RAM_reg_64_127_129_131_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_129_131_n_1),
        .O(p_0_out[130]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[131]_i_1 
       (.I0(RAM_reg_64_127_129_131_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_129_131_n_2),
        .O(p_0_out[131]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[132]_i_1 
       (.I0(RAM_reg_64_127_132_134_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_132_134_n_0),
        .O(p_0_out[132]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[133]_i_1 
       (.I0(RAM_reg_64_127_132_134_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_132_134_n_1),
        .O(p_0_out[133]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[134]_i_1 
       (.I0(RAM_reg_64_127_132_134_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_132_134_n_2),
        .O(p_0_out[134]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[135]_i_1 
       (.I0(RAM_reg_64_127_135_137_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_135_137_n_0),
        .O(p_0_out[135]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[136]_i_1 
       (.I0(RAM_reg_64_127_135_137_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_135_137_n_1),
        .O(p_0_out[136]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[137]_i_1 
       (.I0(RAM_reg_64_127_135_137_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_135_137_n_2),
        .O(p_0_out[137]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[138]_i_1 
       (.I0(RAM_reg_64_127_138_140_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_138_140_n_0),
        .O(p_0_out[138]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[139]_i_1 
       (.I0(RAM_reg_64_127_138_140_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_138_140_n_1),
        .O(p_0_out[139]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[13]_i_1 
       (.I0(RAM_reg_64_127_12_14_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_12_14_n_1),
        .O(p_0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[140]_i_1 
       (.I0(RAM_reg_64_127_138_140_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_138_140_n_2),
        .O(p_0_out[140]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[141]_i_1 
       (.I0(RAM_reg_64_127_141_143_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_141_143_n_0),
        .O(p_0_out[141]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[142]_i_1 
       (.I0(RAM_reg_64_127_141_143_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_141_143_n_1),
        .O(p_0_out[142]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[143]_i_1 
       (.I0(RAM_reg_64_127_141_143_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_141_143_n_2),
        .O(p_0_out[143]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[144]_i_1 
       (.I0(RAM_reg_64_127_144_146_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_144_146_n_0),
        .O(p_0_out[144]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[145]_i_1 
       (.I0(RAM_reg_64_127_144_146_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_144_146_n_1),
        .O(p_0_out[145]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[146]_i_1 
       (.I0(RAM_reg_64_127_144_146_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_144_146_n_2),
        .O(p_0_out[146]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[147]_i_1 
       (.I0(RAM_reg_64_127_147_149_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_147_149_n_0),
        .O(p_0_out[147]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[148]_i_1 
       (.I0(RAM_reg_64_127_147_149_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_147_149_n_1),
        .O(p_0_out[148]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[149]_i_1 
       (.I0(RAM_reg_64_127_147_149_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_147_149_n_2),
        .O(p_0_out[149]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[14]_i_1 
       (.I0(RAM_reg_64_127_12_14_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_12_14_n_2),
        .O(p_0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[150]_i_1 
       (.I0(RAM_reg_64_127_150_152_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_150_152_n_0),
        .O(p_0_out[150]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[151]_i_1 
       (.I0(RAM_reg_64_127_150_152_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_150_152_n_1),
        .O(p_0_out[151]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[152]_i_1 
       (.I0(RAM_reg_64_127_150_152_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_150_152_n_2),
        .O(p_0_out[152]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[153]_i_1 
       (.I0(RAM_reg_64_127_153_155_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_153_155_n_0),
        .O(p_0_out[153]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[154]_i_1 
       (.I0(RAM_reg_64_127_153_155_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_153_155_n_1),
        .O(p_0_out[154]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[155]_i_1 
       (.I0(RAM_reg_64_127_153_155_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_153_155_n_2),
        .O(p_0_out[155]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[156]_i_1 
       (.I0(RAM_reg_64_127_156_158_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_156_158_n_0),
        .O(p_0_out[156]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[157]_i_1 
       (.I0(RAM_reg_64_127_156_158_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_156_158_n_1),
        .O(p_0_out[157]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[158]_i_1 
       (.I0(RAM_reg_64_127_156_158_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_156_158_n_2),
        .O(p_0_out[158]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[159]_i_1 
       (.I0(RAM_reg_64_127_159_161_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_159_161_n_0),
        .O(p_0_out[159]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[15]_i_1 
       (.I0(RAM_reg_64_127_15_17_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_15_17_n_0),
        .O(p_0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[160]_i_1 
       (.I0(RAM_reg_64_127_159_161_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_159_161_n_1),
        .O(p_0_out[160]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[161]_i_1 
       (.I0(RAM_reg_64_127_159_161_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_159_161_n_2),
        .O(p_0_out[161]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[162]_i_1 
       (.I0(RAM_reg_64_127_162_164_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_162_164_n_0),
        .O(p_0_out[162]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[163]_i_1 
       (.I0(RAM_reg_64_127_162_164_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_162_164_n_1),
        .O(p_0_out[163]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[164]_i_1 
       (.I0(RAM_reg_64_127_162_164_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_162_164_n_2),
        .O(p_0_out[164]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[165]_i_1 
       (.I0(RAM_reg_64_127_165_167_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_165_167_n_0),
        .O(p_0_out[165]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[166]_i_1 
       (.I0(RAM_reg_64_127_165_167_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_165_167_n_1),
        .O(p_0_out[166]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[167]_i_1 
       (.I0(RAM_reg_64_127_165_167_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_165_167_n_2),
        .O(p_0_out[167]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[168]_i_1 
       (.I0(RAM_reg_64_127_168_170_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_168_170_n_0),
        .O(p_0_out[168]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[169]_i_1 
       (.I0(RAM_reg_64_127_168_170_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_168_170_n_1),
        .O(p_0_out[169]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[16]_i_1 
       (.I0(RAM_reg_64_127_15_17_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_15_17_n_1),
        .O(p_0_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[170]_i_1 
       (.I0(RAM_reg_64_127_168_170_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_168_170_n_2),
        .O(p_0_out[170]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[171]_i_1 
       (.I0(RAM_reg_64_127_171_173_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_171_173_n_0),
        .O(p_0_out[171]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[172]_i_1 
       (.I0(RAM_reg_64_127_171_173_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_171_173_n_1),
        .O(p_0_out[172]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[173]_i_1 
       (.I0(RAM_reg_64_127_171_173_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_171_173_n_2),
        .O(p_0_out[173]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[174]_i_1 
       (.I0(RAM_reg_64_127_174_176_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_174_176_n_0),
        .O(p_0_out[174]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[175]_i_1 
       (.I0(RAM_reg_64_127_174_176_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_174_176_n_1),
        .O(p_0_out[175]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[176]_i_1 
       (.I0(RAM_reg_64_127_174_176_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_174_176_n_2),
        .O(p_0_out[176]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[177]_i_1 
       (.I0(RAM_reg_64_127_177_179_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_177_179_n_0),
        .O(p_0_out[177]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[178]_i_1 
       (.I0(RAM_reg_64_127_177_179_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_177_179_n_1),
        .O(p_0_out[178]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[179]_i_1 
       (.I0(RAM_reg_64_127_177_179_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_177_179_n_2),
        .O(p_0_out[179]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[17]_i_1 
       (.I0(RAM_reg_64_127_15_17_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_15_17_n_2),
        .O(p_0_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[180]_i_1 
       (.I0(RAM_reg_64_127_180_182_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_180_182_n_0),
        .O(p_0_out[180]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[181]_i_1 
       (.I0(RAM_reg_64_127_180_182_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_180_182_n_1),
        .O(p_0_out[181]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[182]_i_1 
       (.I0(RAM_reg_64_127_180_182_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_180_182_n_2),
        .O(p_0_out[182]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[183]_i_1 
       (.I0(RAM_reg_64_127_183_185_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_183_185_n_0),
        .O(p_0_out[183]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[184]_i_1 
       (.I0(RAM_reg_64_127_183_185_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_183_185_n_1),
        .O(p_0_out[184]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[185]_i_1 
       (.I0(RAM_reg_64_127_183_185_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_183_185_n_2),
        .O(p_0_out[185]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[186]_i_1 
       (.I0(RAM_reg_64_127_186_188_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_186_188_n_0),
        .O(p_0_out[186]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[187]_i_1 
       (.I0(RAM_reg_64_127_186_188_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_186_188_n_1),
        .O(p_0_out[187]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[188]_i_1 
       (.I0(RAM_reg_64_127_186_188_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_186_188_n_2),
        .O(p_0_out[188]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[189]_i_1 
       (.I0(RAM_reg_64_127_189_191_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_189_191_n_0),
        .O(p_0_out[189]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[18]_i_1 
       (.I0(RAM_reg_64_127_18_20_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_18_20_n_0),
        .O(p_0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[190]_i_1 
       (.I0(RAM_reg_64_127_189_191_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_189_191_n_1),
        .O(p_0_out[190]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[191]_i_1 
       (.I0(RAM_reg_64_127_189_191_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_189_191_n_2),
        .O(p_0_out[191]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[192]_i_1 
       (.I0(RAM_reg_64_127_192_194_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_192_194_n_0),
        .O(p_0_out[192]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[193]_i_1 
       (.I0(RAM_reg_64_127_192_194_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_192_194_n_1),
        .O(p_0_out[193]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[194]_i_1 
       (.I0(RAM_reg_64_127_192_194_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_192_194_n_2),
        .O(p_0_out[194]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[195]_i_1 
       (.I0(RAM_reg_64_127_195_197_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_195_197_n_0),
        .O(p_0_out[195]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[196]_i_1 
       (.I0(RAM_reg_64_127_195_197_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_195_197_n_1),
        .O(p_0_out[196]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[197]_i_1 
       (.I0(RAM_reg_64_127_195_197_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_195_197_n_2),
        .O(p_0_out[197]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[198]_i_1 
       (.I0(RAM_reg_64_127_198_200_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_198_200_n_0),
        .O(p_0_out[198]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[199]_i_1 
       (.I0(RAM_reg_64_127_198_200_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_198_200_n_1),
        .O(p_0_out[199]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[19]_i_1 
       (.I0(RAM_reg_64_127_18_20_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_18_20_n_1),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[1]_i_1 
       (.I0(RAM_reg_64_127_0_2_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_0_2_n_1),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[200]_i_1 
       (.I0(RAM_reg_64_127_198_200_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_198_200_n_2),
        .O(p_0_out[200]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[201]_i_1 
       (.I0(RAM_reg_64_127_201_203_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_201_203_n_0),
        .O(p_0_out[201]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[202]_i_1 
       (.I0(RAM_reg_64_127_201_203_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_201_203_n_1),
        .O(p_0_out[202]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[203]_i_1 
       (.I0(RAM_reg_64_127_201_203_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_201_203_n_2),
        .O(p_0_out[203]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[204]_i_1 
       (.I0(RAM_reg_64_127_204_206_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_204_206_n_0),
        .O(p_0_out[204]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[205]_i_1 
       (.I0(RAM_reg_64_127_204_206_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_204_206_n_1),
        .O(p_0_out[205]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[206]_i_1 
       (.I0(RAM_reg_64_127_204_206_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_204_206_n_2),
        .O(p_0_out[206]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[207]_i_1 
       (.I0(RAM_reg_64_127_207_209_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_207_209_n_0),
        .O(p_0_out[207]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[208]_i_1 
       (.I0(RAM_reg_64_127_207_209_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_207_209_n_1),
        .O(p_0_out[208]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[209]_i_1 
       (.I0(RAM_reg_64_127_207_209_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_207_209_n_2),
        .O(p_0_out[209]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[20]_i_1 
       (.I0(RAM_reg_64_127_18_20_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_18_20_n_2),
        .O(p_0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[210]_i_1 
       (.I0(RAM_reg_64_127_210_212_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_210_212_n_0),
        .O(p_0_out[210]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[211]_i_1 
       (.I0(RAM_reg_64_127_210_212_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_210_212_n_1),
        .O(p_0_out[211]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[212]_i_1 
       (.I0(RAM_reg_64_127_210_212_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_210_212_n_2),
        .O(p_0_out[212]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[213]_i_1 
       (.I0(RAM_reg_64_127_213_215_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_213_215_n_0),
        .O(p_0_out[213]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[214]_i_1 
       (.I0(RAM_reg_64_127_213_215_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_213_215_n_1),
        .O(p_0_out[214]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[215]_i_1 
       (.I0(RAM_reg_64_127_213_215_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_213_215_n_2),
        .O(p_0_out[215]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[216]_i_1 
       (.I0(RAM_reg_64_127_216_218_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_216_218_n_0),
        .O(p_0_out[216]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[217]_i_1 
       (.I0(RAM_reg_64_127_216_218_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_216_218_n_1),
        .O(p_0_out[217]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[218]_i_1 
       (.I0(RAM_reg_64_127_216_218_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_216_218_n_2),
        .O(p_0_out[218]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[219]_i_1 
       (.I0(RAM_reg_64_127_219_221_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_219_221_n_0),
        .O(p_0_out[219]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[21]_i_1 
       (.I0(RAM_reg_64_127_21_23_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_21_23_n_0),
        .O(p_0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[220]_i_1 
       (.I0(RAM_reg_64_127_219_221_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_219_221_n_1),
        .O(p_0_out[220]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[221]_i_1 
       (.I0(RAM_reg_64_127_219_221_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_219_221_n_2),
        .O(p_0_out[221]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[222]_i_1 
       (.I0(RAM_reg_64_127_222_224_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_222_224_n_0),
        .O(p_0_out[222]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[223]_i_1 
       (.I0(RAM_reg_64_127_222_224_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_222_224_n_1),
        .O(p_0_out[223]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[224]_i_1 
       (.I0(RAM_reg_64_127_222_224_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_222_224_n_2),
        .O(p_0_out[224]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[225]_i_1 
       (.I0(RAM_reg_64_127_225_227_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_225_227_n_0),
        .O(p_0_out[225]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[226]_i_1 
       (.I0(RAM_reg_64_127_225_227_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_225_227_n_1),
        .O(p_0_out[226]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[227]_i_1 
       (.I0(RAM_reg_64_127_225_227_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_225_227_n_2),
        .O(p_0_out[227]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[228]_i_1 
       (.I0(RAM_reg_64_127_228_230_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_228_230_n_0),
        .O(p_0_out[228]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[229]_i_1 
       (.I0(RAM_reg_64_127_228_230_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_228_230_n_1),
        .O(p_0_out[229]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[22]_i_1 
       (.I0(RAM_reg_64_127_21_23_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_21_23_n_1),
        .O(p_0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[230]_i_1 
       (.I0(RAM_reg_64_127_228_230_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_228_230_n_2),
        .O(p_0_out[230]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[231]_i_1 
       (.I0(RAM_reg_64_127_231_233_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_231_233_n_0),
        .O(p_0_out[231]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[232]_i_1 
       (.I0(RAM_reg_64_127_231_233_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_231_233_n_1),
        .O(p_0_out[232]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[233]_i_1 
       (.I0(RAM_reg_64_127_231_233_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_231_233_n_2),
        .O(p_0_out[233]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[234]_i_1 
       (.I0(RAM_reg_64_127_234_236_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_234_236_n_0),
        .O(p_0_out[234]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[235]_i_1 
       (.I0(RAM_reg_64_127_234_236_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_234_236_n_1),
        .O(p_0_out[235]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[236]_i_1 
       (.I0(RAM_reg_64_127_234_236_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_234_236_n_2),
        .O(p_0_out[236]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[237]_i_1 
       (.I0(RAM_reg_64_127_237_239_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_237_239_n_0),
        .O(p_0_out[237]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[238]_i_1 
       (.I0(RAM_reg_64_127_237_239_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_237_239_n_1),
        .O(p_0_out[238]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[239]_i_1 
       (.I0(RAM_reg_64_127_237_239_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_237_239_n_2),
        .O(p_0_out[239]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[23]_i_1 
       (.I0(RAM_reg_64_127_21_23_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_21_23_n_2),
        .O(p_0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[240]_i_1 
       (.I0(RAM_reg_64_127_240_242_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_240_242_n_0),
        .O(p_0_out[240]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[241]_i_1 
       (.I0(RAM_reg_64_127_240_242_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_240_242_n_1),
        .O(p_0_out[241]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[242]_i_1 
       (.I0(RAM_reg_64_127_240_242_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_240_242_n_2),
        .O(p_0_out[242]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[243]_i_1 
       (.I0(RAM_reg_64_127_243_245_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_243_245_n_0),
        .O(p_0_out[243]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[244]_i_1 
       (.I0(RAM_reg_64_127_243_245_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_243_245_n_1),
        .O(p_0_out[244]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[245]_i_1 
       (.I0(RAM_reg_64_127_243_245_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_243_245_n_2),
        .O(p_0_out[245]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[246]_i_1 
       (.I0(RAM_reg_64_127_246_248_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_246_248_n_0),
        .O(p_0_out[246]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[247]_i_1 
       (.I0(RAM_reg_64_127_246_248_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_246_248_n_1),
        .O(p_0_out[247]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[248]_i_1 
       (.I0(RAM_reg_64_127_246_248_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_246_248_n_2),
        .O(p_0_out[248]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[249]_i_1 
       (.I0(RAM_reg_64_127_249_251_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_249_251_n_0),
        .O(p_0_out[249]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[24]_i_1 
       (.I0(RAM_reg_64_127_24_26_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_24_26_n_0),
        .O(p_0_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[250]_i_1 
       (.I0(RAM_reg_64_127_249_251_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_249_251_n_1),
        .O(p_0_out[250]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[251]_i_1 
       (.I0(RAM_reg_64_127_249_251_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_249_251_n_2),
        .O(p_0_out[251]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[252]_i_1 
       (.I0(RAM_reg_64_127_252_254_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_252_254_n_0),
        .O(p_0_out[252]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[253]_i_1 
       (.I0(RAM_reg_64_127_252_254_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_252_254_n_1),
        .O(p_0_out[253]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[254]_i_1 
       (.I0(RAM_reg_64_127_252_254_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_252_254_n_2),
        .O(p_0_out[254]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[255]_i_2 
       (.I0(RAM_reg_64_127_255_255_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_255_255_n_0),
        .O(p_0_out[255]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[25]_i_1 
       (.I0(RAM_reg_64_127_24_26_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_24_26_n_1),
        .O(p_0_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[26]_i_1 
       (.I0(RAM_reg_64_127_24_26_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_24_26_n_2),
        .O(p_0_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[27]_i_1 
       (.I0(RAM_reg_64_127_27_29_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_27_29_n_0),
        .O(p_0_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[28]_i_1 
       (.I0(RAM_reg_64_127_27_29_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_27_29_n_1),
        .O(p_0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[29]_i_1 
       (.I0(RAM_reg_64_127_27_29_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_27_29_n_2),
        .O(p_0_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[2]_i_1 
       (.I0(RAM_reg_64_127_0_2_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_0_2_n_2),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[30]_i_1 
       (.I0(RAM_reg_64_127_30_32_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_30_32_n_0),
        .O(p_0_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[31]_i_1 
       (.I0(RAM_reg_64_127_30_32_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_30_32_n_1),
        .O(p_0_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[32]_i_1 
       (.I0(RAM_reg_64_127_30_32_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_30_32_n_2),
        .O(p_0_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[33]_i_1 
       (.I0(RAM_reg_64_127_33_35_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_33_35_n_0),
        .O(p_0_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[34]_i_1 
       (.I0(RAM_reg_64_127_33_35_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_33_35_n_1),
        .O(p_0_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[35]_i_1 
       (.I0(RAM_reg_64_127_33_35_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_33_35_n_2),
        .O(p_0_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[36]_i_1 
       (.I0(RAM_reg_64_127_36_38_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_36_38_n_0),
        .O(p_0_out[36]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[37]_i_1 
       (.I0(RAM_reg_64_127_36_38_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_36_38_n_1),
        .O(p_0_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[38]_i_1 
       (.I0(RAM_reg_64_127_36_38_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_36_38_n_2),
        .O(p_0_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[39]_i_1 
       (.I0(RAM_reg_64_127_39_41_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_39_41_n_0),
        .O(p_0_out[39]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[3]_i_1 
       (.I0(RAM_reg_64_127_3_5_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_3_5_n_0),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[40]_i_1 
       (.I0(RAM_reg_64_127_39_41_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_39_41_n_1),
        .O(p_0_out[40]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[41]_i_1 
       (.I0(RAM_reg_64_127_39_41_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_39_41_n_2),
        .O(p_0_out[41]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[42]_i_1 
       (.I0(RAM_reg_64_127_42_44_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_42_44_n_0),
        .O(p_0_out[42]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[43]_i_1 
       (.I0(RAM_reg_64_127_42_44_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_42_44_n_1),
        .O(p_0_out[43]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[44]_i_1 
       (.I0(RAM_reg_64_127_42_44_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_42_44_n_2),
        .O(p_0_out[44]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[45]_i_1 
       (.I0(RAM_reg_64_127_45_47_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_45_47_n_0),
        .O(p_0_out[45]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[46]_i_1 
       (.I0(RAM_reg_64_127_45_47_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_45_47_n_1),
        .O(p_0_out[46]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[47]_i_1 
       (.I0(RAM_reg_64_127_45_47_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_45_47_n_2),
        .O(p_0_out[47]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[48]_i_1 
       (.I0(RAM_reg_64_127_48_50_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_48_50_n_0),
        .O(p_0_out[48]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[49]_i_1 
       (.I0(RAM_reg_64_127_48_50_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_48_50_n_1),
        .O(p_0_out[49]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[4]_i_1 
       (.I0(RAM_reg_64_127_3_5_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_3_5_n_1),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[50]_i_1 
       (.I0(RAM_reg_64_127_48_50_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_48_50_n_2),
        .O(p_0_out[50]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[51]_i_1 
       (.I0(RAM_reg_64_127_51_53_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_51_53_n_0),
        .O(p_0_out[51]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[52]_i_1 
       (.I0(RAM_reg_64_127_51_53_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_51_53_n_1),
        .O(p_0_out[52]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[53]_i_1 
       (.I0(RAM_reg_64_127_51_53_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_51_53_n_2),
        .O(p_0_out[53]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[54]_i_1 
       (.I0(RAM_reg_64_127_54_56_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_54_56_n_0),
        .O(p_0_out[54]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[55]_i_1 
       (.I0(RAM_reg_64_127_54_56_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_54_56_n_1),
        .O(p_0_out[55]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[56]_i_1 
       (.I0(RAM_reg_64_127_54_56_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_54_56_n_2),
        .O(p_0_out[56]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[57]_i_1 
       (.I0(RAM_reg_64_127_57_59_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_57_59_n_0),
        .O(p_0_out[57]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[58]_i_1 
       (.I0(RAM_reg_64_127_57_59_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_57_59_n_1),
        .O(p_0_out[58]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[59]_i_1 
       (.I0(RAM_reg_64_127_57_59_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_57_59_n_2),
        .O(p_0_out[59]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[5]_i_1 
       (.I0(RAM_reg_64_127_3_5_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_3_5_n_2),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[60]_i_1 
       (.I0(RAM_reg_64_127_60_62_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_60_62_n_0),
        .O(p_0_out[60]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[61]_i_1 
       (.I0(RAM_reg_64_127_60_62_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_60_62_n_1),
        .O(p_0_out[61]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[62]_i_1 
       (.I0(RAM_reg_64_127_60_62_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_60_62_n_2),
        .O(p_0_out[62]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[63]_i_1 
       (.I0(RAM_reg_64_127_63_65_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_63_65_n_0),
        .O(p_0_out[63]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[64]_i_1 
       (.I0(RAM_reg_64_127_63_65_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_63_65_n_1),
        .O(p_0_out[64]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[65]_i_1 
       (.I0(RAM_reg_64_127_63_65_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_63_65_n_2),
        .O(p_0_out[65]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[66]_i_1 
       (.I0(RAM_reg_64_127_66_68_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_66_68_n_0),
        .O(p_0_out[66]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[67]_i_1 
       (.I0(RAM_reg_64_127_66_68_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_66_68_n_1),
        .O(p_0_out[67]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[68]_i_1 
       (.I0(RAM_reg_64_127_66_68_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_66_68_n_2),
        .O(p_0_out[68]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[69]_i_1 
       (.I0(RAM_reg_64_127_69_71_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_69_71_n_0),
        .O(p_0_out[69]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[6]_i_1 
       (.I0(RAM_reg_64_127_6_8_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_6_8_n_0),
        .O(p_0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[70]_i_1 
       (.I0(RAM_reg_64_127_69_71_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_69_71_n_1),
        .O(p_0_out[70]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[71]_i_1 
       (.I0(RAM_reg_64_127_69_71_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_69_71_n_2),
        .O(p_0_out[71]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[72]_i_1 
       (.I0(RAM_reg_64_127_72_74_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_72_74_n_0),
        .O(p_0_out[72]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[73]_i_1 
       (.I0(RAM_reg_64_127_72_74_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_72_74_n_1),
        .O(p_0_out[73]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[74]_i_1 
       (.I0(RAM_reg_64_127_72_74_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_72_74_n_2),
        .O(p_0_out[74]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[75]_i_1 
       (.I0(RAM_reg_64_127_75_77_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_75_77_n_0),
        .O(p_0_out[75]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[76]_i_1 
       (.I0(RAM_reg_64_127_75_77_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_75_77_n_1),
        .O(p_0_out[76]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[77]_i_1 
       (.I0(RAM_reg_64_127_75_77_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_75_77_n_2),
        .O(p_0_out[77]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[78]_i_1 
       (.I0(RAM_reg_64_127_78_80_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_78_80_n_0),
        .O(p_0_out[78]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[79]_i_1 
       (.I0(RAM_reg_64_127_78_80_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_78_80_n_1),
        .O(p_0_out[79]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[7]_i_1 
       (.I0(RAM_reg_64_127_6_8_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_6_8_n_1),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[80]_i_1 
       (.I0(RAM_reg_64_127_78_80_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_78_80_n_2),
        .O(p_0_out[80]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[81]_i_1 
       (.I0(RAM_reg_64_127_81_83_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_81_83_n_0),
        .O(p_0_out[81]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[82]_i_1 
       (.I0(RAM_reg_64_127_81_83_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_81_83_n_1),
        .O(p_0_out[82]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[83]_i_1 
       (.I0(RAM_reg_64_127_81_83_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_81_83_n_2),
        .O(p_0_out[83]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[84]_i_1 
       (.I0(RAM_reg_64_127_84_86_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_84_86_n_0),
        .O(p_0_out[84]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[85]_i_1 
       (.I0(RAM_reg_64_127_84_86_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_84_86_n_1),
        .O(p_0_out[85]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[86]_i_1 
       (.I0(RAM_reg_64_127_84_86_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_84_86_n_2),
        .O(p_0_out[86]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[87]_i_1 
       (.I0(RAM_reg_64_127_87_89_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_87_89_n_0),
        .O(p_0_out[87]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[88]_i_1 
       (.I0(RAM_reg_64_127_87_89_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_87_89_n_1),
        .O(p_0_out[88]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[89]_i_1 
       (.I0(RAM_reg_64_127_87_89_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_87_89_n_2),
        .O(p_0_out[89]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[8]_i_1 
       (.I0(RAM_reg_64_127_6_8_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_6_8_n_2),
        .O(p_0_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[90]_i_1 
       (.I0(RAM_reg_64_127_90_92_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_90_92_n_0),
        .O(p_0_out[90]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[91]_i_1 
       (.I0(RAM_reg_64_127_90_92_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_90_92_n_1),
        .O(p_0_out[91]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[92]_i_1 
       (.I0(RAM_reg_64_127_90_92_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_90_92_n_2),
        .O(p_0_out[92]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[93]_i_1 
       (.I0(RAM_reg_64_127_93_95_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_93_95_n_0),
        .O(p_0_out[93]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[94]_i_1 
       (.I0(RAM_reg_64_127_93_95_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_93_95_n_1),
        .O(p_0_out[94]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[95]_i_1 
       (.I0(RAM_reg_64_127_93_95_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_93_95_n_2),
        .O(p_0_out[95]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[96]_i_1 
       (.I0(RAM_reg_64_127_96_98_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_96_98_n_0),
        .O(p_0_out[96]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[97]_i_1 
       (.I0(RAM_reg_64_127_96_98_n_1),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_96_98_n_1),
        .O(p_0_out[97]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[98]_i_1 
       (.I0(RAM_reg_64_127_96_98_n_2),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_96_98_n_2),
        .O(p_0_out[98]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[99]_i_1 
       (.I0(RAM_reg_64_127_99_101_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_99_101_n_0),
        .O(p_0_out[99]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gpr1.dout_i[9]_i_1 
       (.I0(RAM_reg_64_127_9_11_n_0),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_9_11_n_0),
        .O(p_0_out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[0]),
        .D(p_0_out[0]),
        .Q(dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[100] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[100]),
        .Q(dout[100]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[101] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[101]),
        .Q(dout[101]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[102] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[102]),
        .Q(dout[102]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[103] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[103]),
        .Q(dout[103]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[104] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[104]),
        .Q(dout[104]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[105] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[105]),
        .Q(dout[105]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[106] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[106]),
        .Q(dout[106]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[107] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[107]),
        .Q(dout[107]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[108] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[108]),
        .Q(dout[108]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[109] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[109]),
        .Q(dout[109]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[10]),
        .Q(dout[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[110] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[110]),
        .Q(dout[110]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[111] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[111]),
        .Q(dout[111]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[112] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[112]),
        .Q(dout[112]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[113] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[113]),
        .Q(dout[113]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[114] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[114]),
        .Q(dout[114]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[115] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[115]),
        .Q(dout[115]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[116] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[116]),
        .Q(dout[116]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[117] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[117]),
        .Q(dout[117]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[118] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[118]),
        .Q(dout[118]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[119] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[119]),
        .Q(dout[119]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[11]),
        .Q(dout[11]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[120] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[120]),
        .Q(dout[120]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[121] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[121]),
        .Q(dout[121]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[122] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[122]),
        .Q(dout[122]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[123] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[123]),
        .Q(dout[123]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[124] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[124]),
        .Q(dout[124]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[125] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[125]),
        .Q(dout[125]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[126] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[126]),
        .Q(dout[126]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[127] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[127]),
        .Q(dout[127]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[128] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[128]),
        .Q(dout[128]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[129] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[129]),
        .Q(dout[129]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[12]),
        .Q(dout[12]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[130] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[130]),
        .Q(dout[130]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[131] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[131]),
        .Q(dout[131]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[132] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[132]),
        .Q(dout[132]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[133] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[133]),
        .Q(dout[133]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[134] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[134]),
        .Q(dout[134]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[135] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[135]),
        .Q(dout[135]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[136] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[136]),
        .Q(dout[136]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[137] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[137]),
        .Q(dout[137]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[138] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[138]),
        .Q(dout[138]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[139] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[139]),
        .Q(dout[139]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[13]),
        .Q(dout[13]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[140] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[140]),
        .Q(dout[140]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[141] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[141]),
        .Q(dout[141]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[142] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[142]),
        .Q(dout[142]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[143] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[143]),
        .Q(dout[143]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[144] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[144]),
        .Q(dout[144]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[145] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[145]),
        .Q(dout[145]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[146] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[146]),
        .Q(dout[146]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[147] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[147]),
        .Q(dout[147]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[148] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[148]),
        .Q(dout[148]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[149] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[149]),
        .Q(dout[149]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[14]),
        .Q(dout[14]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[150] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[150]),
        .Q(dout[150]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[151] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[151]),
        .Q(dout[151]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[152] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[152]),
        .Q(dout[152]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[153] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[153]),
        .Q(dout[153]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[154] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[154]),
        .Q(dout[154]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[155] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[155]),
        .Q(dout[155]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[156] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[156]),
        .Q(dout[156]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[157] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[157]),
        .Q(dout[157]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[158] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[158]),
        .Q(dout[158]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[159] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[159]),
        .Q(dout[159]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[15]),
        .Q(dout[15]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[160] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[160]),
        .Q(dout[160]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[161] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[161]),
        .Q(dout[161]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[162] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[162]),
        .Q(dout[162]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[163] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[163]),
        .Q(dout[163]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[164] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[164]),
        .Q(dout[164]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[165] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[165]),
        .Q(dout[165]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[166] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[166]),
        .Q(dout[166]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[167] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[167]),
        .Q(dout[167]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[168] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[168]),
        .Q(dout[168]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[169] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[169]),
        .Q(dout[169]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[16]),
        .Q(dout[16]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[170] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[170]),
        .Q(dout[170]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[171] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[171]),
        .Q(dout[171]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[172] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[172]),
        .Q(dout[172]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[173] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[173]),
        .Q(dout[173]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[174] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[174]),
        .Q(dout[174]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[175] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[175]),
        .Q(dout[175]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[176] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[176]),
        .Q(dout[176]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[177] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[177]),
        .Q(dout[177]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[178] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[178]),
        .Q(dout[178]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[179] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[179]),
        .Q(dout[179]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[17]),
        .Q(dout[17]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[180] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[180]),
        .Q(dout[180]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[181] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[181]),
        .Q(dout[181]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[182] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[182]),
        .Q(dout[182]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[183] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[183]),
        .Q(dout[183]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[184] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[184]),
        .Q(dout[184]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[185] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[185]),
        .Q(dout[185]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[186] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[186]),
        .Q(dout[186]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[187] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[187]),
        .Q(dout[187]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[188] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[188]),
        .Q(dout[188]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[189] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[189]),
        .Q(dout[189]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[18]),
        .Q(dout[18]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[190] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[190]),
        .Q(dout[190]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[191] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[191]),
        .Q(dout[191]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[192] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[192]),
        .Q(dout[192]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[193] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[193]),
        .Q(dout[193]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[194] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[194]),
        .Q(dout[194]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[195] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[195]),
        .Q(dout[195]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[196] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[196]),
        .Q(dout[196]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[197] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[197]),
        .Q(dout[197]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[198] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[198]),
        .Q(dout[198]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[199] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[199]),
        .Q(dout[199]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[19]),
        .Q(dout[19]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[0]),
        .D(p_0_out[1]),
        .Q(dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[200] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[200]),
        .Q(dout[200]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[201] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[201]),
        .Q(dout[201]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[202] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[202]),
        .Q(dout[202]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[203] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[203]),
        .Q(dout[203]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[204] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[204]),
        .Q(dout[204]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[205] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[205]),
        .Q(dout[205]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[206] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[206]),
        .Q(dout[206]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[207] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[207]),
        .Q(dout[207]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[208] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[208]),
        .Q(dout[208]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[209] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[209]),
        .Q(dout[209]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[20]),
        .Q(dout[20]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[210] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[210]),
        .Q(dout[210]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[211] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[211]),
        .Q(dout[211]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[212] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[212]),
        .Q(dout[212]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[213] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[213]),
        .Q(dout[213]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[214] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[214]),
        .Q(dout[214]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[215] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[215]),
        .Q(dout[215]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[216] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[216]),
        .Q(dout[216]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[217] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[217]),
        .Q(dout[217]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[218] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[218]),
        .Q(dout[218]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[219] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[219]),
        .Q(dout[219]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[21]),
        .Q(dout[21]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[220] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[220]),
        .Q(dout[220]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[221] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[221]),
        .Q(dout[221]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[222] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[222]),
        .Q(dout[222]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[223] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[223]),
        .Q(dout[223]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[224] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[224]),
        .Q(dout[224]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[225] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[225]),
        .Q(dout[225]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[226] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[226]),
        .Q(dout[226]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[227] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[227]),
        .Q(dout[227]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[228] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[228]),
        .Q(dout[228]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[229] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[229]),
        .Q(dout[229]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[22]),
        .Q(dout[22]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[230] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[230]),
        .Q(dout[230]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[231] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[231]),
        .Q(dout[231]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[232] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[232]),
        .Q(dout[232]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[233] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[233]),
        .Q(dout[233]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[234] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[234]),
        .Q(dout[234]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[235] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[235]),
        .Q(dout[235]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[236] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[236]),
        .Q(dout[236]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[237] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[237]),
        .Q(dout[237]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[238] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[238]),
        .Q(dout[238]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[239] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[239]),
        .Q(dout[239]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[23]),
        .Q(dout[23]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[240] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[240]),
        .Q(dout[240]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[241] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[241]),
        .Q(dout[241]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[242] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[242]),
        .Q(dout[242]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[243] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[243]),
        .Q(dout[243]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[244] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[244]),
        .Q(dout[244]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[245] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[245]),
        .Q(dout[245]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[246] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[246]),
        .Q(dout[246]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[247] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[247]),
        .Q(dout[247]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[248] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[248]),
        .Q(dout[248]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[249] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[249]),
        .Q(dout[249]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[24]),
        .Q(dout[24]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[250] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[250]),
        .Q(dout[250]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[251] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[251]),
        .Q(dout[251]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[252] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[252]),
        .Q(dout[252]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[253] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[253]),
        .Q(dout[253]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[254] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[254]),
        .Q(dout[254]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[255] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[3]),
        .D(p_0_out[255]),
        .Q(dout[255]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[25]),
        .Q(dout[25]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[26]),
        .Q(dout[26]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[27]),
        .Q(dout[27]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[28]),
        .Q(dout[28]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[29]),
        .Q(dout[29]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[2]),
        .Q(dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[30]),
        .Q(dout[30]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[31]),
        .Q(dout[31]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[32]),
        .Q(dout[32]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[33]),
        .Q(dout[33]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[34]),
        .Q(dout[34]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[35]),
        .Q(dout[35]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[36]),
        .Q(dout[36]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[37]),
        .Q(dout[37]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[38]),
        .Q(dout[38]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[39]),
        .Q(dout[39]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[3]),
        .Q(dout[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[40]),
        .Q(dout[40]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[41]),
        .Q(dout[41]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[42]),
        .Q(dout[42]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[43]),
        .Q(dout[43]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[44]),
        .Q(dout[44]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[45]),
        .Q(dout[45]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[46]),
        .Q(dout[46]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[47]),
        .Q(dout[47]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[48]),
        .Q(dout[48]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[49]),
        .Q(dout[49]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[4]),
        .Q(dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[50]),
        .Q(dout[50]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[51]),
        .Q(dout[51]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[52]),
        .Q(dout[52]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[53]),
        .Q(dout[53]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[54]),
        .Q(dout[54]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[55]),
        .Q(dout[55]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[56]),
        .Q(dout[56]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[57]),
        .Q(dout[57]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[58]),
        .Q(dout[58]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[59]),
        .Q(dout[59]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[5]),
        .Q(dout[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[60]),
        .Q(dout[60]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[61] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[61]),
        .Q(dout[61]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[62] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[62]),
        .Q(dout[62]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[63] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[63]),
        .Q(dout[63]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[64] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[64]),
        .Q(dout[64]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[65] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[65]),
        .Q(dout[65]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[66] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[66]),
        .Q(dout[66]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[67] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[67]),
        .Q(dout[67]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[68] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[68]),
        .Q(dout[68]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[69] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[69]),
        .Q(dout[69]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[6]),
        .Q(dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[70] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[70]),
        .Q(dout[70]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[71] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[71]),
        .Q(dout[71]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[72] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[72]),
        .Q(dout[72]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[73] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[73]),
        .Q(dout[73]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[74] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[74]),
        .Q(dout[74]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[75] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[75]),
        .Q(dout[75]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[76] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[76]),
        .Q(dout[76]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[77] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[77]),
        .Q(dout[77]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[78] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[78]),
        .Q(dout[78]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[79] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[79]),
        .Q(dout[79]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[7]),
        .Q(dout[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[80] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[80]),
        .Q(dout[80]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[81] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[81]),
        .Q(dout[81]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[82] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[82]),
        .Q(dout[82]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[83] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[83]),
        .Q(dout[83]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[84] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[84]),
        .Q(dout[84]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[85] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[85]),
        .Q(dout[85]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[86] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[86]),
        .Q(dout[86]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[87] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[87]),
        .Q(dout[87]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[88] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[88]),
        .Q(dout[88]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[89] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[89]),
        .Q(dout[89]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[8]),
        .Q(dout[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[90] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[90]),
        .Q(dout[90]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[91] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[91]),
        .Q(dout[91]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[92] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[92]),
        .Q(dout[92]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[93] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[93]),
        .Q(dout[93]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[94] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[94]),
        .Q(dout[94]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[95] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[95]),
        .Q(dout[95]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[96] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[96]),
        .Q(dout[96]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[97] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[97]),
        .Q(dout[97]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[98] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[98]),
        .Q(dout[98]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[99] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[2]),
        .D(p_0_out[99]),
        .Q(dout[99]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR[1]),
        .D(p_0_out[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module sd_fifo_fifo_generator_ramfifo
   (wr_rst_busy,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    empty,
    full,
    dout,
    wr_en,
    rst,
    wr_clk,
    rd_clk,
    din,
    rd_en);
  output wr_rst_busy;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output empty;
  output full;
  output [255:0]dout;
  input wr_en;
  input rst;
  input wr_clk;
  input rd_clk;
  input [255:0]din;
  input rd_en;

  wire [255:0]din;
  wire [255:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_10 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_11 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_12 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_13 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_14 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_15 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_16 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_17 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_18 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_19 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_20 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_21 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_22 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_23 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_24 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_25 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_26 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_9 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_10 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_2 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [6:0]p_0_out_0;
  wire [6:0]p_13_out;
  wire [6:0]p_14_out;
  wire [6:0]p_24_out;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire rstblk_n_2;
  wire rstblk_n_3;
  wire wr_clk;
  wire wr_en;
  wire [6:0]wr_pntr_plus2;
  wire wr_rst_busy;

  sd_fifo_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .Q(p_14_out),
        .WR_PNTR_RD(p_24_out),
        .out(rst_full_gen_i),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_i_i_2_0(wr_pntr_plus2),
        .rd_clk(rd_clk),
        .\src_gray_ff_reg[6] (p_13_out),
        .\src_gray_ff_reg[6]_0 (p_0_out_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  sd_fifo_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.ADDRC({\gntv_or_sync_fifo.gl0.rd_n_9 ,\gntv_or_sync_fifo.gl0.rd_n_10 ,\gntv_or_sync_fifo.gl0.rd_n_11 ,\gntv_or_sync_fifo.gl0.rd_n_12 ,\gntv_or_sync_fifo.gl0.rd_n_13 ,\gntv_or_sync_fifo.gl0.rd_n_14 }),
        .AR(rstblk_n_1),
        .Q(p_0_out_0),
        .WR_PNTR_RD(p_24_out),
        .empty(empty),
        .\gc0.count_d1_reg[5]_rep__0 ({\gntv_or_sync_fifo.gl0.rd_n_15 ,\gntv_or_sync_fifo.gl0.rd_n_16 ,\gntv_or_sync_fifo.gl0.rd_n_17 ,\gntv_or_sync_fifo.gl0.rd_n_18 ,\gntv_or_sync_fifo.gl0.rd_n_19 ,\gntv_or_sync_fifo.gl0.rd_n_20 }),
        .\gc0.count_d1_reg[5]_rep__1 ({\gntv_or_sync_fifo.gl0.rd_n_21 ,\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 ,\gntv_or_sync_fifo.gl0.rd_n_25 ,\gntv_or_sync_fifo.gl0.rd_n_26 }),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  sd_fifo_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .Q(p_13_out),
        .full(full),
        .\gic0.gc0.count_d1_reg[6] (p_14_out),
        .\gic0.gc0.count_reg[6] (wr_pntr_plus2),
        .out(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .ram_full_fb_i_reg_0(\gntv_or_sync_fifo.gl0.wr_n_10 ),
        .ram_full_fb_i_reg_1(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_fb_i_reg_2(rst_full_ff_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  sd_fifo_memory \gntv_or_sync_fifo.mem 
       (.ADDRC({\gntv_or_sync_fifo.gl0.rd_n_9 ,\gntv_or_sync_fifo.gl0.rd_n_10 ,\gntv_or_sync_fifo.gl0.rd_n_11 ,\gntv_or_sync_fifo.gl0.rd_n_12 ,\gntv_or_sync_fifo.gl0.rd_n_13 ,\gntv_or_sync_fifo.gl0.rd_n_14 }),
        .AR({rstblk_n_1,rstblk_n_2,rstblk_n_3,\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg }),
        .E(ram_rd_en_i),
        .Q(p_0_out_0),
        .din(din),
        .dout(dout),
        .\gpr1.dout_i_reg[0] (\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .\gpr1.dout_i_reg[0]_0 (p_13_out[5:0]),
        .\gpr1.dout_i_reg[192] ({\gntv_or_sync_fifo.gl0.rd_n_15 ,\gntv_or_sync_fifo.gl0.rd_n_16 ,\gntv_or_sync_fifo.gl0.rd_n_17 ,\gntv_or_sync_fifo.gl0.rd_n_18 ,\gntv_or_sync_fifo.gl0.rd_n_19 ,\gntv_or_sync_fifo.gl0.rd_n_20 }),
        .\gpr1.dout_i_reg[252] ({\gntv_or_sync_fifo.gl0.rd_n_21 ,\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 ,\gntv_or_sync_fifo.gl0.rd_n_25 ,\gntv_or_sync_fifo.gl0.rd_n_26 }),
        .\gpr1.dout_i_reg[255] (\gntv_or_sync_fifo.gl0.wr_n_10 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  sd_fifo_reset_blk_ramfifo rstblk
       (.AR(rstblk_n_0),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 ({rstblk_n_1,rstblk_n_2,rstblk_n_3,\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg }),
        .out(rst_full_ff_i),
        .rd_clk(rd_clk),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module sd_fifo_fifo_generator_top
   (wr_rst_busy,
    AR,
    empty,
    full,
    dout,
    wr_en,
    rst,
    wr_clk,
    rd_clk,
    din,
    rd_en);
  output wr_rst_busy;
  output [0:0]AR;
  output empty;
  output full;
  output [255:0]dout;
  input wr_en;
  input rst;
  input wr_clk;
  input rd_clk;
  input [255:0]din;
  input rd_en;

  wire [0:0]AR;
  wire [255:0]din;
  wire [255:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  sd_fifo_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (AR),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "7" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "256" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "256" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "kintex7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x72" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "125" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "124" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "7" *) 
(* C_RD_DEPTH = "128" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "7" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "7" *) 
(* C_WR_DEPTH = "128" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "7" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_3" *) 
module sd_fifo_fifo_generator_v13_2_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [255:0]din;
  input wr_en;
  input rd_en;
  input [6:0]prog_empty_thresh;
  input [6:0]prog_empty_thresh_assert;
  input [6:0]prog_empty_thresh_negate;
  input [6:0]prog_full_thresh;
  input [6:0]prog_full_thresh_assert;
  input [6:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [255:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [6:0]data_count;
  output [6:0]rd_data_count;
  output [6:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire [255:0]din;
  wire [255:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  sd_fifo_fifo_generator_v13_2_3_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rd_rst_busy),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_synth" *) 
module sd_fifo_fifo_generator_v13_2_3_synth
   (wr_rst_busy,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    empty,
    full,
    dout,
    wr_en,
    rst,
    wr_clk,
    rd_clk,
    din,
    rd_en);
  output wr_rst_busy;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output empty;
  output full;
  output [255:0]dout;
  input wr_en;
  input rst;
  input wr_clk;
  input rd_clk;
  input [255:0]din;
  input rd_en;

  wire [255:0]din;
  wire [255:0]dout;
  wire empty;
  wire full;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  sd_fifo_fifo_generator_top \gconvfifo.rf 
       (.AR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module sd_fifo_memory
   (dout,
    wr_clk,
    din,
    \gpr1.dout_i_reg[0] ,
    Q,
    \gpr1.dout_i_reg[0]_0 ,
    \gpr1.dout_i_reg[255] ,
    ADDRC,
    \gpr1.dout_i_reg[192] ,
    \gpr1.dout_i_reg[252] ,
    E,
    rd_clk,
    AR);
  output [255:0]dout;
  input wr_clk;
  input [255:0]din;
  input \gpr1.dout_i_reg[0] ;
  input [6:0]Q;
  input [5:0]\gpr1.dout_i_reg[0]_0 ;
  input \gpr1.dout_i_reg[255] ;
  input [5:0]ADDRC;
  input [5:0]\gpr1.dout_i_reg[192] ;
  input [5:0]\gpr1.dout_i_reg[252] ;
  input [0:0]E;
  input rd_clk;
  input [3:0]AR;

  wire [5:0]ADDRC;
  wire [3:0]AR;
  wire [0:0]E;
  wire [6:0]Q;
  wire [255:0]din;
  wire [255:0]dout;
  wire \gpr1.dout_i_reg[0] ;
  wire [5:0]\gpr1.dout_i_reg[0]_0 ;
  wire [5:0]\gpr1.dout_i_reg[192] ;
  wire [5:0]\gpr1.dout_i_reg[252] ;
  wire \gpr1.dout_i_reg[255] ;
  wire rd_clk;
  wire wr_clk;

  sd_fifo_dmem \gdm.dm_gen.dm 
       (.ADDRC(ADDRC),
        .AR(AR),
        .E(E),
        .Q(Q),
        .din(din),
        .dout(dout),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[0]_1 (\gpr1.dout_i_reg[0]_0 ),
        .\gpr1.dout_i_reg[192]_0 (\gpr1.dout_i_reg[192] ),
        .\gpr1.dout_i_reg[252]_0 (\gpr1.dout_i_reg[252] ),
        .\gpr1.dout_i_reg[255]_0 (\gpr1.dout_i_reg[255] ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module sd_fifo_rd_bin_cntr
   (rd_en_0,
    Q,
    ADDRC,
    \gc0.count_d1_reg[5]_rep__0_0 ,
    \gc0.count_d1_reg[5]_rep__1_0 ,
    rd_en,
    out,
    WR_PNTR_RD,
    E,
    rd_clk,
    AR);
  output rd_en_0;
  output [6:0]Q;
  output [5:0]ADDRC;
  output [5:0]\gc0.count_d1_reg[5]_rep__0_0 ;
  output [5:0]\gc0.count_d1_reg[5]_rep__1_0 ;
  input rd_en;
  input out;
  input [6:0]WR_PNTR_RD;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRC;
  wire [0:0]AR;
  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]WR_PNTR_RD;
  wire \gc0.count[6]_i_2_n_0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__0_0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__1_0 ;
  wire \gras.rsts/comp0 ;
  wire \gras.rsts/comp1 ;
  wire out;
  wire [6:0]plusOp__0;
  wire ram_empty_i_i_4_n_0;
  wire ram_empty_i_i_5_n_0;
  wire ram_empty_i_i_6_n_0;
  wire ram_empty_i_i_7_n_0;
  wire rd_clk;
  wire rd_en;
  wire rd_en_0;
  wire [6:0]rd_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp__0[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[6]_i_2_n_0 ),
        .I1(rd_pntr_plus1[5]),
        .I2(rd_pntr_plus1[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \gc0.count[6]_i_2 
       (.I0(rd_pntr_plus1[4]),
        .I1(rd_pntr_plus1[2]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[1]),
        .I4(rd_pntr_plus1[3]),
        .O(\gc0.count[6]_i_2_n_0 ));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(ADDRC[0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(ADDRC[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(ADDRC[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(ADDRC[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(ADDRC[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(ADDRC[5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(rd_pntr_plus1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[5]),
        .Q(rd_pntr_plus1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[6]),
        .Q(rd_pntr_plus1[6]));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_empty_i_i_1
       (.I0(\gras.rsts/comp0 ),
        .I1(rd_en),
        .I2(out),
        .I3(\gras.rsts/comp1 ),
        .O(rd_en_0));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    ram_empty_i_i_2
       (.I0(ram_empty_i_i_4_n_0),
        .I1(Q[0]),
        .I2(WR_PNTR_RD[0]),
        .I3(Q[1]),
        .I4(WR_PNTR_RD[1]),
        .I5(ram_empty_i_i_5_n_0),
        .O(\gras.rsts/comp0 ));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    ram_empty_i_i_3
       (.I0(ram_empty_i_i_6_n_0),
        .I1(rd_pntr_plus1[0]),
        .I2(WR_PNTR_RD[0]),
        .I3(rd_pntr_plus1[1]),
        .I4(WR_PNTR_RD[1]),
        .I5(ram_empty_i_i_7_n_0),
        .O(\gras.rsts/comp1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_4
       (.I0(Q[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(Q[3]),
        .I3(WR_PNTR_RD[3]),
        .O(ram_empty_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_empty_i_i_5
       (.I0(Q[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(WR_PNTR_RD[5]),
        .I3(Q[5]),
        .I4(WR_PNTR_RD[4]),
        .I5(Q[4]),
        .O(ram_empty_i_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_6
       (.I0(rd_pntr_plus1[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus1[3]),
        .I3(WR_PNTR_RD[3]),
        .O(ram_empty_i_i_6_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_empty_i_i_7
       (.I0(rd_pntr_plus1[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(WR_PNTR_RD[5]),
        .I3(rd_pntr_plus1[5]),
        .I4(WR_PNTR_RD[4]),
        .I5(rd_pntr_plus1[4]),
        .O(ram_empty_i_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module sd_fifo_rd_logic
   (empty,
    Q,
    ram_rd_en_i,
    ADDRC,
    \gc0.count_d1_reg[5]_rep__0 ,
    \gc0.count_d1_reg[5]_rep__1 ,
    rd_clk,
    AR,
    rd_en,
    WR_PNTR_RD);
  output empty;
  output [6:0]Q;
  output ram_rd_en_i;
  output [5:0]ADDRC;
  output [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  output [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  input rd_clk;
  input [0:0]AR;
  input rd_en;
  input [6:0]WR_PNTR_RD;

  wire [5:0]ADDRC;
  wire [0:0]AR;
  wire [6:0]Q;
  wire [6:0]WR_PNTR_RD;
  wire empty;
  wire [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  wire p_2_out;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire rpntr_n_0;

  sd_fifo_rd_status_flags_as \gras.rsts 
       (.AR(AR),
        .E(ram_rd_en_i),
        .empty(empty),
        .out(p_2_out),
        .ram_empty_i_reg_0(rpntr_n_0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  sd_fifo_rd_bin_cntr rpntr
       (.ADDRC(ADDRC),
        .AR(AR),
        .E(ram_rd_en_i),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[5]_rep__0_0 (\gc0.count_d1_reg[5]_rep__0 ),
        .\gc0.count_d1_reg[5]_rep__1_0 (\gc0.count_d1_reg[5]_rep__1 ),
        .out(p_2_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rd_en_0(rpntr_n_0));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module sd_fifo_rd_status_flags_as
   (empty,
    out,
    E,
    ram_empty_i_reg_0,
    rd_clk,
    AR,
    rd_en);
  output empty;
  output out;
  output [0:0]E;
  input ram_empty_i_reg_0;
  input rd_clk;
  input [0:0]AR;
  input rd_en;

  wire [0:0]AR;
  wire [0:0]E;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire rd_clk;
  wire rd_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \gpr1.dout_i[255]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(AR),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(AR),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module sd_fifo_reset_blk_ramfifo
   (AR,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 ,
    out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    wr_rst_busy,
    rst,
    wr_clk,
    rd_clk);
  output [0:0]AR;
  output [3:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 ;
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output wr_rst_busy;
  input rst;
  input wr_clk;
  input rd_clk;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire [3:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  wire rd_clk;
  wire [3:0]rd_rst_wr_ext;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire sckt_rd_rst_wr;
  wire wr_clk;
  wire wr_rst_busy;
  wire [1:0]wr_rst_rd_ext;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_busy),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  sd_fifo_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(rd_clk),
        .src_arst(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [0]),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  (* ORIG_CELL_NAME = "ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [0]));
  (* ORIG_CELL_NAME = "ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [3]));
  (* ORIG_CELL_NAME = "ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep__0 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__0_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [2]));
  (* ORIG_CELL_NAME = "ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep__1 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [0]),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__0 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [0]),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [0]),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_rep_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(wr_rst_busy),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_busy));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  sd_fifo_xpm_cdc_single \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(wr_clk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(rd_clk),
        .src_in(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_rep_0 [0]));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  sd_fifo_xpm_cdc_single__2 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(rd_clk),
        .dest_out(dest_out),
        .src_clk(wr_clk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  sd_fifo_xpm_cdc_async_rst__2 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(wr_clk),
        .src_arst(rst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module sd_fifo_wr_bin_cntr
   (Q,
    \gic0.gc0.count_d1_reg[6]_0 ,
    \gic0.gc0.count_d2_reg[6]_0 ,
    E,
    wr_clk,
    AR);
  output [6:0]Q;
  output [6:0]\gic0.gc0.count_d1_reg[6]_0 ;
  output [6:0]\gic0.gc0.count_d2_reg[6]_0 ;
  input [0:0]E;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [6:0]Q;
  wire \gic0.gc0.count[6]_i_2_n_0 ;
  wire [6:0]\gic0.gc0.count_d1_reg[6]_0 ;
  wire [6:0]\gic0.gc0.count_d2_reg[6]_0 ;
  wire [6:0]plusOp;
  wire wr_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[6]_i_1 
       (.I0(\gic0.gc0.count[6]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \gic0.gc0.count[6]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\gic0.gc0.count[6]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(\gic0.gc0.count_d1_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d1_reg[6]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(\gic0.gc0.count_d1_reg[6]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(\gic0.gc0.count_d1_reg[6]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[4]),
        .Q(\gic0.gc0.count_d1_reg[6]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[5]),
        .Q(\gic0.gc0.count_d1_reg[6]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[6]),
        .Q(\gic0.gc0.count_d1_reg[6]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[6]_0 [0]),
        .Q(\gic0.gc0.count_d2_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[6]_0 [1]),
        .Q(\gic0.gc0.count_d2_reg[6]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[6]_0 [2]),
        .Q(\gic0.gc0.count_d2_reg[6]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[6]_0 [3]),
        .Q(\gic0.gc0.count_d2_reg[6]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[6]_0 [4]),
        .Q(\gic0.gc0.count_d2_reg[6]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[6]_0 [5]),
        .Q(\gic0.gc0.count_d2_reg[6]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[6]_0 [6]),
        .Q(\gic0.gc0.count_d2_reg[6]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[6]),
        .Q(Q[6]));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module sd_fifo_wr_logic
   (full,
    out,
    ram_full_fb_i_reg,
    Q,
    ram_full_fb_i_reg_0,
    \gic0.gc0.count_reg[6] ,
    \gic0.gc0.count_d1_reg[6] ,
    ram_full_fb_i_reg_1,
    wr_clk,
    ram_full_fb_i_reg_2,
    wr_en,
    AR);
  output full;
  output out;
  output ram_full_fb_i_reg;
  output [6:0]Q;
  output ram_full_fb_i_reg_0;
  output [6:0]\gic0.gc0.count_reg[6] ;
  output [6:0]\gic0.gc0.count_d1_reg[6] ;
  input ram_full_fb_i_reg_1;
  input wr_clk;
  input ram_full_fb_i_reg_2;
  input wr_en;
  input [0:0]AR;

  wire [0:0]AR;
  wire [6:0]Q;
  wire full;
  wire [6:0]\gic0.gc0.count_d1_reg[6] ;
  wire [6:0]\gic0.gc0.count_reg[6] ;
  wire out;
  wire p_20_out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire wr_clk;
  wire wr_en;

  sd_fifo_wr_status_flags_as \gwas.wsts 
       (.E(p_20_out),
        .Q(Q[6]),
        .full(full),
        .out(out),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_2(ram_full_fb_i_reg_1),
        .ram_full_fb_i_reg_3(ram_full_fb_i_reg_2),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  sd_fifo_wr_bin_cntr wpntr
       (.AR(AR),
        .E(p_20_out),
        .Q(\gic0.gc0.count_reg[6] ),
        .\gic0.gc0.count_d1_reg[6]_0 (\gic0.gc0.count_d1_reg[6] ),
        .\gic0.gc0.count_d2_reg[6]_0 (Q),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module sd_fifo_wr_status_flags_as
   (full,
    out,
    ram_full_fb_i_reg_0,
    ram_full_fb_i_reg_1,
    E,
    ram_full_fb_i_reg_2,
    wr_clk,
    ram_full_fb_i_reg_3,
    wr_en,
    Q);
  output full;
  output out;
  output ram_full_fb_i_reg_0;
  output ram_full_fb_i_reg_1;
  output [0:0]E;
  input ram_full_fb_i_reg_2;
  input wr_clk;
  input ram_full_fb_i_reg_3;
  input wr_en;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire ram_full_fb_i_reg_3;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_0_63_0_2_i_1
       (.I0(ram_full_fb_i),
        .I1(wr_en),
        .I2(Q),
        .O(ram_full_fb_i_reg_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_64_127_0_2_i_1
       (.I0(ram_full_fb_i),
        .I1(wr_en),
        .I2(Q),
        .O(ram_full_fb_i_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[6]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg_2),
        .PRE(ram_full_fb_i_reg_3),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg_2),
        .PRE(ram_full_fb_i_reg_3),
        .Q(ram_full_i));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
