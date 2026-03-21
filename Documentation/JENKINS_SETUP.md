# Jenkins Setup Guide

## Prerequisites

- Jenkins installed and running at http://localhost:8080/
- Git plugin installed
- Maven plugin installed
- Docker plugin (optional)

## Accessing Jenkins

1. Open browser: http://localhost:8080/
2. Unlock Jenkins with initial password
3. Install suggested plugins
4. Create admin user

## Creating a Pipeline Job

### Step 1: New Item
1. Click "New Item"
2. Enter name: `demoJSP-pipeline`
3. Select "Pipeline"
4. Click "OK"

### Step 2: Configure Pipeline
1. Under "Pipeline" section
2. Definition: "Pipeline script from SCM"
3. SCM: Git
4. Repository URL: `https://github.com/sachin101/demoJSP.git`
5. Branch: `*/main`
6. Script Path: `Configuration/Jenkinsfile`

### Step 3: Build Triggers (Optional)
- Poll SCM: `H/5 * * * *` (check every 5 minutes)
- GitHub hook trigger for GITScm polling

### Step 4: Save
- Click "Save"

## Running the Pipeline

### Manual Build
1. Go to the job page
2. Click "Build Now"
3. Monitor the build in "Console Output"

### Stages
1. **Checkout**: Clone code from GitHub
2. **Build**: `mvn clean compile`
3. **Test**: `mvn test`
4. **Package**: `mvn package -DskipTests`
5. **Archive**: Save JAR artifacts

## Jenkins Configuration

### Global Tool Configuration
1. Go to Manage Jenkins > Global Tool Configuration
2. Add JDK 17
3. Add Maven 3.6.3

### Plugin Management
Required plugins:
- Git
- Maven Integration
- Pipeline
- Docker (optional)

## Webhook Setup

### GitHub Webhook
1. In GitHub repository Settings > Webhooks
2. Add webhook:
   - Payload URL: `http://localhost:8080/github-webhook/`
   - Content type: `application/json`
   - Events: Push

### Jenkins Webhook
1. In job configuration
2. Check "GitHub hook trigger for GITScm polling"

## Monitoring Builds

### Build History
- View past builds
- Check build status
- Download artifacts

### Console Output
- Detailed build logs
- Error messages
- Test results

## Troubleshooting

### Build Failures
- Check console output for errors
- Verify tool installations
- Ensure correct paths

### Permission Issues
- Check Jenkins user permissions
- Verify Git credentials
- Ensure write access to workspace

### Plugin Issues
- Update plugins
- Restart Jenkins after plugin installation

## Advanced Configuration

### Environment Variables
```groovy
environment {
    MAVEN_OPTS = '-Xmx1024m'
    JAVA_HOME = '/path/to/jdk17'
}
```

### Parallel Stages
```groovy
parallel {
    stage('Unit Tests') {
        steps { sh 'mvn test' }
    }
    stage('Integration Tests') {
        steps { sh 'mvn verify' }
    }
}
```

### Notifications
```groovy
post {
    success {
        mail to: 'team@example.com',
             subject: "Build Success",
             body: "Build ${env.BUILD_NUMBER} succeeded"
    }
    failure {
        mail to: 'team@example.com',
             subject: "Build Failed",
             body: "Build ${env.BUILD_NUMBER} failed"
    }
}
```

This guide provides complete instructions for setting up Jenkins CI/CD for the Spring Boot JSP project.
