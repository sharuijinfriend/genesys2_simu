## Clock Signal
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD LVDS} [get_ports clk_ori_n]
set_property -dict {PACKAGE_PIN AD12 IOSTANDARD LVDS} [get_ports clk_ori_p]

## VGA Connector
set_property -dict {PACKAGE_PIN AH20 IOSTANDARD LVCMOS33} [get_ports {vga_b[0]}]
set_property -dict {PACKAGE_PIN AG20 IOSTANDARD LVCMOS33} [get_ports {vga_b[1]}]
set_property -dict {PACKAGE_PIN AF21 IOSTANDARD LVCMOS33} [get_ports {vga_b[2]}]
set_property -dict {PACKAGE_PIN AK20 IOSTANDARD LVCMOS33} [get_ports {vga_b[3]}]
set_property -dict {PACKAGE_PIN AG22 IOSTANDARD LVCMOS33} [get_ports {vga_b[4]}]

set_property -dict {PACKAGE_PIN AJ23 IOSTANDARD LVCMOS33} [get_ports {vga_g[0]}]
set_property -dict {PACKAGE_PIN AJ22 IOSTANDARD LVCMOS33} [get_ports {vga_g[1]}]
set_property -dict {PACKAGE_PIN AH22 IOSTANDARD LVCMOS33} [get_ports {vga_g[2]}]
set_property -dict {PACKAGE_PIN AK21 IOSTANDARD LVCMOS33} [get_ports {vga_g[3]}]
set_property -dict {PACKAGE_PIN AJ21 IOSTANDARD LVCMOS33} [get_ports {vga_g[4]}]
set_property -dict {PACKAGE_PIN AK23 IOSTANDARD LVCMOS33} [get_ports {vga_g[5]}]

set_property -dict {PACKAGE_PIN AK25 IOSTANDARD LVCMOS33} [get_ports {vga_r[0]}]
set_property -dict {PACKAGE_PIN AG25 IOSTANDARD LVCMOS33} [get_ports {vga_r[1]}]
set_property -dict {PACKAGE_PIN AH25 IOSTANDARD LVCMOS33} [get_ports {vga_r[2]}]
set_property -dict {PACKAGE_PIN AK24 IOSTANDARD LVCMOS33} [get_ports {vga_r[3]}]
set_property -dict {PACKAGE_PIN AJ24 IOSTANDARD LVCMOS33} [get_ports {vga_r[4]}]

set_property -dict {PACKAGE_PIN AF20 IOSTANDARD LVCMOS33} [get_ports vga_hsync]
set_property -dict {PACKAGE_PIN AG23 IOSTANDARD LVCMOS33} [get_ports vga_vsync]

## Reset Signal
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports rst_n]

## TEST
set_property -dict {PACKAGE_PIN G25 IOSTANDARD LVCMOS33} [get_ports test_pause]
set_property PACKAGE_PIN T28 [get_ports test_led0]
set_property PACKAGE_PIN V19 [get_ports test_led1]
set_property PACKAGE_PIN U30 [get_ports test_led2]
set_property PACKAGE_PIN U29 [get_ports test_led3]
set_property IOSTANDARD LVCMOS33 [get_ports test_led0]
set_property IOSTANDARD LVCMOS33 [get_ports test_led1]
set_property IOSTANDARD LVCMOS33 [get_ports test_led2]
set_property IOSTANDARD LVCMOS33 [get_ports test_led3]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports test_led4]
set_property -dict {PACKAGE_PIN V26 IOSTANDARD LVCMOS33} [get_ports test_led5]

## MICRO SD CARD
set_property -dict {PACKAGE_PIN T30 IOSTANDARD LVCMOS33} [get_ports sd_cs]
##sd_d[3]
set_property -dict {PACKAGE_PIN R29 IOSTANDARD LVCMOS33} [get_ports sd_mosi]
##sd_cmd
set_property -dict {PACKAGE_PIN R26 IOSTANDARD LVCMOS33} [get_ports sd_miso]
##sd_d[0]
set_property -dict {PACKAGE_PIN R28 IOSTANDARD LVCMOS33} [get_ports sd_clk]
##sd_sclk

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
##set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports {fmc_data[14]}]
##set_property -dict {PACKAGE_PIN F27 IOSTANDARD LVCMOS33} [get_ports {fmc_data[15]}]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {fmc_data[14]}]
set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS33} [get_ports {fmc_data[15]}]

##hsync vsync frm_cnt
set_property -dict {PACKAGE_PIN M23 IOSTANDARD LVCMOS33} [get_ports fmc_hsync]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports fmc_vsync]
set_property -dict {PACKAGE_PIN G27 IOSTANDARD LVCMOS33} [get_ports frm_cnt]
set_property -dict {PACKAGE_PIN E28 IOSTANDARD LVCMOS33} [get_ports clk_fmc_in]

##set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_fmc_IBUF]
create_clock -period 20.000 -name fmcin [get_ports clk_fmc_in]
##set_clock_latency -source -early 8 [get_clocks fmcin]
##
##test
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[0]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[1]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[2]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[3]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[4]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[5]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[6]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[7]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[8]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[9]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[10]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[11]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[12]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[13]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[14]}]
set_input_delay -clock fmcin -max 10 [get_ports {fmc_data[15]}]





connect_debug_port u_ila_0/probe3 [get_nets [list {wr_num_cnt[0]} {wr_num_cnt[1]} {wr_num_cnt[2]} {wr_num_cnt[3]} {wr_num_cnt[4]} {wr_num_cnt[5]} {wr_num_cnt[6]} {wr_num_cnt[7]} {wr_num_cnt[8]} {wr_num_cnt[9]} {wr_num_cnt[10]} {wr_num_cnt[11]} {wr_num_cnt[12]} {wr_num_cnt[13]} {wr_num_cnt[14]} {wr_num_cnt[15]} {wr_num_cnt[16]} {wr_num_cnt[17]} {wr_num_cnt[18]} {wr_num_cnt[19]} {wr_num_cnt[20]} {wr_num_cnt[21]} {wr_num_cnt[22]} {wr_num_cnt[23]} {wr_num_cnt[24]} {wr_num_cnt[25]} {wr_num_cnt[26]} {wr_num_cnt[27]} {wr_num_cnt[28]} {wr_num_cnt[29]} {wr_num_cnt[30]} {wr_num_cnt[31]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_generate/inst/clk_50m]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {u_fmc_data_compare/wr_num_cnt[0]} {u_fmc_data_compare/wr_num_cnt[1]} {u_fmc_data_compare/wr_num_cnt[2]} {u_fmc_data_compare/wr_num_cnt[3]} {u_fmc_data_compare/wr_num_cnt[4]} {u_fmc_data_compare/wr_num_cnt[5]} {u_fmc_data_compare/wr_num_cnt[6]} {u_fmc_data_compare/wr_num_cnt[7]} {u_fmc_data_compare/wr_num_cnt[8]} {u_fmc_data_compare/wr_num_cnt[9]} {u_fmc_data_compare/wr_num_cnt[10]} {u_fmc_data_compare/wr_num_cnt[11]} {u_fmc_data_compare/wr_num_cnt[12]} {u_fmc_data_compare/wr_num_cnt[13]} {u_fmc_data_compare/wr_num_cnt[14]} {u_fmc_data_compare/wr_num_cnt[15]} {u_fmc_data_compare/wr_num_cnt[16]} {u_fmc_data_compare/wr_num_cnt[17]} {u_fmc_data_compare/wr_num_cnt[18]} {u_fmc_data_compare/wr_num_cnt[19]} {u_fmc_data_compare/wr_num_cnt[20]} {u_fmc_data_compare/wr_num_cnt[21]} {u_fmc_data_compare/wr_num_cnt[22]} {u_fmc_data_compare/wr_num_cnt[23]} {u_fmc_data_compare/wr_num_cnt[24]} {u_fmc_data_compare/wr_num_cnt[25]} {u_fmc_data_compare/wr_num_cnt[26]} {u_fmc_data_compare/wr_num_cnt[27]} {u_fmc_data_compare/wr_num_cnt[28]} {u_fmc_data_compare/wr_num_cnt[29]} {u_fmc_data_compare/wr_num_cnt[30]} {u_fmc_data_compare/wr_num_cnt[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {u_fmc_data_compare/error_cnt[0]} {u_fmc_data_compare/error_cnt[1]} {u_fmc_data_compare/error_cnt[2]} {u_fmc_data_compare/error_cnt[3]} {u_fmc_data_compare/error_cnt[4]} {u_fmc_data_compare/error_cnt[5]} {u_fmc_data_compare/error_cnt[6]} {u_fmc_data_compare/error_cnt[7]} {u_fmc_data_compare/error_cnt[8]} {u_fmc_data_compare/error_cnt[9]} {u_fmc_data_compare/error_cnt[10]} {u_fmc_data_compare/error_cnt[11]} {u_fmc_data_compare/error_cnt[12]} {u_fmc_data_compare/error_cnt[13]} {u_fmc_data_compare/error_cnt[14]} {u_fmc_data_compare/error_cnt[15]} {u_fmc_data_compare/error_cnt[16]} {u_fmc_data_compare/error_cnt[17]} {u_fmc_data_compare/error_cnt[18]} {u_fmc_data_compare/error_cnt[19]} {u_fmc_data_compare/error_cnt[20]} {u_fmc_data_compare/error_cnt[21]} {u_fmc_data_compare/error_cnt[22]} {u_fmc_data_compare/error_cnt[23]} {u_fmc_data_compare/error_cnt[24]} {u_fmc_data_compare/error_cnt[25]} {u_fmc_data_compare/error_cnt[26]} {u_fmc_data_compare/error_cnt[27]} {u_fmc_data_compare/error_cnt[28]} {u_fmc_data_compare/error_cnt[29]} {u_fmc_data_compare/error_cnt[30]} {u_fmc_data_compare/error_cnt[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 16 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {fmc_fifo_dout[0]} {fmc_fifo_dout[1]} {fmc_fifo_dout[2]} {fmc_fifo_dout[3]} {fmc_fifo_dout[4]} {fmc_fifo_dout[5]} {fmc_fifo_dout[6]} {fmc_fifo_dout[7]} {fmc_fifo_dout[8]} {fmc_fifo_dout[9]} {fmc_fifo_dout[10]} {fmc_fifo_dout[11]} {fmc_fifo_dout[12]} {fmc_fifo_dout[13]} {fmc_fifo_dout[14]} {fmc_fifo_dout[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {fmc_fifo_dout_from_ddr[0]} {fmc_fifo_dout_from_ddr[1]} {fmc_fifo_dout_from_ddr[2]} {fmc_fifo_dout_from_ddr[3]} {fmc_fifo_dout_from_ddr[4]} {fmc_fifo_dout_from_ddr[5]} {fmc_fifo_dout_from_ddr[6]} {fmc_fifo_dout_from_ddr[7]} {fmc_fifo_dout_from_ddr[8]} {fmc_fifo_dout_from_ddr[9]} {fmc_fifo_dout_from_ddr[10]} {fmc_fifo_dout_from_ddr[11]} {fmc_fifo_dout_from_ddr[12]} {fmc_fifo_dout_from_ddr[13]} {fmc_fifo_dout_from_ddr[14]} {fmc_fifo_dout_from_ddr[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list me_define]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_50m]
