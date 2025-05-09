
@echo off
title Windows 10/11 Bloatware Removal Script
:: Description: Removes unnecessary pre-installed Windows 10/11 applications (bloatware)
:: Last updated: 2025-05-09

net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo [!] Please run this script as Administrator.
    pause
    exit /b
)

echo [INFO] Removing bloatware apps from Windows 10/11...
echo.

set PS=powershell -NoProfile -ExecutionPolicy Bypass -Command

%PS% "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
%PS% "Get-AppxPackage *zunevideo* | Remove-AppxPackage"
%PS% "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
%PS% "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
%PS% "Get-AppxPackage *bingweather* | Remove-AppxPackage"
%PS% "Get-AppxPackage *bingnews* | Remove-AppxPackage"
%PS% "Get-AppxPackage *bingsports* | Remove-AppxPackage"
%PS% "Get-AppxPackage *bingfinance* | Remove-AppxPackage"
%PS% "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
%PS% "Get-AppxPackage *xboxgamingoverlay* | Remove-AppxPackage"
%PS% "Get-AppxPackage *xboxspeechto* | Remove-AppxPackage"
%PS% "Get-AppxPackage *xboxgameoverlay* | Remove-AppxPackage"
%PS% "Get-AppxPackage *getstarted* | Remove-AppxPackage"
%PS% "Get-AppxPackage *onenote* | Remove-AppxPackage"
%PS% "Get-AppxPackage *skypeapp* | Remove-AppxPackage"
%PS% "Get-AppxPackage *officehub* | Remove-AppxPackage"
%PS% "Get-AppxPackage *people* | Remove-AppxPackage"
%PS% "Get-AppxPackage *yourphone* | Remove-AppxPackage"
%PS% "Get-AppxPackage *windowsmaps* | Remove-AppxPackage"
%PS% "Get-AppxPackage *paint3d* | Remove-AppxPackage"
%PS% "Get-AppxPackage *mixedreality.portal* | Remove-AppxPackage"
%PS% "Get-AppxPackage *feedbackhub* | Remove-AppxPackage"

echo.
echo [✓] All selected bloatware has been removed.
pause

