:event_do.this.firstly
@echo off
color F0
title RGB Generator by F4stZ4p
mode con:cols=56 lines=5

:event_main
echo -------------------------------------------------------
echo # RGB Generator by F4stZ4p. Press any key to generate #
echo -------------------------------------------------------
pause >nul
goto :event_color.gen

:event_color.gen
cls
set MIN=0
set MAX=255
set /a R=MIN+(MAX-MIN+1) * %random%/32768
set MIN=0
set MAX=255
set /a G=MIN+(MAX-MIN+1) * %random%/32768
set MIN=0
set MAX=255
set /a B=MIN+(MAX-MIN+1) * %random%/32768
echo Generated: %R%,%G%,%B%
@echo %R%,%G%,%B%| Clip
echo RGB copied to clipboard!
echo Press any key to generate again.
pause >nul
goto :event_color.gen
