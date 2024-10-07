@echo off >nul
title We love you skipper
chcp 65001 >nul



echo.
echo			 		[95m███████╗██╗  ██╗██╗██████╗ ██████╗ ███████╗██████╗
echo			 		██╔════╝██║ ██╔╝██║██╔══██╗██╔══██╗██╔════╝██╔══██╗
echo			 		███████╗█████╔╝ ██║██████╔╝██████╔╝█████╗  ██████╔╝[0m
echo			 		╚════██║██╔═██╗ ██║██╔═══╝ ██╔═══╝ ██╔══╝  ██╔══██╗
echo			 		███████║██║  ██╗██║██║     ██║     ███████╗██║  ██║
echo			 		╚══════╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝
echo										    [95mv1.6[0m                                         


echo ________________________________________________________________________________________________________________________

echo 1. Ping Tool
echo 2. IP Configuration Tool
echo 3. IP Lookup Tool
echo 4. Exit
set /p choice="Choose an option: "

if "%choice%"=="1" goto pingTool
if "%choice%"=="2" goto ipConfigTool
if "%choice%"=="3" goto ipLookupTool
if "%choice%"=="4" exit
echo Invalid option! Please try again.
pause
goto main

:pingTool
cls
echo ==============================
echo          Ping Tool
echo ==============================
set /p "host=Enter the hostname or IP address: "
ping %host%
pause
goto main

:ipConfigTool
cls
echo ==============================
echo       IP Configuration Tool
echo ==============================
ipconfig
pause
goto main


:ipLookupTool
cls
echo ==============================
echo        IP Lookup Tool
echo ==============================
set /p "ip=Enter the IP address or hostname: "
nslookup %ip%
pause
goto main

