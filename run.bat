@echo off
title Test-UI Server
echo.
echo  ========================================
echo    Starting Test-UI Server...
echo  ========================================
echo.

where node >nul 2>nul
if %errorlevel% neq 0 (
    echo  [ERROR] Node.js chua duoc cai dat!
    echo  Tai tai: https://nodejs.org/
    pause
    exit /b 1
)

echo  Server dang chay tai: http://localhost:3000
echo  Nhan Ctrl+C de dung server.
echo.
start http://localhost:3000
node server.js
pause
