# Complete GitHub + Jenkins Setup Guide

## Overview

This guide combines GitHub repository setup with Jenkins CI/CD pipeline configuration for the Spring Boot JSP demo application.

## Part 1: GitHub Repository Setup

### 1.1 Create Repository
1. Navigate to https://github.com
2. Click "New repository"
3. Configure:
   - Repository name: `demoJSP`
   - Description: "Spring Boot JSP Demo Application with CI/CD"
   - Visibility: Public
4. Do NOT initialize with files
5. Click "Create repository"

### 1.2 Local Git Configuration
```bash
# Navigate to project directory
cd D:\IntellijaWorkspace\demoJSP

# Initialize Git repository
git init

# Configure user details
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Add remote origin
git remote add origin https://github.com/sachin101/demoJSP.git
```

### 1.3 Push Initial Code
```bash
# Stage all files
git add .

# Commit changes
git commit -m "Initial commit: Spring Boot JSP demo application"

# Push to GitHub
git push -u origin main
```

### 1.4 Configure Webhooks
1. Go to repository Settings > Webhooks
2. Click "Add webhook"
3. Configure:
   - Payload URL: `http://localhost:8080/github-webhook/`
   - Content type: `application/json`
   - Events: Push, Pull requests
4. Click "Add webhook"

## Part 2: Jenkins Setup

### 2.1 Access Jenkins
1. Open http://localhost:8080/
2. Complete initial setup
3. Install suggested plugins

### 2.2 Install Required Plugins
- Git
- Maven Integration
- Pipeline
- GitHub Integration

### 2.3 Global Tool Configuration
1. Manage Jenkins > Global Tool Configuration
2. Add JDK 17
3. Add Maven 3.6.3

### 2.4 Create Pipeline Job
1. New Item > Pipeline
2. Name: `demoJSP-pipeline`
3. Configure:
   - Pipeline script from SCM
   - Git repository URL
   - Branch: `*/main`
   - Script path: `Configuration/Jenkinsfile`

### 2.5 Configure Build Triggers
- Enable "GitHub hook trigger for GITScm polling"
- Optional: Poll SCM every 5 minutes

## Part 3: Testing the Integration

### 3.1 Make a Code Change
```bash
# Edit a file
echo "# Test change" >> README.md

# Commit and push
git add README.md
git commit -m "Test Jenkins trigger"
git push origin main
```

### 3.2 Monitor Jenkins Build
1. Jenkins should automatically start a build
2. Check build status
3. View console output
4. Verify artifact creation

## Part 4: Advanced Configuration

### 4.1 Branch Protection
1. Repository Settings > Branches
2. Protect `main` branch
3. Require pull request reviews
4. Require status checks

### 4.2 Jenkins Notifications
Configure email or Slack notifications for build results.

### 4.3 Automated Deployment
Extend pipeline for automatic deployment to staging/production.

## Troubleshooting

### Common Issues
- Authentication problems
- Webhook failures
- Build failures
- Permission issues

### Solutions
- Verify credentials
- Check webhook URLs
- Review build logs
- Ensure proper permissions

This comprehensive guide ensures complete integration between GitHub and Jenkins for automated CI/CD.
