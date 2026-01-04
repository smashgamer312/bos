@echo off
:: Network module
echo   [MOD] Network: Initializing...
set NETWORK_ENABLED=true
set IP_ADDR=192.168.1.100
set NET_STATUS=Connected

:: Ping check
ping -n 1 8.8.8.8 >nul 2>&1
if errorlevel 1 (
    set NET_STATUS=Disconnected
    set NETWORK_ENABLED=false
)

echo   [MOD] Network: Status - %NET_STATUS% (%IP_ADDR%)
