@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Oct 30 16:10:10 +0800 2019
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto c7411dc2b3194436b4142a81b5f5d5da --incr --debug typical --relax --mt 2 -L fifo_generator_v13_2_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot fmc_data_convert_tb_behav xil_defaultlib.fmc_data_convert_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
