## Clock Signal
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD LVDS} [get_ports clk_ori_n]
set_property -dict {PACKAGE_PIN AD12 IOSTANDARD LVDS} [get_ports clk_ori_p]


## Reset Signal
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports rst_n]



##UART
set_property -dict {PACKAGE_PIN Y23 IOSTANDARD LVCMOS33} [get_ports o_Tx_Serial]

###FMC
##16BIT DATA
set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS33} [get_ports {fmc_data[0]}]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports {fmc_data[1]}]
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS33} [get_ports {fmc_data[2]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {fmc_data[3]}]
set_property -dict {PACKAGE_PIN A22 IOSTANDARD LVCMOS33} [get_ports {fmc_data[4]}]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports {fmc_data[5]}]
set_property -dict {PACKAGE_PIN A28 IOSTANDARD LVCMOS33} [get_ports {fmc_data[6]}]
set_property -dict {PACKAGE_PIN B28 IOSTANDARD LVCMOS33} [get_ports {fmc_data[7]}]
set_property -dict {PACKAGE_PIN A27 IOSTANDARD LVCMOS33} [get_ports {fmc_data[8]}]
set_property -dict {PACKAGE_PIN B27 IOSTANDARD LVCMOS33} [get_ports {fmc_data[9]}]
set_property -dict {PACKAGE_PIN B24 IOSTANDARD LVCMOS33} [get_ports {fmc_data[10]}]
set_property -dict {PACKAGE_PIN C24 IOSTANDARD LVCMOS33} [get_ports {fmc_data[11]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {fmc_data[12]}]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports {fmc_data[13]}]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {fmc_data[14]}]
set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS33} [get_ports {fmc_data[15]}]

##hsync vsync frm_cnt
set_property -dict {PACKAGE_PIN M23 IOSTANDARD LVCMOS33} [get_ports fmc_hsync]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports fmc_vsync]
set_property -dict {PACKAGE_PIN G27 IOSTANDARD LVCMOS33} [get_ports frm_cnt]
set_property -dict {PACKAGE_PIN E28 IOSTANDARD LVCMOS33} [get_ports clk_fmc_in]
##set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_fmc_IBUF]
create_clock -name fmcin -period 20 [get_ports clk_fmc_in]
##set_clock_latency -source -early 8 [get_clocks fmcin]
##
##test
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[0]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[1]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[2]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[3]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[4]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[5]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[6]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[7]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[8]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[9]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[10]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[11]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[12]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[13]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[14]}]
set_input_delay -clock fmcin -max 18 [get_ports {fmc_data[15]}]

##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[0]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[1]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[2]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[3]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[4]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[5]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[6]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[7]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[8]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[9]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[10]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[11]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[12]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[13]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[14]}]
##set_input_delay -clock fmcin -min 10 [get_ports {fmc_data[15]}]












create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_50m]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 26 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {rd_num_cnt[0]} {rd_num_cnt[1]} {rd_num_cnt[2]} {rd_num_cnt[3]} {rd_num_cnt[4]} {rd_num_cnt[5]} {rd_num_cnt[6]} {rd_num_cnt[7]} {rd_num_cnt[8]} {rd_num_cnt[9]} {rd_num_cnt[10]} {rd_num_cnt[11]} {rd_num_cnt[12]} {rd_num_cnt[13]} {rd_num_cnt[14]} {rd_num_cnt[15]} {rd_num_cnt[16]} {rd_num_cnt[17]} {rd_num_cnt[18]} {rd_num_cnt[19]} {rd_num_cnt[20]} {rd_num_cnt[21]} {rd_num_cnt[22]} {rd_num_cnt[23]} {rd_num_cnt[24]} {rd_num_cnt[25]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {fifo_dout[0]} {fifo_dout[1]} {fifo_dout[2]} {fifo_dout[3]} {fifo_dout[4]} {fifo_dout[5]} {fifo_dout[6]} {fifo_dout[7]} {fifo_dout[8]} {fifo_dout[9]} {fifo_dout[10]} {fifo_dout[11]} {fifo_dout[12]} {fifo_dout[13]} {fifo_dout[14]} {fifo_dout[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list rd_data_valid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_50m]
