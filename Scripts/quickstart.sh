#!/bin/bash

# Spring Boot JSP Demo Application - Quick Start Script
# For Linux/Mac systems

echo "🚀 Spring Boot JSP Demo Application - Quick Start"
echo "================================================="

# Check prerequisites
echo "📋 Checking prerequisites..."

if ! command -v java &> /dev/null; then
    echo "❌ Java is not installed. Please install Java 17 or higher."
    exit 1
fi

if ! command -v mvn &> /dev/null; then
    echo "❌ Maven is not installed. Please install Maven 3.6 or higher."
    exit 1
fi

echo "✅ Prerequisites check passed"

# Build the application
echo "🔨 Building the application..."
mvn clean package

if [ $? -ne 0 ]; then
    echo "❌ Build failed. Check the errors above."
    exit 1
fi

echo "✅ Build successful"

# Run the application
echo "🏃 Running the application..."
echo "📱 Application will be available at: http://localhost:8080/demo/"
echo "📱 Press Ctrl+C to stop the application"
echo ""

java -jar target/demo-0.0.1-SNAPSHOT.jar
