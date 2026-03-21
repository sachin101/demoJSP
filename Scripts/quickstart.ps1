# Spring Boot JSP Demo Application - Quick Start Script
# For Windows PowerShell

Write-Host "🚀 Spring Boot JSP Demo Application - Quick Start" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green

# Check prerequisites
Write-Host "📋 Checking prerequisites..." -ForegroundColor Yellow

try {
    $javaVersion = java -version 2>&1
    Write-Host "✅ Java found" -ForegroundColor Green
} catch {
    Write-Host "❌ Java is not installed. Please install Java 17 or higher." -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

try {
    $mvnVersion = mvn -version 2>&1
    Write-Host "✅ Maven found" -ForegroundColor Green
} catch {
    Write-Host "❌ Maven is not installed. Please install Maven 3.6 or higher." -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "✅ Prerequisites check passed" -ForegroundColor Green

# Build the application
Write-Host "🔨 Building the application..." -ForegroundColor Yellow
mvn clean package

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Build failed. Check the errors above." -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "✅ Build successful" -ForegroundColor Green

# Run the application
Write-Host "🏃 Running the application..." -ForegroundColor Yellow
Write-Host "📱 Application will be available at: http://localhost:8080/demo/" -ForegroundColor Cyan
Write-Host "📱 Press Ctrl+C to stop the application" -ForegroundColor Cyan
Write-Host ""

java -jar target/demo-0.0.1-SNAPSHOT.jar
