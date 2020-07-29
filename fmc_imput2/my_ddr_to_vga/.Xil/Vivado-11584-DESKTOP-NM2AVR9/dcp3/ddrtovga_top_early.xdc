set_property SRC_FILE_INFO {cfile:c:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/clk_convert/clk_convert.xdc rfile:../../my_ddr_to_vga.srcs/sources_1/ip/clk_convert/clk_convert.xdc id:1 order:EARLY scoped_inst:clk_generate/inst rxprname:$PSRCDIR/sources_1/ip/clk_convert/clk_convert.xdc} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/DDR3_CONTROL/ip/DDR3_CONTROL/DDR3_CONTROL/user_design/constraints/DDR3_CONTROL.xdc rfile:../../my_ddr_to_vga.srcs/DDR3_CONTROL/ip/DDR3_CONTROL/DDR3_CONTROL/user_design/constraints/DDR3_CONTROL.xdc id:2 order:EARLY scoped_inst:ddr3_top/u_DDR3_CONTROL rxprname:$PSRCDIR/DDR3_CONTROL/ip/DDR3_CONTROL/DDR3_CONTROL/user_design/constraints/DDR3_CONTROL.xdc} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/sd_fifo/sd_fifo.xdc rfile:../../my_ddr_to_vga.srcs/sources_1/ip/sd_fifo/sd_fifo.xdc id:3 order:EARLY scoped_inst:write_fifo/U0 rxprname:$PSRCDIR/sources_1/ip/sd_fifo/sd_fifo.xdc} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_big/ddr_fifo_big.xdc rfile:../../my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_big/ddr_fifo_big.xdc id:4 order:EARLY scoped_inst:fifo_data_full/read_fifo_2/U0 rxprname:$PSRCDIR/sources_1/ip/ddr_fifo_big/ddr_fifo_big.xdc} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_big/ddr_fifo_big.xdc rfile:../../my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_big/ddr_fifo_big.xdc id:5 order:EARLY scoped_inst:fifo_data_sample/read_fifo_2/U0 rxprname:$PSRCDIR/sources_1/ip/ddr_fifo_big/ddr_fifo_big.xdc} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_small/ddr_fifo_small.xdc rfile:../../my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_small/ddr_fifo_small.xdc id:6 order:EARLY scoped_inst:fifo_data_full/read_fifo_1/U0 rxprname:$PSRCDIR/sources_1/ip/ddr_fifo_small/ddr_fifo_small.xdc} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/gyz/Desktop/ddrtovga/mine/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_small/ddr_fifo_small.xdc rfile:../../my_ddr_to_vga.srcs/sources_1/ip/ddr_fifo_small/ddr_fifo_small.xdc id:7 order:EARLY scoped_inst:fifo_data_sample/read_fifo_1/U0 rxprname:$PSRCDIR/sources_1/ip/ddr_fifo_small/ddr_fifo_small.xdc} [current_design]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:CLKIN1:CLKFBOUT:clk_generate/inst/clk_in1:clkfbout_clk_convert::1:0:CLKIN1:CLKOUT0:clk_generate/inst/clk_in1:clk_vga_clk_convert::1:0:CLKIN1:CLKOUT1:clk_generate/inst/clk_in1:clk_50m_clk_convert::1:0:CLKIN1:CLKOUT1B:clk_generate/inst/clk_in1:clk_50m_n_clk_convert::1:0:CLKIN1:CLKOUT3:clk_generate/inst/clk_in1:clk_100m_clk_convert [get_cells clk_generate/inst/mmcm_adv_inst]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:CLKIN1:CLKFBOUT:pll_clk3_out:clk_pll_i::1:0:CLKIN1:CLKOUT0:pll_clk3_out:mmcm_ps_clk_bufg_in::1:0:CLKIN1:CLKOUT1:pll_clk3_out:clk_div2_bufg_in [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:CLKIN1:CLKFBOUT:clk_ori_p:pll_clkfbout::1:0:CLKIN1:CLKOUT0:clk_ori_p:freq_refclk::1:0:CLKIN1:CLKOUT1:clk_ori_p:mem_refclk::1:0:CLKIN1:CLKOUT2:clk_ori_p:sync_pulse::1:0:CLKIN1:CLKOUT3:clk_ori_p:pll_clk3_out [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_ddr3_infrastructure/plle2_i]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:CLKIN1:CLKFBOUT:clk_ori_p:mmcm_clkfbout::1:0:CLKIN1:CLKOUT1:clk_ori_p:clk_ref_mmcm_400 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:FREQREFCLK:ICLK:freq_refclk:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk::1:0:ICLK:ICLKDIV:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk:iserdes_clkdiv [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk::1:0:OCLK:OCLKDIV:oserdes_clk:oserdes_clkdiv [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:FREQREFCLK:ICLK:freq_refclk:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk::1:0:ICLK:ICLKDIV:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk:iserdes_clkdiv_1 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk_1::1:0:OCLK:OCLKDIV:oserdes_clk_1:oserdes_clkdiv_1 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:FREQREFCLK:ICLK:freq_refclk:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk::1:0:ICLK:ICLKDIV:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk:iserdes_clkdiv_2 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk_2::1:0:OCLK:OCLKDIV:oserdes_clk_2:oserdes_clkdiv_2 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:FREQREFCLK:ICLK:freq_refclk:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk::1:0:ICLK:ICLKDIV:u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk:iserdes_clkdiv_3 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk_3::1:0:OCLK:OCLKDIV:oserdes_clk_3:oserdes_clkdiv_3 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk_4::1:0:OCLK:OCLKDIV:oserdes_clk_4:oserdes_clkdiv_4 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk_5::1:0:OCLK:OCLKDIV:oserdes_clk_5:oserdes_clkdiv_5 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk_6::1:0:OCLK:OCLKDIV:oserdes_clk_6:oserdes_clkdiv_6 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out]
set_property src_info {type:PI file:{} line:-1 export:NONE save:INPUT read:READ} [current_design]
set_property TOOL_DERIVED_CLK_NAMES 1:0:MEMREFCLK:OCLK:mem_refclk:oserdes_clk_7::1:0:OCLK:OCLKDIV:oserdes_clk_7:oserdes_clkdiv_7 [get_cells ddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out]
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
# file: clk_convert.xdc
set_property src_info {type:SCOPED_XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
# (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
set_property src_info {type:SCOPED_XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
# This file contains confidential and proprietary information
set_property src_info {type:SCOPED_XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
# of Xilinx, Inc. and is protected under U.S. and
set_property src_info {type:SCOPED_XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
# international copyright and other intellectual property
set_property src_info {type:SCOPED_XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
# laws.
set_property src_info {type:SCOPED_XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
# DISCLAIMER
set_property src_info {type:SCOPED_XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
# This disclaimer is not a license and does not grant any
set_property src_info {type:SCOPED_XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
# rights to the materials distributed herewith. Except as
set_property src_info {type:SCOPED_XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
# otherwise provided in a valid license issued to you by
set_property src_info {type:SCOPED_XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx, and to the maximum extent permitted by applicable
set_property src_info {type:SCOPED_XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
set_property src_info {type:SCOPED_XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
set_property src_info {type:SCOPED_XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
set_property src_info {type:SCOPED_XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
set_property src_info {type:SCOPED_XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
# (2) Xilinx shall not be liable (whether in contract or tort,
set_property src_info {type:SCOPED_XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
# including negligence, or under any other theory of
set_property src_info {type:SCOPED_XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
# liability) for any loss or damage of any kind or nature
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
# related to, arising under or in connection with these
set_property src_info {type:SCOPED_XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
# materials, including for any direct, or any indirect,
set_property src_info {type:SCOPED_XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
# special, incidental, or consequential loss or damage
set_property src_info {type:SCOPED_XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
# (including loss of data, profits, goodwill, or any type of
set_property src_info {type:SCOPED_XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
# loss or damage suffered as a result of any action brought
set_property src_info {type:SCOPED_XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
# by a third party) even if such damage or loss was
set_property src_info {type:SCOPED_XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
# reasonably foreseeable or Xilinx had been advised of the
set_property src_info {type:SCOPED_XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
# possibility of the same.
set_property src_info {type:SCOPED_XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
# CRITICAL APPLICATIONS
set_property src_info {type:SCOPED_XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx products are not designed or intended to be fail-
set_property src_info {type:SCOPED_XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
# safe, or for use in any application requiring fail-safe
set_property src_info {type:SCOPED_XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
# performance, such as life-support or safety devices or
set_property src_info {type:SCOPED_XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
# systems, Class III medical devices, nuclear facilities,
set_property src_info {type:SCOPED_XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
# applications related to the deployment of airbags, or any
set_property src_info {type:SCOPED_XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
# other applications that could lead to death, personal
set_property src_info {type:SCOPED_XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
# injury, or severe property or environmental damage
set_property src_info {type:SCOPED_XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
# (individually and collectively, "Critical
set_property src_info {type:SCOPED_XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
# Applications"). Customer assumes the sole risk and
set_property src_info {type:SCOPED_XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
# liability of any use of Xilinx products in Critical
set_property src_info {type:SCOPED_XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
# Applications, subject only to applicable laws and
set_property src_info {type:SCOPED_XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
# regulations governing limitations on product liability.
set_property src_info {type:SCOPED_XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
set_property src_info {type:SCOPED_XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
# PART OF THIS FILE AT ALL TIMES.
set_property src_info {type:SCOPED_XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
# Input clock periods. These duplicate the values entered for the
set_property src_info {type:SCOPED_XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
# input clocks. You can use these to time your system. If required
set_property src_info {type:SCOPED_XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
# commented constraints can be used in the top level xdc
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
#----------------------------------------------------------------
set_property src_info {type:SCOPED_XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
# Connect to input port when clock capable pin is selected for input
current_instance clk_generate/inst
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 5.000 [get_ports -scoped_to_current_instance clk_in1]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports -scoped_to_current_instance clk_in1]] 0.050
set_property src_info {type:SCOPED_XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property PHASESHIFT_MODE WAVEFORM [get_cells -hierarchical *adv*]
set_property src_info {type:SCOPED_XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
##################################################################################################
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
##
set_property src_info {type:SCOPED_XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
##  Xilinx, Inc. 2010            www.xilinx.com
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
##  Thu Sep 26 14:26:40 2019
set_property src_info {type:SCOPED_XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
##  Generated by MIG Version 4.2
set_property src_info {type:SCOPED_XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
##
set_property src_info {type:SCOPED_XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
##################################################################################################
set_property src_info {type:SCOPED_XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
##  File name :       DDR3_CONTROL.xdc
set_property src_info {type:SCOPED_XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
##  Details :     Constraints file
set_property src_info {type:SCOPED_XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
##                    FPGA Family:       KINTEX7
set_property src_info {type:SCOPED_XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
##                    FPGA Part:         XC7K325T-FFG900
set_property src_info {type:SCOPED_XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
##                    Speedgrade:        -2
set_property src_info {type:SCOPED_XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
##                    Design Entry:      VERILOG
set_property src_info {type:SCOPED_XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
##                    Frequency:         800 MHz
set_property src_info {type:SCOPED_XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
##                    Time Period:       1250 ps
set_property src_info {type:SCOPED_XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
##################################################################################################
set_property src_info {type:SCOPED_XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
##################################################################################################
set_property src_info {type:SCOPED_XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
## Controller 0
set_property src_info {type:SCOPED_XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
## Memory Device: DDR3_SDRAM->Components->MT41J256m16XX-107
set_property src_info {type:SCOPED_XDC file:2 line:22 export:INPUT save:INPUT read:READ} [current_design]
## Data Width: 32
set_property src_info {type:SCOPED_XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
## Time Period: 1250
set_property src_info {type:SCOPED_XDC file:2 line:24 export:INPUT save:INPUT read:READ} [current_design]
## Data Mask: 1
set_property src_info {type:SCOPED_XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
##################################################################################################
set_property src_info {type:SCOPED_XDC file:2 line:26 export:INPUT save:INPUT read:READ} [current_design]

current_instance -quiet
set_property src_info {type:SCOPED_XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:30 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 5.000 [get_ports clk_ori_p]
set_property src_info {type:SCOPED_XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
# Note: CLK_REF FALSE Constraint.
set_property src_info {type:SCOPED_XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
# CLK_REF is a 200  MHz clock source used to drive IODELAY CTRL logic (via an
set_property src_info {type:SCOPED_XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
# additional MMCM). This clock need not utilized CLOCK_DEDICADE_ROUTE (as they
set_property src_info {type:SCOPED_XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
# are limited in number), hence the FALSE value set.
set_property src_info {type:SCOPED_XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
# Please refer to UG 586 for details on clocking resources.
current_instance ddr3_top/u_DDR3_CONTROL
set_property src_info {type:SCOPED_XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_pins -hierarchical *clk_ref_mmcm_gen.mmcm_i*CLKIN1]
set_property src_info {type:SCOPED_XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
############## NET - IOSTANDARD ##################
set_property src_info {type:SCOPED_XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:42 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L1N_T0_34
current_instance -quiet
set_property src_info {type:SCOPED_XDC file:2 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD3 [get_ports {ddr3_dq[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:47 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L2P_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC2 [get_ports {ddr3_dq[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L2N_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC1 [get_ports {ddr3_dq[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:59 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:60 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L4P_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC5 [get_ports {ddr3_dq[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:65 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:66 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L4N_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC4 [get_ports {ddr3_dq[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:71 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L5P_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD6 [get_ports {ddr3_dq[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:77 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:78 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L5N_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE6 [get_ports {ddr3_dq[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:83 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:84 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L6P_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC7 [get_ports {ddr3_dq[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:89 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:90 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L7N_T1_34
set_property src_info {type:SCOPED_XDC file:2 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF2 [get_ports {ddr3_dq[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:95 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:96 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L8P_T1_34
set_property src_info {type:SCOPED_XDC file:2 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:100 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE1 [get_ports {ddr3_dq[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:101 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:102 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L8N_T1_34
set_property src_info {type:SCOPED_XDC file:2 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF1 [get_ports {ddr3_dq[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:107 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:108 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L10P_T1_34
set_property src_info {type:SCOPED_XDC file:2 line:109 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:110 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:111 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE4 [get_ports {ddr3_dq[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:113 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:114 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L10N_T1_34
set_property src_info {type:SCOPED_XDC file:2 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:116 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:117 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:118 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE3 [get_ports {ddr3_dq[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:119 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:120 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L11P_T1_SRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:121 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:122 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:123 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE5 [get_ports {ddr3_dq[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:125 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:126 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L11N_T1_SRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:129 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:130 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF5 [get_ports {ddr3_dq[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:131 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:132 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L12P_T1_MRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[15]}]
set_property src_info {type:SCOPED_XDC file:2 line:134 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[15]}]
set_property src_info {type:SCOPED_XDC file:2 line:135 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[15]}]
set_property src_info {type:SCOPED_XDC file:2 line:136 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF6 [get_ports {ddr3_dq[15]}]
set_property src_info {type:SCOPED_XDC file:2 line:137 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:138 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L13N_T2_MRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:139 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[16]}]
set_property src_info {type:SCOPED_XDC file:2 line:140 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[16]}]
set_property src_info {type:SCOPED_XDC file:2 line:141 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[16]}]
set_property src_info {type:SCOPED_XDC file:2 line:142 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ4 [get_ports {ddr3_dq[16]}]
set_property src_info {type:SCOPED_XDC file:2 line:143 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:144 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L14P_T2_SRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:145 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[17]}]
set_property src_info {type:SCOPED_XDC file:2 line:146 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[17]}]
set_property src_info {type:SCOPED_XDC file:2 line:147 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[17]}]
set_property src_info {type:SCOPED_XDC file:2 line:148 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH6 [get_ports {ddr3_dq[17]}]
set_property src_info {type:SCOPED_XDC file:2 line:149 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:150 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L14N_T2_SRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:151 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[18]}]
set_property src_info {type:SCOPED_XDC file:2 line:152 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[18]}]
set_property src_info {type:SCOPED_XDC file:2 line:153 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[18]}]
set_property src_info {type:SCOPED_XDC file:2 line:154 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH5 [get_ports {ddr3_dq[18]}]
set_property src_info {type:SCOPED_XDC file:2 line:155 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:156 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L16P_T2_34
set_property src_info {type:SCOPED_XDC file:2 line:157 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[19]}]
set_property src_info {type:SCOPED_XDC file:2 line:158 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[19]}]
set_property src_info {type:SCOPED_XDC file:2 line:159 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[19]}]
set_property src_info {type:SCOPED_XDC file:2 line:160 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH2 [get_ports {ddr3_dq[19]}]
set_property src_info {type:SCOPED_XDC file:2 line:161 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:162 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L16N_T2_34
set_property src_info {type:SCOPED_XDC file:2 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[20]}]
set_property src_info {type:SCOPED_XDC file:2 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[20]}]
set_property src_info {type:SCOPED_XDC file:2 line:165 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[20]}]
set_property src_info {type:SCOPED_XDC file:2 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ2 [get_ports {ddr3_dq[20]}]
set_property src_info {type:SCOPED_XDC file:2 line:167 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:168 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L17P_T2_34
set_property src_info {type:SCOPED_XDC file:2 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[21]}]
set_property src_info {type:SCOPED_XDC file:2 line:170 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[21]}]
set_property src_info {type:SCOPED_XDC file:2 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[21]}]
set_property src_info {type:SCOPED_XDC file:2 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ1 [get_ports {ddr3_dq[21]}]
set_property src_info {type:SCOPED_XDC file:2 line:173 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:174 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L17N_T2_34
set_property src_info {type:SCOPED_XDC file:2 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[22]}]
set_property src_info {type:SCOPED_XDC file:2 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[22]}]
set_property src_info {type:SCOPED_XDC file:2 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[22]}]
set_property src_info {type:SCOPED_XDC file:2 line:178 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK1 [get_ports {ddr3_dq[22]}]
set_property src_info {type:SCOPED_XDC file:2 line:179 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:180 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L18P_T2_34
set_property src_info {type:SCOPED_XDC file:2 line:181 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[23]}]
set_property src_info {type:SCOPED_XDC file:2 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[23]}]
set_property src_info {type:SCOPED_XDC file:2 line:183 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[23]}]
set_property src_info {type:SCOPED_XDC file:2 line:184 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ3 [get_ports {ddr3_dq[23]}]
set_property src_info {type:SCOPED_XDC file:2 line:185 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:186 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L20P_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:187 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[24]}]
set_property src_info {type:SCOPED_XDC file:2 line:188 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[24]}]
set_property src_info {type:SCOPED_XDC file:2 line:189 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[24]}]
set_property src_info {type:SCOPED_XDC file:2 line:190 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF7 [get_ports {ddr3_dq[24]}]
set_property src_info {type:SCOPED_XDC file:2 line:191 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:192 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L20N_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:193 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[25]}]
set_property src_info {type:SCOPED_XDC file:2 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[25]}]
set_property src_info {type:SCOPED_XDC file:2 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[25]}]
set_property src_info {type:SCOPED_XDC file:2 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG7 [get_ports {ddr3_dq[25]}]
set_property src_info {type:SCOPED_XDC file:2 line:197 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:198 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L22P_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[26]}]
set_property src_info {type:SCOPED_XDC file:2 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[26]}]
set_property src_info {type:SCOPED_XDC file:2 line:201 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[26]}]
set_property src_info {type:SCOPED_XDC file:2 line:202 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ6 [get_ports {ddr3_dq[26]}]
set_property src_info {type:SCOPED_XDC file:2 line:203 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:204 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L22N_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:205 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[27]}]
set_property src_info {type:SCOPED_XDC file:2 line:206 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[27]}]
set_property src_info {type:SCOPED_XDC file:2 line:207 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[27]}]
set_property src_info {type:SCOPED_XDC file:2 line:208 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK6 [get_ports {ddr3_dq[27]}]
set_property src_info {type:SCOPED_XDC file:2 line:209 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:210 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L23P_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:211 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[28]}]
set_property src_info {type:SCOPED_XDC file:2 line:212 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[28]}]
set_property src_info {type:SCOPED_XDC file:2 line:213 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[28]}]
set_property src_info {type:SCOPED_XDC file:2 line:214 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ8 [get_ports {ddr3_dq[28]}]
set_property src_info {type:SCOPED_XDC file:2 line:215 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:216 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L23N_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:217 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[29]}]
set_property src_info {type:SCOPED_XDC file:2 line:218 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[29]}]
set_property src_info {type:SCOPED_XDC file:2 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[29]}]
set_property src_info {type:SCOPED_XDC file:2 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK8 [get_ports {ddr3_dq[29]}]
set_property src_info {type:SCOPED_XDC file:2 line:221 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:222 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L24P_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:223 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[30]}]
set_property src_info {type:SCOPED_XDC file:2 line:224 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[30]}]
set_property src_info {type:SCOPED_XDC file:2 line:225 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[30]}]
set_property src_info {type:SCOPED_XDC file:2 line:226 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK5 [get_ports {ddr3_dq[30]}]
set_property src_info {type:SCOPED_XDC file:2 line:227 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:228 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L24N_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:229 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dq[31]}]
set_property src_info {type:SCOPED_XDC file:2 line:230 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dq[31]}]
set_property src_info {type:SCOPED_XDC file:2 line:231 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[31]}]
set_property src_info {type:SCOPED_XDC file:2 line:232 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK4 [get_ports {ddr3_dq[31]}]
set_property src_info {type:SCOPED_XDC file:2 line:233 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:234 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L16N_T2_33
set_property src_info {type:SCOPED_XDC file:2 line:235 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:236 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:237 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:238 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH9 [get_ports {ddr3_addr[14]}]
set_property src_info {type:SCOPED_XDC file:2 line:239 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:240 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L1P_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:241 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:242 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:243 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:244 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA12 [get_ports {ddr3_addr[13]}]
set_property src_info {type:SCOPED_XDC file:2 line:245 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:246 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L1N_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:247 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:248 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:249 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:250 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB12 [get_ports {ddr3_addr[12]}]
set_property src_info {type:SCOPED_XDC file:2 line:251 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:252 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L2P_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:253 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:254 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:255 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:256 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA8 [get_ports {ddr3_addr[11]}]
set_property src_info {type:SCOPED_XDC file:2 line:257 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:258 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L2N_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:259 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:260 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:261 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:262 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB8 [get_ports {ddr3_addr[10]}]
set_property src_info {type:SCOPED_XDC file:2 line:263 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:264 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L4P_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:265 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:266 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:267 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:268 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y11 [get_ports {ddr3_addr[9]}]
set_property src_info {type:SCOPED_XDC file:2 line:269 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:270 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L4N_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:271 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:272 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:273 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:274 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y10 [get_ports {ddr3_addr[8]}]
set_property src_info {type:SCOPED_XDC file:2 line:275 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:276 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L5P_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:277 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:278 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:279 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:280 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA11 [get_ports {ddr3_addr[7]}]
set_property src_info {type:SCOPED_XDC file:2 line:281 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:282 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L5N_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:283 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:284 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:285 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:286 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA10 [get_ports {ddr3_addr[6]}]
set_property src_info {type:SCOPED_XDC file:2 line:287 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:288 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L6P_T0_33
set_property src_info {type:SCOPED_XDC file:2 line:289 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:290 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:291 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:292 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA13 [get_ports {ddr3_addr[5]}]
set_property src_info {type:SCOPED_XDC file:2 line:293 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:294 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L10P_T1_33
set_property src_info {type:SCOPED_XDC file:2 line:295 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:296 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:297 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:298 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD9 [get_ports {ddr3_addr[4]}]
set_property src_info {type:SCOPED_XDC file:2 line:299 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:300 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L7N_T1_33
set_property src_info {type:SCOPED_XDC file:2 line:301 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:302 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:303 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:304 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC10 [get_ports {ddr3_addr[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:305 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:306 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L8P_T1_33
set_property src_info {type:SCOPED_XDC file:2 line:307 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:308 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:309 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:310 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD8 [get_ports {ddr3_addr[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:311 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:312 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L8N_T1_33
set_property src_info {type:SCOPED_XDC file:2 line:313 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:314 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:315 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:316 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE8 [get_ports {ddr3_addr[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:317 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:318 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L9P_T1_DQS_33
set_property src_info {type:SCOPED_XDC file:2 line:319 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_addr[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:320 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_addr[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:321 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:322 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC12 [get_ports {ddr3_addr[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:323 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:324 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L9N_T1_DQS_33
set_property src_info {type:SCOPED_XDC file:2 line:325 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_ba[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:326 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_ba[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:327 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:328 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC11 [get_ports {ddr3_ba[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:329 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:330 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L7P_T1_33
set_property src_info {type:SCOPED_XDC file:2 line:331 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_ba[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:332 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_ba[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:333 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:334 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB10 [get_ports {ddr3_ba[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:335 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:336 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L10N_T1_33
set_property src_info {type:SCOPED_XDC file:2 line:337 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_ba[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:338 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_ba[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:339 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:340 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE9 [get_ports {ddr3_ba[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:341 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:342 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L11P_T1_SRCC_33
set_property src_info {type:SCOPED_XDC file:2 line:343 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports ddr3_ras_n]
set_property src_info {type:SCOPED_XDC file:2 line:344 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddr3_ras_n]
set_property src_info {type:SCOPED_XDC file:2 line:345 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports ddr3_ras_n]
set_property src_info {type:SCOPED_XDC file:2 line:346 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE11 [get_ports ddr3_ras_n]
set_property src_info {type:SCOPED_XDC file:2 line:347 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:348 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L11N_T1_SRCC_33
set_property src_info {type:SCOPED_XDC file:2 line:349 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports ddr3_cas_n]
set_property src_info {type:SCOPED_XDC file:2 line:350 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddr3_cas_n]
set_property src_info {type:SCOPED_XDC file:2 line:351 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports ddr3_cas_n]
set_property src_info {type:SCOPED_XDC file:2 line:352 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF11 [get_ports ddr3_cas_n]
set_property src_info {type:SCOPED_XDC file:2 line:353 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:354 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L24P_T3_33
set_property src_info {type:SCOPED_XDC file:2 line:355 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports ddr3_we_n]
set_property src_info {type:SCOPED_XDC file:2 line:356 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddr3_we_n]
set_property src_info {type:SCOPED_XDC file:2 line:357 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports ddr3_we_n]
set_property src_info {type:SCOPED_XDC file:2 line:358 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG13 [get_ports ddr3_we_n]
set_property src_info {type:SCOPED_XDC file:2 line:359 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:360 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L12N_T1_MRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:361 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports ddr3_reset_n]
set_property src_info {type:SCOPED_XDC file:2 line:362 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddr3_reset_n]
set_property src_info {type:SCOPED_XDC file:2 line:363 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports ddr3_reset_n]
set_property src_info {type:SCOPED_XDC file:2 line:364 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG5 [get_ports ddr3_reset_n]
set_property src_info {type:SCOPED_XDC file:2 line:365 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:366 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L15P_T2_DQS_33
set_property src_info {type:SCOPED_XDC file:2 line:367 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_cke[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:368 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_cke[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:369 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:370 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ9 [get_ports {ddr3_cke[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:371 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:372 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L15N_T2_DQS_33
set_property src_info {type:SCOPED_XDC file:2 line:373 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_odt[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:374 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_odt[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:376 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK9 [get_ports {ddr3_odt[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:377 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:378 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L24N_T3_33
set_property src_info {type:SCOPED_XDC file:2 line:379 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_cs_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:380 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_cs_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:381 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cs_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:382 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH12 [get_ports {ddr3_cs_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:383 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:384 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L1P_T0_34
set_property src_info {type:SCOPED_XDC file:2 line:385 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dm[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:386 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dm[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:387 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:388 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD4 [get_ports {ddr3_dm[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:389 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:390 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L7P_T1_34
set_property src_info {type:SCOPED_XDC file:2 line:391 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dm[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:392 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dm[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:393 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:394 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF3 [get_ports {ddr3_dm[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:395 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:396 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L13P_T2_MRCC_34
set_property src_info {type:SCOPED_XDC file:2 line:397 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dm[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:398 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dm[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:399 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:400 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH4 [get_ports {ddr3_dm[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:401 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:402 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L19P_T3_34
set_property src_info {type:SCOPED_XDC file:2 line:403 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dm[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:404 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dm[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:405 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:406 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF8 [get_ports {ddr3_dm[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:407 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:408 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L12P_T1_MRCC_33
set_property src_info {type:SCOPED_XDC file:2 line:409 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO DONTCARE [get_ports clk_ori_p]
set_property src_info {type:SCOPED_XDC file:2 line:412 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:413 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L12N_T1_MRCC_33
set_property src_info {type:SCOPED_XDC file:2 line:417 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:418 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L19P_T3_16
set_property src_info {type:SCOPED_XDC file:2 line:421 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:422 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L3P_T0_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:423 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dqs_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:424 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:425 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:427 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:428 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L3N_T0_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:430 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:431 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:432 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD2 [get_ports {ddr3_dqs_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:432 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD1 [get_ports {ddr3_dqs_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:433 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:434 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L9P_T1_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:435 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dqs_p[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:436 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:437 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:439 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:440 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L9N_T1_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:442 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:443 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:444 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG4 [get_ports {ddr3_dqs_p[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:444 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG3 [get_ports {ddr3_dqs_n[1]}]
set_property src_info {type:SCOPED_XDC file:2 line:445 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:446 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L15P_T2_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:447 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dqs_p[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:448 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_p[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:449 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:451 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:452 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L15N_T2_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:454 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_n[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:455 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:456 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG2 [get_ports {ddr3_dqs_p[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:456 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH1 [get_ports {ddr3_dqs_n[2]}]
set_property src_info {type:SCOPED_XDC file:2 line:457 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:458 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L21P_T3_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:459 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_dqs_p[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:460 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_p[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:461 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:463 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:464 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L21N_T3_DQS_34
set_property src_info {type:SCOPED_XDC file:2 line:466 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_dqs_n[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:467 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:468 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH7 [get_ports {ddr3_dqs_p[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:468 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ7 [get_ports {ddr3_dqs_n[3]}]
set_property src_info {type:SCOPED_XDC file:2 line:469 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:470 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L3P_T0_DQS_33
set_property src_info {type:SCOPED_XDC file:2 line:471 export:INPUT save:INPUT read:READ} [current_design]
set_property VCCAUX_IO HIGH [get_ports {ddr3_ck_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:472 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_ck_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:473 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:475 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:476 export:INPUT save:INPUT read:READ} [current_design]
# PadFunction: IO_L3N_T0_DQS_33
set_property src_info {type:SCOPED_XDC file:2 line:478 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddr3_ck_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:479 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:480 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB9 [get_ports {ddr3_ck_p[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:480 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AC9 [get_ports {ddr3_ck_n[0]}]
set_property src_info {type:SCOPED_XDC file:2 line:481 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:482 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:483 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:484 export:INPUT save:INPUT read:READ} [current_design]

current_instance ddr3_top/u_DDR3_CONTROL
set_property src_info {type:SCOPED_XDC file:2 line:485 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y7 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:486 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y6 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:487 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y5 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:488 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y4 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:489 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y11 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:490 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y10 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:491 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y9 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:492 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_OUT_PHY_X1Y8 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]
set_property src_info {type:SCOPED_XDC file:2 line:493 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:494 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:495 export:INPUT save:INPUT read:READ} [current_design]
## set_property LOC PHASER_IN_PHY_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:496 export:INPUT save:INPUT read:READ} [current_design]
## set_property LOC PHASER_IN_PHY_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:497 export:INPUT save:INPUT read:READ} [current_design]
## set_property LOC PHASER_IN_PHY_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:498 export:INPUT save:INPUT read:READ} [current_design]
## set_property LOC PHASER_IN_PHY_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:499 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_IN_PHY_X1Y11 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:500 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_IN_PHY_X1Y10 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:501 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_IN_PHY_X1Y9 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:502 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_IN_PHY_X1Y8 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]
set_property src_info {type:SCOPED_XDC file:2 line:503 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:504 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:505 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:506 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:507 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:508 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y7 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:509 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y6 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:510 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y5 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:511 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y4 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:512 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y11 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:513 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y10 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:514 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y9 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:515 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OUT_FIFO_X1Y8 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:516 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:517 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:518 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC IN_FIFO_X1Y11 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/in_fifo_gen.in_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:519 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC IN_FIFO_X1Y10 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/in_fifo_gen.in_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:520 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC IN_FIFO_X1Y9 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:521 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC IN_FIFO_X1Y8 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]
set_property src_info {type:SCOPED_XDC file:2 line:522 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:523 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:524 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHY_CONTROL_X1Y1 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phy_control_i}]
set_property src_info {type:SCOPED_XDC file:2 line:525 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHY_CONTROL_X1Y2 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phy_control_i}]
set_property src_info {type:SCOPED_XDC file:2 line:526 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:527 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:528 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_REF_X1Y1 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phaser_ref_i}]
set_property src_info {type:SCOPED_XDC file:2 line:529 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PHASER_REF_X1Y2 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phaser_ref_i}]
set_property src_info {type:SCOPED_XDC file:2 line:530 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:531 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:532 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OLOGIC_X1Y143 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/*slave_ts}]
set_property src_info {type:SCOPED_XDC file:2 line:533 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OLOGIC_X1Y131 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/*slave_ts}]
set_property src_info {type:SCOPED_XDC file:2 line:534 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OLOGIC_X1Y119 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
set_property src_info {type:SCOPED_XDC file:2 line:535 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC OLOGIC_X1Y107 [get_cells -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]
set_property src_info {type:SCOPED_XDC file:2 line:536 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:537 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:538 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:539 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PLLE2_ADV_X1Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/plle2_i}]
set_property src_info {type:SCOPED_XDC file:2 line:540 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC MMCME2_ADV_X1Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/gen_mmcm.mmcm_i}]
set_property src_info {type:SCOPED_XDC file:2 line:541 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:542 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:543 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:544 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -setup -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] -to [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] 6
set_property src_info {type:SCOPED_XDC file:2 line:547 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:548 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -hold -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] -to [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] 5
set_property src_info {type:SCOPED_XDC file:2 line:551 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:552 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -filter {NAME =~ */DQSFOUND} -of [get_cells -hier -filter {REF_NAME == PHASER_IN_PHY}]]
set_property src_info {type:SCOPED_XDC file:2 line:553 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:554 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -setup -start -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] 2
set_property src_info {type:SCOPED_XDC file:2 line:555 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -hold -start -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] 1
set_property src_info {type:SCOPED_XDC file:2 line:556 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:557 export:INPUT save:INPUT read:READ} [current_design]
#set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/* && IS_SEQUENTIAL}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] 20
set_property src_info {type:SCOPED_XDC file:2 line:558 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -to [get_pins -hier -include_replicated_objects -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1_reg[*]/D}] 20.000
set_property src_info {type:SCOPED_XDC file:2 line:559 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -hier *rstdiv0_sync_r1_reg*] -to [get_pins -filter {NAME =~ */RESET} -of [get_cells -hier -filter {REF_NAME == PHY_CONTROL}]] 5.000
set_property src_info {type:SCOPED_XDC file:2 line:560 export:INPUT save:INPUT read:READ} [current_design]
#set_false_path -through [get_pins -hier -filter {NAME =~ */u_iodelay_ctrl/sys_rst}]
set_property src_info {type:SCOPED_XDC file:2 line:562 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:563 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *ddr3_infrastructure/rstdiv0_sync_r1_reg*}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/xadc_supplied_temperature.rst_r1*}] 20.000
set_property src_info {type:SCOPED_XDC file:2 line:564 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:2 line:565 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:1 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:3 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:4 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:5 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:6 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:7 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:3 line:8 export:INPUT save:INPUT read:READ} [current_design]
# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
set_property src_info {type:SCOPED_XDC file:3 line:9 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:3 line:10 export:INPUT save:INPUT read:READ} [current_design]
# This file contains confidential and proprietary information
set_property src_info {type:SCOPED_XDC file:3 line:11 export:INPUT save:INPUT read:READ} [current_design]
# of Xilinx, Inc. and is protected under U.S. and
set_property src_info {type:SCOPED_XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
# international copyright and other intellectual property
set_property src_info {type:SCOPED_XDC file:3 line:13 export:INPUT save:INPUT read:READ} [current_design]
# laws.
set_property src_info {type:SCOPED_XDC file:3 line:14 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:3 line:15 export:INPUT save:INPUT read:READ} [current_design]
# DISCLAIMER
set_property src_info {type:SCOPED_XDC file:3 line:16 export:INPUT save:INPUT read:READ} [current_design]
# This disclaimer is not a license and does not grant any
set_property src_info {type:SCOPED_XDC file:3 line:17 export:INPUT save:INPUT read:READ} [current_design]
# rights to the materials distributed herewith. Except as
set_property src_info {type:SCOPED_XDC file:3 line:18 export:INPUT save:INPUT read:READ} [current_design]
# otherwise provided in a valid license issued to you by
set_property src_info {type:SCOPED_XDC file:3 line:19 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx, and to the maximum extent permitted by applicable
set_property src_info {type:SCOPED_XDC file:3 line:20 export:INPUT save:INPUT read:READ} [current_design]
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
set_property src_info {type:SCOPED_XDC file:3 line:21 export:INPUT save:INPUT read:READ} [current_design]
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
set_property src_info {type:SCOPED_XDC file:3 line:22 export:INPUT save:INPUT read:READ} [current_design]
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
set_property src_info {type:SCOPED_XDC file:3 line:23 export:INPUT save:INPUT read:READ} [current_design]
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
set_property src_info {type:SCOPED_XDC file:3 line:24 export:INPUT save:INPUT read:READ} [current_design]
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
set_property src_info {type:SCOPED_XDC file:3 line:25 export:INPUT save:INPUT read:READ} [current_design]
# (2) Xilinx shall not be liable (whether in contract or tort,
set_property src_info {type:SCOPED_XDC file:3 line:26 export:INPUT save:INPUT read:READ} [current_design]
# including negligence, or under any other theory of
set_property src_info {type:SCOPED_XDC file:3 line:27 export:INPUT save:INPUT read:READ} [current_design]
# liability) for any loss or damage of any kind or nature
set_property src_info {type:SCOPED_XDC file:3 line:28 export:INPUT save:INPUT read:READ} [current_design]
# related to, arising under or in connection with these
set_property src_info {type:SCOPED_XDC file:3 line:29 export:INPUT save:INPUT read:READ} [current_design]
# materials, including for any direct, or any indirect,
set_property src_info {type:SCOPED_XDC file:3 line:30 export:INPUT save:INPUT read:READ} [current_design]
# special, incidental, or consequential loss or damage
set_property src_info {type:SCOPED_XDC file:3 line:31 export:INPUT save:INPUT read:READ} [current_design]
# (including loss of data, profits, goodwill, or any type of
set_property src_info {type:SCOPED_XDC file:3 line:32 export:INPUT save:INPUT read:READ} [current_design]
# loss or damage suffered as a result of any action brought
set_property src_info {type:SCOPED_XDC file:3 line:33 export:INPUT save:INPUT read:READ} [current_design]
# by a third party) even if such damage or loss was
set_property src_info {type:SCOPED_XDC file:3 line:34 export:INPUT save:INPUT read:READ} [current_design]
# reasonably foreseeable or Xilinx had been advised of the
set_property src_info {type:SCOPED_XDC file:3 line:35 export:INPUT save:INPUT read:READ} [current_design]
# possibility of the same.
set_property src_info {type:SCOPED_XDC file:3 line:36 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:3 line:37 export:INPUT save:INPUT read:READ} [current_design]
# CRITICAL APPLICATIONS
set_property src_info {type:SCOPED_XDC file:3 line:38 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx products are not designed or intended to be fail-
set_property src_info {type:SCOPED_XDC file:3 line:39 export:INPUT save:INPUT read:READ} [current_design]
# safe, or for use in any application requiring fail-safe
set_property src_info {type:SCOPED_XDC file:3 line:40 export:INPUT save:INPUT read:READ} [current_design]
# performance, such as life-support or safety devices or
set_property src_info {type:SCOPED_XDC file:3 line:41 export:INPUT save:INPUT read:READ} [current_design]
# systems, Class III medical devices, nuclear facilities,
set_property src_info {type:SCOPED_XDC file:3 line:42 export:INPUT save:INPUT read:READ} [current_design]
# applications related to the deployment of airbags, or any
set_property src_info {type:SCOPED_XDC file:3 line:43 export:INPUT save:INPUT read:READ} [current_design]
# other applications that could lead to death, personal
set_property src_info {type:SCOPED_XDC file:3 line:44 export:INPUT save:INPUT read:READ} [current_design]
# injury, or severe property or environmental damage
set_property src_info {type:SCOPED_XDC file:3 line:45 export:INPUT save:INPUT read:READ} [current_design]
# (individually and collectively, "Critical
set_property src_info {type:SCOPED_XDC file:3 line:46 export:INPUT save:INPUT read:READ} [current_design]
# Applications"). Customer assumes the sole risk and
set_property src_info {type:SCOPED_XDC file:3 line:47 export:INPUT save:INPUT read:READ} [current_design]
# liability of any use of Xilinx products in Critical
set_property src_info {type:SCOPED_XDC file:3 line:48 export:INPUT save:INPUT read:READ} [current_design]
# Applications, subject only to applicable laws and
set_property src_info {type:SCOPED_XDC file:3 line:49 export:INPUT save:INPUT read:READ} [current_design]
# regulations governing limitations on product liability.
set_property src_info {type:SCOPED_XDC file:3 line:50 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:3 line:51 export:INPUT save:INPUT read:READ} [current_design]
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
set_property src_info {type:SCOPED_XDC file:3 line:52 export:INPUT save:INPUT read:READ} [current_design]
# PART OF THIS FILE AT ALL TIMES.
set_property src_info {type:SCOPED_XDC file:3 line:53 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:3 line:54 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:3 line:55 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:56 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
#                         Native FIFO Constraints                              #
set_property src_info {type:SCOPED_XDC file:3 line:58 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:3 line:59 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:60 export:INPUT save:INPUT read:READ} [current_design]
# Set false path on the asynchronous reset port (rst) to the inputs of synchronizers
set_property src_info {type:SCOPED_XDC file:3 line:61 export:INPUT save:INPUT read:READ} [current_design]
#set_false_path -through [get_pins -of [get_cells -hier -filter name=~*rst_wr_reg2_inst*/arststages_ff_reg[1]] -filter {REF_PIN_NAME == Q}] -to [get_pins -of [get_cells -hier -filter name=~*rstblk*/*] -filter {REF_PIN_NAME == PRE}]
set_property src_info {type:SCOPED_XDC file:3 line:62 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:63 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:64 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:65 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:3 line:66 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:3 line:67 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:1 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:2 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:3 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:4 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:5 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:6 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:7 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:4 line:8 export:INPUT save:INPUT read:READ} [current_design]
# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
set_property src_info {type:SCOPED_XDC file:4 line:9 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:4 line:10 export:INPUT save:INPUT read:READ} [current_design]
# This file contains confidential and proprietary information
set_property src_info {type:SCOPED_XDC file:4 line:11 export:INPUT save:INPUT read:READ} [current_design]
# of Xilinx, Inc. and is protected under U.S. and
set_property src_info {type:SCOPED_XDC file:4 line:12 export:INPUT save:INPUT read:READ} [current_design]
# international copyright and other intellectual property
set_property src_info {type:SCOPED_XDC file:4 line:13 export:INPUT save:INPUT read:READ} [current_design]
# laws.
set_property src_info {type:SCOPED_XDC file:4 line:14 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:4 line:15 export:INPUT save:INPUT read:READ} [current_design]
# DISCLAIMER
set_property src_info {type:SCOPED_XDC file:4 line:16 export:INPUT save:INPUT read:READ} [current_design]
# This disclaimer is not a license and does not grant any
set_property src_info {type:SCOPED_XDC file:4 line:17 export:INPUT save:INPUT read:READ} [current_design]
# rights to the materials distributed herewith. Except as
set_property src_info {type:SCOPED_XDC file:4 line:18 export:INPUT save:INPUT read:READ} [current_design]
# otherwise provided in a valid license issued to you by
set_property src_info {type:SCOPED_XDC file:4 line:19 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx, and to the maximum extent permitted by applicable
set_property src_info {type:SCOPED_XDC file:4 line:20 export:INPUT save:INPUT read:READ} [current_design]
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
set_property src_info {type:SCOPED_XDC file:4 line:21 export:INPUT save:INPUT read:READ} [current_design]
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
set_property src_info {type:SCOPED_XDC file:4 line:22 export:INPUT save:INPUT read:READ} [current_design]
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
set_property src_info {type:SCOPED_XDC file:4 line:23 export:INPUT save:INPUT read:READ} [current_design]
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
set_property src_info {type:SCOPED_XDC file:4 line:24 export:INPUT save:INPUT read:READ} [current_design]
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
set_property src_info {type:SCOPED_XDC file:4 line:25 export:INPUT save:INPUT read:READ} [current_design]
# (2) Xilinx shall not be liable (whether in contract or tort,
set_property src_info {type:SCOPED_XDC file:4 line:26 export:INPUT save:INPUT read:READ} [current_design]
# including negligence, or under any other theory of
set_property src_info {type:SCOPED_XDC file:4 line:27 export:INPUT save:INPUT read:READ} [current_design]
# liability) for any loss or damage of any kind or nature
set_property src_info {type:SCOPED_XDC file:4 line:28 export:INPUT save:INPUT read:READ} [current_design]
# related to, arising under or in connection with these
set_property src_info {type:SCOPED_XDC file:4 line:29 export:INPUT save:INPUT read:READ} [current_design]
# materials, including for any direct, or any indirect,
set_property src_info {type:SCOPED_XDC file:4 line:30 export:INPUT save:INPUT read:READ} [current_design]
# special, incidental, or consequential loss or damage
set_property src_info {type:SCOPED_XDC file:4 line:31 export:INPUT save:INPUT read:READ} [current_design]
# (including loss of data, profits, goodwill, or any type of
set_property src_info {type:SCOPED_XDC file:4 line:32 export:INPUT save:INPUT read:READ} [current_design]
# loss or damage suffered as a result of any action brought
set_property src_info {type:SCOPED_XDC file:4 line:33 export:INPUT save:INPUT read:READ} [current_design]
# by a third party) even if such damage or loss was
set_property src_info {type:SCOPED_XDC file:4 line:34 export:INPUT save:INPUT read:READ} [current_design]
# reasonably foreseeable or Xilinx had been advised of the
set_property src_info {type:SCOPED_XDC file:4 line:35 export:INPUT save:INPUT read:READ} [current_design]
# possibility of the same.
set_property src_info {type:SCOPED_XDC file:4 line:36 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:4 line:37 export:INPUT save:INPUT read:READ} [current_design]
# CRITICAL APPLICATIONS
set_property src_info {type:SCOPED_XDC file:4 line:38 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx products are not designed or intended to be fail-
set_property src_info {type:SCOPED_XDC file:4 line:39 export:INPUT save:INPUT read:READ} [current_design]
# safe, or for use in any application requiring fail-safe
set_property src_info {type:SCOPED_XDC file:4 line:40 export:INPUT save:INPUT read:READ} [current_design]
# performance, such as life-support or safety devices or
set_property src_info {type:SCOPED_XDC file:4 line:41 export:INPUT save:INPUT read:READ} [current_design]
# systems, Class III medical devices, nuclear facilities,
set_property src_info {type:SCOPED_XDC file:4 line:42 export:INPUT save:INPUT read:READ} [current_design]
# applications related to the deployment of airbags, or any
set_property src_info {type:SCOPED_XDC file:4 line:43 export:INPUT save:INPUT read:READ} [current_design]
# other applications that could lead to death, personal
set_property src_info {type:SCOPED_XDC file:4 line:44 export:INPUT save:INPUT read:READ} [current_design]
# injury, or severe property or environmental damage
set_property src_info {type:SCOPED_XDC file:4 line:45 export:INPUT save:INPUT read:READ} [current_design]
# (individually and collectively, "Critical
set_property src_info {type:SCOPED_XDC file:4 line:46 export:INPUT save:INPUT read:READ} [current_design]
# Applications"). Customer assumes the sole risk and
set_property src_info {type:SCOPED_XDC file:4 line:47 export:INPUT save:INPUT read:READ} [current_design]
# liability of any use of Xilinx products in Critical
set_property src_info {type:SCOPED_XDC file:4 line:48 export:INPUT save:INPUT read:READ} [current_design]
# Applications, subject only to applicable laws and
set_property src_info {type:SCOPED_XDC file:4 line:49 export:INPUT save:INPUT read:READ} [current_design]
# regulations governing limitations on product liability.
set_property src_info {type:SCOPED_XDC file:4 line:50 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:4 line:51 export:INPUT save:INPUT read:READ} [current_design]
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
set_property src_info {type:SCOPED_XDC file:4 line:52 export:INPUT save:INPUT read:READ} [current_design]
# PART OF THIS FILE AT ALL TIMES.
set_property src_info {type:SCOPED_XDC file:4 line:53 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:4 line:54 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:4 line:55 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:56 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:4 line:57 export:INPUT save:INPUT read:READ} [current_design]
#                         Native FIFO Constraints                              #
set_property src_info {type:SCOPED_XDC file:4 line:58 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:4 line:59 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:60 export:INPUT save:INPUT read:READ} [current_design]
# Set false path on the asynchronous reset port (rst) to the inputs of synchronizers
set_property src_info {type:SCOPED_XDC file:4 line:61 export:INPUT save:INPUT read:READ} [current_design]
#set_false_path -through [get_pins -of [get_cells -hier -filter name=~*rst_wr_reg2_inst*/arststages_ff_reg[1]] -filter {REF_PIN_NAME == Q}] -to [get_pins -of [get_cells -hier -filter name=~*rstblk*/*] -filter {REF_PIN_NAME == PRE}]
set_property src_info {type:SCOPED_XDC file:4 line:62 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:63 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:64 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:65 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:4 line:66 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:4 line:67 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:1 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:2 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:3 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:4 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:5 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:6 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:7 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:5 line:8 export:INPUT save:INPUT read:READ} [current_design]
# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
set_property src_info {type:SCOPED_XDC file:5 line:9 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:5 line:10 export:INPUT save:INPUT read:READ} [current_design]
# This file contains confidential and proprietary information
set_property src_info {type:SCOPED_XDC file:5 line:11 export:INPUT save:INPUT read:READ} [current_design]
# of Xilinx, Inc. and is protected under U.S. and
set_property src_info {type:SCOPED_XDC file:5 line:12 export:INPUT save:INPUT read:READ} [current_design]
# international copyright and other intellectual property
set_property src_info {type:SCOPED_XDC file:5 line:13 export:INPUT save:INPUT read:READ} [current_design]
# laws.
set_property src_info {type:SCOPED_XDC file:5 line:14 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:5 line:15 export:INPUT save:INPUT read:READ} [current_design]
# DISCLAIMER
set_property src_info {type:SCOPED_XDC file:5 line:16 export:INPUT save:INPUT read:READ} [current_design]
# This disclaimer is not a license and does not grant any
set_property src_info {type:SCOPED_XDC file:5 line:17 export:INPUT save:INPUT read:READ} [current_design]
# rights to the materials distributed herewith. Except as
set_property src_info {type:SCOPED_XDC file:5 line:18 export:INPUT save:INPUT read:READ} [current_design]
# otherwise provided in a valid license issued to you by
set_property src_info {type:SCOPED_XDC file:5 line:19 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx, and to the maximum extent permitted by applicable
set_property src_info {type:SCOPED_XDC file:5 line:20 export:INPUT save:INPUT read:READ} [current_design]
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
set_property src_info {type:SCOPED_XDC file:5 line:21 export:INPUT save:INPUT read:READ} [current_design]
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
set_property src_info {type:SCOPED_XDC file:5 line:22 export:INPUT save:INPUT read:READ} [current_design]
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
set_property src_info {type:SCOPED_XDC file:5 line:23 export:INPUT save:INPUT read:READ} [current_design]
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
set_property src_info {type:SCOPED_XDC file:5 line:24 export:INPUT save:INPUT read:READ} [current_design]
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
set_property src_info {type:SCOPED_XDC file:5 line:25 export:INPUT save:INPUT read:READ} [current_design]
# (2) Xilinx shall not be liable (whether in contract or tort,
set_property src_info {type:SCOPED_XDC file:5 line:26 export:INPUT save:INPUT read:READ} [current_design]
# including negligence, or under any other theory of
set_property src_info {type:SCOPED_XDC file:5 line:27 export:INPUT save:INPUT read:READ} [current_design]
# liability) for any loss or damage of any kind or nature
set_property src_info {type:SCOPED_XDC file:5 line:28 export:INPUT save:INPUT read:READ} [current_design]
# related to, arising under or in connection with these
set_property src_info {type:SCOPED_XDC file:5 line:29 export:INPUT save:INPUT read:READ} [current_design]
# materials, including for any direct, or any indirect,
set_property src_info {type:SCOPED_XDC file:5 line:30 export:INPUT save:INPUT read:READ} [current_design]
# special, incidental, or consequential loss or damage
set_property src_info {type:SCOPED_XDC file:5 line:31 export:INPUT save:INPUT read:READ} [current_design]
# (including loss of data, profits, goodwill, or any type of
set_property src_info {type:SCOPED_XDC file:5 line:32 export:INPUT save:INPUT read:READ} [current_design]
# loss or damage suffered as a result of any action brought
set_property src_info {type:SCOPED_XDC file:5 line:33 export:INPUT save:INPUT read:READ} [current_design]
# by a third party) even if such damage or loss was
set_property src_info {type:SCOPED_XDC file:5 line:34 export:INPUT save:INPUT read:READ} [current_design]
# reasonably foreseeable or Xilinx had been advised of the
set_property src_info {type:SCOPED_XDC file:5 line:35 export:INPUT save:INPUT read:READ} [current_design]
# possibility of the same.
set_property src_info {type:SCOPED_XDC file:5 line:36 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:5 line:37 export:INPUT save:INPUT read:READ} [current_design]
# CRITICAL APPLICATIONS
set_property src_info {type:SCOPED_XDC file:5 line:38 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx products are not designed or intended to be fail-
set_property src_info {type:SCOPED_XDC file:5 line:39 export:INPUT save:INPUT read:READ} [current_design]
# safe, or for use in any application requiring fail-safe
set_property src_info {type:SCOPED_XDC file:5 line:40 export:INPUT save:INPUT read:READ} [current_design]
# performance, such as life-support or safety devices or
set_property src_info {type:SCOPED_XDC file:5 line:41 export:INPUT save:INPUT read:READ} [current_design]
# systems, Class III medical devices, nuclear facilities,
set_property src_info {type:SCOPED_XDC file:5 line:42 export:INPUT save:INPUT read:READ} [current_design]
# applications related to the deployment of airbags, or any
set_property src_info {type:SCOPED_XDC file:5 line:43 export:INPUT save:INPUT read:READ} [current_design]
# other applications that could lead to death, personal
set_property src_info {type:SCOPED_XDC file:5 line:44 export:INPUT save:INPUT read:READ} [current_design]
# injury, or severe property or environmental damage
set_property src_info {type:SCOPED_XDC file:5 line:45 export:INPUT save:INPUT read:READ} [current_design]
# (individually and collectively, "Critical
set_property src_info {type:SCOPED_XDC file:5 line:46 export:INPUT save:INPUT read:READ} [current_design]
# Applications"). Customer assumes the sole risk and
set_property src_info {type:SCOPED_XDC file:5 line:47 export:INPUT save:INPUT read:READ} [current_design]
# liability of any use of Xilinx products in Critical
set_property src_info {type:SCOPED_XDC file:5 line:48 export:INPUT save:INPUT read:READ} [current_design]
# Applications, subject only to applicable laws and
set_property src_info {type:SCOPED_XDC file:5 line:49 export:INPUT save:INPUT read:READ} [current_design]
# regulations governing limitations on product liability.
set_property src_info {type:SCOPED_XDC file:5 line:50 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:5 line:51 export:INPUT save:INPUT read:READ} [current_design]
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
set_property src_info {type:SCOPED_XDC file:5 line:52 export:INPUT save:INPUT read:READ} [current_design]
# PART OF THIS FILE AT ALL TIMES.
set_property src_info {type:SCOPED_XDC file:5 line:53 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:5 line:54 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:5 line:55 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:56 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:5 line:57 export:INPUT save:INPUT read:READ} [current_design]
#                         Native FIFO Constraints                              #
set_property src_info {type:SCOPED_XDC file:5 line:58 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:5 line:59 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:60 export:INPUT save:INPUT read:READ} [current_design]
# Set false path on the asynchronous reset port (rst) to the inputs of synchronizers
set_property src_info {type:SCOPED_XDC file:5 line:61 export:INPUT save:INPUT read:READ} [current_design]
#set_false_path -through [get_pins -of [get_cells -hier -filter name=~*rst_wr_reg2_inst*/arststages_ff_reg[1]] -filter {REF_PIN_NAME == Q}] -to [get_pins -of [get_cells -hier -filter name=~*rstblk*/*] -filter {REF_PIN_NAME == PRE}]
set_property src_info {type:SCOPED_XDC file:5 line:62 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:63 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:64 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:65 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:5 line:66 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:5 line:67 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:1 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:2 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:3 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:4 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:5 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:6 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:7 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:6 line:8 export:INPUT save:INPUT read:READ} [current_design]
# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
set_property src_info {type:SCOPED_XDC file:6 line:9 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:6 line:10 export:INPUT save:INPUT read:READ} [current_design]
# This file contains confidential and proprietary information
set_property src_info {type:SCOPED_XDC file:6 line:11 export:INPUT save:INPUT read:READ} [current_design]
# of Xilinx, Inc. and is protected under U.S. and
set_property src_info {type:SCOPED_XDC file:6 line:12 export:INPUT save:INPUT read:READ} [current_design]
# international copyright and other intellectual property
set_property src_info {type:SCOPED_XDC file:6 line:13 export:INPUT save:INPUT read:READ} [current_design]
# laws.
set_property src_info {type:SCOPED_XDC file:6 line:14 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:6 line:15 export:INPUT save:INPUT read:READ} [current_design]
# DISCLAIMER
set_property src_info {type:SCOPED_XDC file:6 line:16 export:INPUT save:INPUT read:READ} [current_design]
# This disclaimer is not a license and does not grant any
set_property src_info {type:SCOPED_XDC file:6 line:17 export:INPUT save:INPUT read:READ} [current_design]
# rights to the materials distributed herewith. Except as
set_property src_info {type:SCOPED_XDC file:6 line:18 export:INPUT save:INPUT read:READ} [current_design]
# otherwise provided in a valid license issued to you by
set_property src_info {type:SCOPED_XDC file:6 line:19 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx, and to the maximum extent permitted by applicable
set_property src_info {type:SCOPED_XDC file:6 line:20 export:INPUT save:INPUT read:READ} [current_design]
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
set_property src_info {type:SCOPED_XDC file:6 line:21 export:INPUT save:INPUT read:READ} [current_design]
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
set_property src_info {type:SCOPED_XDC file:6 line:22 export:INPUT save:INPUT read:READ} [current_design]
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
set_property src_info {type:SCOPED_XDC file:6 line:23 export:INPUT save:INPUT read:READ} [current_design]
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
set_property src_info {type:SCOPED_XDC file:6 line:24 export:INPUT save:INPUT read:READ} [current_design]
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
set_property src_info {type:SCOPED_XDC file:6 line:25 export:INPUT save:INPUT read:READ} [current_design]
# (2) Xilinx shall not be liable (whether in contract or tort,
set_property src_info {type:SCOPED_XDC file:6 line:26 export:INPUT save:INPUT read:READ} [current_design]
# including negligence, or under any other theory of
set_property src_info {type:SCOPED_XDC file:6 line:27 export:INPUT save:INPUT read:READ} [current_design]
# liability) for any loss or damage of any kind or nature
set_property src_info {type:SCOPED_XDC file:6 line:28 export:INPUT save:INPUT read:READ} [current_design]
# related to, arising under or in connection with these
set_property src_info {type:SCOPED_XDC file:6 line:29 export:INPUT save:INPUT read:READ} [current_design]
# materials, including for any direct, or any indirect,
set_property src_info {type:SCOPED_XDC file:6 line:30 export:INPUT save:INPUT read:READ} [current_design]
# special, incidental, or consequential loss or damage
set_property src_info {type:SCOPED_XDC file:6 line:31 export:INPUT save:INPUT read:READ} [current_design]
# (including loss of data, profits, goodwill, or any type of
set_property src_info {type:SCOPED_XDC file:6 line:32 export:INPUT save:INPUT read:READ} [current_design]
# loss or damage suffered as a result of any action brought
set_property src_info {type:SCOPED_XDC file:6 line:33 export:INPUT save:INPUT read:READ} [current_design]
# by a third party) even if such damage or loss was
set_property src_info {type:SCOPED_XDC file:6 line:34 export:INPUT save:INPUT read:READ} [current_design]
# reasonably foreseeable or Xilinx had been advised of the
set_property src_info {type:SCOPED_XDC file:6 line:35 export:INPUT save:INPUT read:READ} [current_design]
# possibility of the same.
set_property src_info {type:SCOPED_XDC file:6 line:36 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:6 line:37 export:INPUT save:INPUT read:READ} [current_design]
# CRITICAL APPLICATIONS
set_property src_info {type:SCOPED_XDC file:6 line:38 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx products are not designed or intended to be fail-
set_property src_info {type:SCOPED_XDC file:6 line:39 export:INPUT save:INPUT read:READ} [current_design]
# safe, or for use in any application requiring fail-safe
set_property src_info {type:SCOPED_XDC file:6 line:40 export:INPUT save:INPUT read:READ} [current_design]
# performance, such as life-support or safety devices or
set_property src_info {type:SCOPED_XDC file:6 line:41 export:INPUT save:INPUT read:READ} [current_design]
# systems, Class III medical devices, nuclear facilities,
set_property src_info {type:SCOPED_XDC file:6 line:42 export:INPUT save:INPUT read:READ} [current_design]
# applications related to the deployment of airbags, or any
set_property src_info {type:SCOPED_XDC file:6 line:43 export:INPUT save:INPUT read:READ} [current_design]
# other applications that could lead to death, personal
set_property src_info {type:SCOPED_XDC file:6 line:44 export:INPUT save:INPUT read:READ} [current_design]
# injury, or severe property or environmental damage
set_property src_info {type:SCOPED_XDC file:6 line:45 export:INPUT save:INPUT read:READ} [current_design]
# (individually and collectively, "Critical
set_property src_info {type:SCOPED_XDC file:6 line:46 export:INPUT save:INPUT read:READ} [current_design]
# Applications"). Customer assumes the sole risk and
set_property src_info {type:SCOPED_XDC file:6 line:47 export:INPUT save:INPUT read:READ} [current_design]
# liability of any use of Xilinx products in Critical
set_property src_info {type:SCOPED_XDC file:6 line:48 export:INPUT save:INPUT read:READ} [current_design]
# Applications, subject only to applicable laws and
set_property src_info {type:SCOPED_XDC file:6 line:49 export:INPUT save:INPUT read:READ} [current_design]
# regulations governing limitations on product liability.
set_property src_info {type:SCOPED_XDC file:6 line:50 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:6 line:51 export:INPUT save:INPUT read:READ} [current_design]
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
set_property src_info {type:SCOPED_XDC file:6 line:52 export:INPUT save:INPUT read:READ} [current_design]
# PART OF THIS FILE AT ALL TIMES.
set_property src_info {type:SCOPED_XDC file:6 line:53 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:6 line:54 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:6 line:55 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:56 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:6 line:57 export:INPUT save:INPUT read:READ} [current_design]
#                         Native FIFO Constraints                              #
set_property src_info {type:SCOPED_XDC file:6 line:58 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:6 line:59 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:60 export:INPUT save:INPUT read:READ} [current_design]
# Set false path on the asynchronous reset port (rst) to the inputs of synchronizers
set_property src_info {type:SCOPED_XDC file:6 line:61 export:INPUT save:INPUT read:READ} [current_design]
#set_false_path -through [get_pins -of [get_cells -hier -filter name=~*rst_wr_reg2_inst*/arststages_ff_reg[1]] -filter {REF_PIN_NAME == Q}] -to [get_pins -of [get_cells -hier -filter name=~*rstblk*/*] -filter {REF_PIN_NAME == PRE}]
set_property src_info {type:SCOPED_XDC file:6 line:62 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:63 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:64 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:65 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:6 line:66 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:6 line:67 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:1 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:2 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:3 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:4 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:5 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:6 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:7 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:7 line:8 export:INPUT save:INPUT read:READ} [current_design]
# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
set_property src_info {type:SCOPED_XDC file:7 line:9 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:7 line:10 export:INPUT save:INPUT read:READ} [current_design]
# This file contains confidential and proprietary information
set_property src_info {type:SCOPED_XDC file:7 line:11 export:INPUT save:INPUT read:READ} [current_design]
# of Xilinx, Inc. and is protected under U.S. and
set_property src_info {type:SCOPED_XDC file:7 line:12 export:INPUT save:INPUT read:READ} [current_design]
# international copyright and other intellectual property
set_property src_info {type:SCOPED_XDC file:7 line:13 export:INPUT save:INPUT read:READ} [current_design]
# laws.
set_property src_info {type:SCOPED_XDC file:7 line:14 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:7 line:15 export:INPUT save:INPUT read:READ} [current_design]
# DISCLAIMER
set_property src_info {type:SCOPED_XDC file:7 line:16 export:INPUT save:INPUT read:READ} [current_design]
# This disclaimer is not a license and does not grant any
set_property src_info {type:SCOPED_XDC file:7 line:17 export:INPUT save:INPUT read:READ} [current_design]
# rights to the materials distributed herewith. Except as
set_property src_info {type:SCOPED_XDC file:7 line:18 export:INPUT save:INPUT read:READ} [current_design]
# otherwise provided in a valid license issued to you by
set_property src_info {type:SCOPED_XDC file:7 line:19 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx, and to the maximum extent permitted by applicable
set_property src_info {type:SCOPED_XDC file:7 line:20 export:INPUT save:INPUT read:READ} [current_design]
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
set_property src_info {type:SCOPED_XDC file:7 line:21 export:INPUT save:INPUT read:READ} [current_design]
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
set_property src_info {type:SCOPED_XDC file:7 line:22 export:INPUT save:INPUT read:READ} [current_design]
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
set_property src_info {type:SCOPED_XDC file:7 line:23 export:INPUT save:INPUT read:READ} [current_design]
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
set_property src_info {type:SCOPED_XDC file:7 line:24 export:INPUT save:INPUT read:READ} [current_design]
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
set_property src_info {type:SCOPED_XDC file:7 line:25 export:INPUT save:INPUT read:READ} [current_design]
# (2) Xilinx shall not be liable (whether in contract or tort,
set_property src_info {type:SCOPED_XDC file:7 line:26 export:INPUT save:INPUT read:READ} [current_design]
# including negligence, or under any other theory of
set_property src_info {type:SCOPED_XDC file:7 line:27 export:INPUT save:INPUT read:READ} [current_design]
# liability) for any loss or damage of any kind or nature
set_property src_info {type:SCOPED_XDC file:7 line:28 export:INPUT save:INPUT read:READ} [current_design]
# related to, arising under or in connection with these
set_property src_info {type:SCOPED_XDC file:7 line:29 export:INPUT save:INPUT read:READ} [current_design]
# materials, including for any direct, or any indirect,
set_property src_info {type:SCOPED_XDC file:7 line:30 export:INPUT save:INPUT read:READ} [current_design]
# special, incidental, or consequential loss or damage
set_property src_info {type:SCOPED_XDC file:7 line:31 export:INPUT save:INPUT read:READ} [current_design]
# (including loss of data, profits, goodwill, or any type of
set_property src_info {type:SCOPED_XDC file:7 line:32 export:INPUT save:INPUT read:READ} [current_design]
# loss or damage suffered as a result of any action brought
set_property src_info {type:SCOPED_XDC file:7 line:33 export:INPUT save:INPUT read:READ} [current_design]
# by a third party) even if such damage or loss was
set_property src_info {type:SCOPED_XDC file:7 line:34 export:INPUT save:INPUT read:READ} [current_design]
# reasonably foreseeable or Xilinx had been advised of the
set_property src_info {type:SCOPED_XDC file:7 line:35 export:INPUT save:INPUT read:READ} [current_design]
# possibility of the same.
set_property src_info {type:SCOPED_XDC file:7 line:36 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:7 line:37 export:INPUT save:INPUT read:READ} [current_design]
# CRITICAL APPLICATIONS
set_property src_info {type:SCOPED_XDC file:7 line:38 export:INPUT save:INPUT read:READ} [current_design]
# Xilinx products are not designed or intended to be fail-
set_property src_info {type:SCOPED_XDC file:7 line:39 export:INPUT save:INPUT read:READ} [current_design]
# safe, or for use in any application requiring fail-safe
set_property src_info {type:SCOPED_XDC file:7 line:40 export:INPUT save:INPUT read:READ} [current_design]
# performance, such as life-support or safety devices or
set_property src_info {type:SCOPED_XDC file:7 line:41 export:INPUT save:INPUT read:READ} [current_design]
# systems, Class III medical devices, nuclear facilities,
set_property src_info {type:SCOPED_XDC file:7 line:42 export:INPUT save:INPUT read:READ} [current_design]
# applications related to the deployment of airbags, or any
set_property src_info {type:SCOPED_XDC file:7 line:43 export:INPUT save:INPUT read:READ} [current_design]
# other applications that could lead to death, personal
set_property src_info {type:SCOPED_XDC file:7 line:44 export:INPUT save:INPUT read:READ} [current_design]
# injury, or severe property or environmental damage
set_property src_info {type:SCOPED_XDC file:7 line:45 export:INPUT save:INPUT read:READ} [current_design]
# (individually and collectively, "Critical
set_property src_info {type:SCOPED_XDC file:7 line:46 export:INPUT save:INPUT read:READ} [current_design]
# Applications"). Customer assumes the sole risk and
set_property src_info {type:SCOPED_XDC file:7 line:47 export:INPUT save:INPUT read:READ} [current_design]
# liability of any use of Xilinx products in Critical
set_property src_info {type:SCOPED_XDC file:7 line:48 export:INPUT save:INPUT read:READ} [current_design]
# Applications, subject only to applicable laws and
set_property src_info {type:SCOPED_XDC file:7 line:49 export:INPUT save:INPUT read:READ} [current_design]
# regulations governing limitations on product liability.
set_property src_info {type:SCOPED_XDC file:7 line:50 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:7 line:51 export:INPUT save:INPUT read:READ} [current_design]
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
set_property src_info {type:SCOPED_XDC file:7 line:52 export:INPUT save:INPUT read:READ} [current_design]
# PART OF THIS FILE AT ALL TIMES.
set_property src_info {type:SCOPED_XDC file:7 line:53 export:INPUT save:INPUT read:READ} [current_design]
#
set_property src_info {type:SCOPED_XDC file:7 line:54 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:7 line:55 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:56 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:7 line:57 export:INPUT save:INPUT read:READ} [current_design]
#                         Native FIFO Constraints                              #
set_property src_info {type:SCOPED_XDC file:7 line:58 export:INPUT save:INPUT read:READ} [current_design]
#------------------------------------------------------------------------------#
set_property src_info {type:SCOPED_XDC file:7 line:59 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:60 export:INPUT save:INPUT read:READ} [current_design]
# Set false path on the asynchronous reset port (rst) to the inputs of synchronizers
set_property src_info {type:SCOPED_XDC file:7 line:61 export:INPUT save:INPUT read:READ} [current_design]
#set_false_path -through [get_pins -of [get_cells -hier -filter name=~*rst_wr_reg2_inst*/arststages_ff_reg[1]] -filter {REF_PIN_NAME == Q}] -to [get_pins -of [get_cells -hier -filter name=~*rstblk*/*] -filter {REF_PIN_NAME == PRE}]
set_property src_info {type:SCOPED_XDC file:7 line:62 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:63 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:64 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:65 export:INPUT save:INPUT read:READ} [current_design]
################################################################################
set_property src_info {type:SCOPED_XDC file:7 line:66 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:SCOPED_XDC file:7 line:67 export:INPUT save:INPUT read:READ} [current_design]

