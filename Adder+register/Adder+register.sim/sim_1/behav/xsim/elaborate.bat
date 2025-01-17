@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Jul 11 12:38:00 +0700 2024
REM SW Build 3247384 on Thu Jun 10 19:36:33 MDT 2021
REM
REM IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto bd2b6b944c414b6982a9efe69cc2689a --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot test_ledseg_behav xil_defaultlib.test_ledseg -log elaborate.log"
call xelab  -wto bd2b6b944c414b6982a9efe69cc2689a --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot test_ledseg_behav xil_defaultlib.test_ledseg -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
