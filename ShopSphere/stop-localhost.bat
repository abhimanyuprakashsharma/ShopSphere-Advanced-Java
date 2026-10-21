@echo off
setlocal
title Stop ShopSphere Localhost Server

echo Stopping Tomcat server on port 8080 and 8005...
set "CATALINA_HOME=C:\Users\Abhimanyu Prakash\.gemini\bin\apache-tomcat-10.1.34"

powershell -NoProfile -Command "Get-NetTCPConnection -LocalPort 8080,8005 -ErrorAction SilentlyContinue | ForEach-Object { Stop-Process -Id $_.OwningProcess -Force -ErrorAction SilentlyContinue }"

echo Server stopped.
ping 127.0.0.1 -n 3 >nul
