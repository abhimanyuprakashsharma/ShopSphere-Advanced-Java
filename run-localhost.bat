@echo off
setlocal enabledelayedexpansion
title ShopSphere Localhost Runner

echo ========================================================
echo   Starting ShopSphere E-Commerce Platform on Localhost
echo ========================================================
echo.

:: 1. Set environment variables
set "CATALINA_HOME=C:\Users\Abhimanyu Prakash\.gemini\bin\apache-tomcat-10.1.34"
set "SHOPSPHERE_DIR=%~dp0"
if exist "%SHOPSPHERE_DIR%ShopSphere" (
    set "PROJECT_DIR=%SHOPSPHERE_DIR%ShopSphere"
) else (
    set "PROJECT_DIR=%SHOPSPHERE_DIR%"
)

set "SHOPSPHERE_DB_URL=jdbc:mysql://localhost:3306/shopsphere?useSSL=false&serverTimezone=UTC"
set "SHOPSPHERE_DB_USER=root"
set "SHOPSPHERE_DB_PASSWORD=root"

:: 2. Check MySQL Service
echo [1/5] Checking MySQL Service...
powershell -NoProfile -Command "Get-Service -Name MySQL80 -ErrorAction SilentlyContinue | Where-Object {$_.Status -ne 'Running'} | Start-Service" >nul 2>&1
echo       MySQL is ready.

:: 3. Build & Package WAR if needed
echo [2/5] Checking application package...
if not exist "%PROJECT_DIR%\target\shopsphere.war" (
    echo       Building shopsphere.war via Maven...
    cd /d "%PROJECT_DIR%"
    call mvn clean package -DskipTests
    if errorlevel 1 (
        echo [ERROR] Maven build failed.
        pause
        exit /b 1
    )
) else (
    echo       Using existing target\shopsphere.war
)

:: 4. Deploy WAR & Context to Tomcat
echo [3/5] Deploying to Apache Tomcat 10.1...
copy /y "%PROJECT_DIR%\target\shopsphere.war" "%CATALINA_HOME%\webapps\shopsphere.war" >nul
if exist "%PROJECT_DIR%\deploy\tomcat\context.xml" (
    if not exist "%CATALINA_HOME%\conf\Catalina\localhost" mkdir "%CATALINA_HOME%\conf\Catalina\localhost"
    copy /y "%PROJECT_DIR%\deploy\tomcat\context.xml" "%CATALINA_HOME%\conf\Catalina\localhost\shopsphere.xml" >nul
)

:: 5. Start Tomcat if not already listening on port 8080
echo [4/5] Checking port 8080...
netstat -ano | findstr /R /C:":8080 .*LISTENING" >nul
if errorlevel 1 (
    echo       Starting Tomcat server in background...
    start "Tomcat Server (ShopSphere)" /min cmd /c "call "%CATALINA_HOME%\bin\catalina.bat" run"
    
    echo       Waiting for server to become ready...
    powershell -NoProfile -Command "$ready=$false; for ($i=0; $i -lt 30; $i++) { Start-Sleep -Seconds 1; if (Get-NetTCPConnection -LocalPort 8080 -State Listen -ErrorAction SilentlyContinue) { $ready=$true; break } }; if (-not $ready) { exit 1 }"
    if errorlevel 1 (
        echo [ERROR] Tomcat failed to start within timeout. Check %CATALINA_HOME%\logs\
        pause
        exit /b 1
    )
    echo       Tomcat server is ready on port 8080.
) else (
    echo       Tomcat is already running on port 8080.
)

:: 6. Launch Browser
echo [5/5] Opening ShopSphere in your browser...
start http://localhost:8080/shopsphere/

echo.
echo ========================================================
echo   ShopSphere is now LIVE on Localhost!
echo ========================================================
echo.
echo   * Storefront:     http://localhost:8080/shopsphere/
echo   * Health Check:   http://localhost:8080/shopsphere/health
echo   * Admin Panel:    http://localhost:8080/shopsphere/admin/dashboard
echo.
echo   Demo Login Accounts:
echo   - Administrator: admin@shopsphere.com  / Admin@1234
echo   - Customer:      customer@shopsphere.com / Customer@1234
echo.
echo   To stop the server anytime, run stop-localhost.bat
echo ========================================================
echo.
ping 127.0.0.1 -n 4 >nul
