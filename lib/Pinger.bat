title SMEXY
echo off & cls
color A
echo SMEXY PINGER

set /p IP=Enter IP: 
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=C & echo DOWN/OFFLINE) 
color 4
ping -t 1 0 10 127.0.0.1 >nul
GoTo top