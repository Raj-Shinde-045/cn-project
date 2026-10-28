@echo off
title GameNet Loss Tracker (Run as Administrator)
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Running with Administrator privileges...
    cd /d "%~dp0"
    start "" python gamenet_loss_tracker.py
    exit
) else (
    echo Requesting Administrator privileges for full network tuning...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit
)
