
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Clock Placer Checks: Sub-optimal placement for a clock-capable IO pin and MMCM pair. 
Resolution: A dedicated routing path between the two can be used if: (a) The clock-capable IO (CCIO) is placed on a CCIO capable site (b) The MMCM is placed in the same clock region as the CCIO pin. If the IOB is driving multiple MMCMs, all MMCMs must be placed in the same clock region, one clock region above or one clock region below the IOB. Both the above conditions must be met at the same time, else it may lead to longer and less predictable clock insertion delays.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUFDS.O) is locked to %s
	%s (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on %s
%s*DRC2�
 "�
Yddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk	Yddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk2default:default2default:default2@
 "*
	IOB_X1Y76
	IOB_X1Y762default:default2default:default2�
 "�
Qddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i	Qddr3_top/u_DDR3_CONTROL/u_DDR3_CONTROL_mig/u_iodelay_ctrl/clk_ref_mmcm_gen.mmcm_i2default:default2default:default2L
 "6
MMCME2_ADV_X1Y0
MMCME2_ADV_X1Y02default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-23h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: 611ccc9f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:50 ; elapsed = 00:00:30 . Memory (MB): peak = 2558.566 ; gain = 200.4772default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: 611ccc9f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:50 ; elapsed = 00:00:30 . Memory (MB): peak = 2575.148 ; gain = 217.0592default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 611ccc9f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:31 . Memory (MB): peak = 2583.156 ; gain = 225.0662default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 611ccc9f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:31 . Memory (MB): peak = 2583.156 ; gain = 225.0662default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
B
-Phase 2.4 Update Timing | Checksum: be181f47
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:19 ; elapsed = 00:00:51 . Memory (MB): peak = 2658.859 ; gain = 300.7702default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=0.116  | TNS=0.000  | WHS=-0.489 | THS=-9070.068|
2default:defaultZ35-416h px� 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 2.5.1 Update Timing | Checksum: c9350e0f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:35 ; elapsed = 00:01:01 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.116  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 141bfa19d
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:36 ; elapsed = 00:01:01 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 10c28cf5e
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:36 ; elapsed = 00:01:01 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 183b1a546
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:54 ; elapsed = 00:01:11 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.116  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
G
2Phase 4.1 Global Iteration 0 | Checksum: d632d9d3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:35 ; elapsed = 00:01:38 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
E
0Phase 4 Rip-up And Reroute | Checksum: d632d9d3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:36 ; elapsed = 00:01:38 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
B
-Phase 5.1 Delay CleanUp | Checksum: d632d9d3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:36 ; elapsed = 00:01:39 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
L
7Phase 5.2 Clock Skew Optimization | Checksum: d632d9d3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:36 ; elapsed = 00:01:39 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: d632d9d3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:36 ; elapsed = 00:01:39 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 129df608d
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:41 ; elapsed = 00:01:42 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.116  | TNS=0.000  | WHS=0.041  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 15db336c3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:41 ; elapsed = 00:01:42 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 15db336c3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:41 ; elapsed = 00:01:42 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 1855e60ea
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:41 ; elapsed = 00:01:42 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 1855e60ea
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:42 ; elapsed = 00:01:43 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 2248e414c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:45 ; elapsed = 00:01:47 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.116  | TNS=0.000  | WHS=0.041  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 2248e414c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:47 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:47 . Memory (MB): peak = 2673.824 ; gain = 315.7342default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1152default:default2
3472default:default2
42default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:02:542default:default2
00:01:522default:default2
2673.8242default:default2
315.7342default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0342default:default2
2673.8242default:default2
0.0002default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0362default:default2
2673.8242default:default2
0.0002default:defaultZ17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:152default:default2
00:00:062default:default2
2673.8242default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
hC:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.runs/impl_1/ddrtovga_top_routed.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:202default:default2
00:00:112default:default2
2673.8242default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
yExecuting : report_drc -file ddrtovga_top_drc_routed.rpt -pb ddrtovga_top_drc_routed.pb -rpx ddrtovga_top_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
lreport_drc -file ddrtovga_top_drc_routed.rpt -pb ddrtovga_top_drc_routed.pb -rpx ddrtovga_top_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
lC:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.runs/impl_1/ddrtovga_top_drc_routed.rptlC:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.runs/impl_1/ddrtovga_top_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:152default:default2
00:00:082default:default2
2673.8242default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file ddrtovga_top_methodology_drc_routed.rpt -pb ddrtovga_top_methodology_drc_routed.pb -rpx ddrtovga_top_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file ddrtovga_top_methodology_drc_routed.rpt -pb ddrtovga_top_methodology_drc_routed.pb -rpx ddrtovga_top_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
zfifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_1	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_10	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_11	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_12	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_13	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_14	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_15	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_16	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_17	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_18	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_19	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
zfifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_2	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_20	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_21	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_22	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_23	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_24	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_25	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_26	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_27	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_28	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_29	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
zfifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_3	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_30	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_31	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_32	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_33	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_34	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_35	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_36	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_37	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_38	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_39	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_40	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_41	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_42	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_43	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_44	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_45	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_46	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_47	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_48	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_49	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_50	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_51	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_52	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_53	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_54	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_55	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
zfifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_8	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
zfifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]_i_9	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_1	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_10	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_11	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_12	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_13	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_14	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_15	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_16	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_17	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_18	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_19	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_2	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_20	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_21	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_22	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_23	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_24	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_25	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_26	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_27	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_28	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_29	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
{fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_3	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_30	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_31	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_32	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_33	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_34	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_35	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_36	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_37	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_38	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_39	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_40	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_41	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_42	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_43	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_44	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_45	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_46	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_47	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_48	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_49	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_50	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_51	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_52	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_53	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_54	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
"%s: '%s' is not a valid endpoint.
401*constraints2"
set_false_path2default:default2�
|fifo_data_full/read_fifo_2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]_i_55	2default:default2�
yc:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.srcs/sources_1/ip/fifo_16_out/fifo_16_out_clocks.xdc2default:default2
602default:default8@Z18-401h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2&
Constraints 18-4012default:default2
1002default:defaultZ17-14h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
xC:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.runs/impl_1/ddrtovga_top_methodology_drc_routed.rptxC:/Users/gyz/Desktop/ddrtovga/fmc_imput2/my_ddr_to_vga/my_ddr_to_vga.runs/impl_1/ddrtovga_top_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:492default:default2
00:00:282default:default2
3042.1212default:default2
368.2972default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_power -file ddrtovga_top_power_routed.rpt -pb ddrtovga_top_power_summary_routed.pb -rpx ddrtovga_top_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
|report_power -file ddrtovga_top_power_routed.rpt -pb ddrtovga_top_power_summary_routed.pb -rpx ddrtovga_top_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1282default:default2
4472default:default2
42default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:322default:default2
00:00:182default:default2
3113.6332default:default2
71.5122default:defaultZ17-268h px� 
�
%s4*runtcl2y
eExecuting : report_route_status -file ddrtovga_top_route_status.rpt -pb ddrtovga_top_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file ddrtovga_top_timing_summary_routed.rpt -pb ddrtovga_top_timing_summary_routed.pb -rpx ddrtovga_top_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 
�
%s4*runtcl2i
UExecuting : report_incremental_reuse -file ddrtovga_top_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2i
UExecuting : report_clock_utilization -file ddrtovga_top_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file ddrtovga_top_bus_skew_routed.rpt -pb ddrtovga_top_bus_skew_routed.pb -rpx ddrtovga_top_bus_skew_routed.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 


End Record