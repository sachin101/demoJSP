@echo off
REM Spring Boot JSP Demo Application - Quick Start Script
REM For Windows systems

echo 🚀 Spring Boot JSP Demo Application - Quick Start
echo =================================================

REM Check prerequisites
echo 📋 Checking prerequisites...

java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Java is not installed. Please install Java 17 or higher.
    pause
    exit /b 1
)

mvn -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Maven is not installed. Please install Maven 3.6 or higher.
    pause
    exit /b 1
)

echo ✅ Prerequisites check passed

REM Build the application
echo 🔨 Building the application...
call mvn clean package

if %errorlevel% neq 0 (
    echo ❌ Build failed. Check the errors above.
    pause
    exit /b 1
)

echo ✅ Build successful

REM Run the application
echo 🏃 Running the application...
echo 📱 Application will be available at: http://localhost:8080/demo/
echo 📱 Press Ctrl+C to stop the application
echo.

java -jar target\demo-0.0.1-SNAPSHOT.jar
