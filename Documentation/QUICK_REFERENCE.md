# Quick Reference Guide

## Essential Commands

### Maven Commands
```bash
# Clean and compile
mvn clean compile

# Run tests
mvn test

# Package application
mvn package

# Run application
mvn spring-boot:run

# Clean, test, and package
mvn clean package
```

### Docker Commands
```bash
# Build image
docker build -f Configuration/Dockerfile -t demo-app .

# Run container
docker run -p 8080:8080 demo-app

# Docker Compose
docker-compose -f Configuration/docker-compose.yml up --build
```

### Git Commands
```bash
# Initialize repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial commit"

# Add remote
git remote add origin https://github.com/sachin101/demoJSP.git

# Push to GitHub
git push -u origin main
```

### Application URLs
- Home: http://localhost:8080/demo/
- Products: http://localhost:8080/demo/products
- About: http://localhost:8080/demo/about
- Jenkins: http://localhost:8080/

## File Locations

### Source Code
- Main Application: `src/main/java/com/example/demo/DemoApplication.java`
- Controller: `src/main/java/com/example/demo/controller/DemoController.java`
- JSP Templates: `src/main/webapp/WEB-INF/jsp/`
- Configuration: `src/main/resources/application.properties`

### Configuration Files
- Maven: `pom.xml`
- Jenkins: `Configuration/Jenkinsfile`
- Docker: `Configuration/Dockerfile`
- Compose: `Configuration/docker-compose.yml`
- Git: `Configuration/.gitignore`

### Scripts
- Linux/Mac: `Scripts/quickstart.sh`
- Windows Batch: `Scripts/quickstart.bat`
- PowerShell: `Scripts/quickstart.ps1`

## Troubleshooting

### Common Issues

1. **Port 8080 already in use**
   ```bash
   # Find process using port 8080
   netstat -ano | findstr :8080
   # Kill the process
   taskkill /PID <PID> /F
   ```

2. **Maven build fails**
   ```bash
   # Clear Maven cache
   mvn clean
   # Delete local repository
   rm -rf ~/.m2/repository
   ```

3. **Docker build fails**
   ```bash
   # Clean Docker
   docker system prune -a
   # Rebuild without cache
   docker build --no-cache -f Configuration/Dockerfile -t demo-app .
   ```

## Environment Variables

### Spring Boot
- `SERVER_PORT`: Application port (default: 8080)
- `SPRING_PROFILES_ACTIVE`: Active profile

### Docker
- `SPRING_PROFILES_ACTIVE=docker`: Docker profile

## Jenkins Setup

1. Create new Pipeline job
2. Configure GitHub repository URL
3. Set build triggers (optional)
4. Save and build

## Performance Tuning

- JVM Memory: `-Xmx512m -Xms256m`
- Spring Profiles: `prod` for production
- Docker Resources: Limit CPU and memory

This quick reference covers the most common operations and troubleshooting steps.
