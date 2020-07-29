@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Oct 30 16:10:24 +0800 2019
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim fmc_data_convert_tb_behav -key {Behavioral:sim_1:Functional:fmc_data_convert_tb} -tclbatch fmc_data_convert_tb.tcl -view C:/Users/gyz/Desktop/ddrtovga/fmc_input/my_ddr_to_vga/my_ddr_to_vga.srcs/sim_1/imports/my_ddr_to_vga/data_convert_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
