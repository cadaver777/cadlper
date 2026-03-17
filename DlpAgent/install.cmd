@echo off
echo Installing DLP Agent...
powershell -ExecutionPolicy Bypass -File "%~dp0install.ps1"
pause