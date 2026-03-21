# GitHub Setup Guide

## Creating a GitHub Repository

1. Go to https://github.com
2. Click "New repository"
3. Repository name: `demoJSP`
4. Description: "Spring Boot JSP Demo Application"
5. Choose Public or Private
6. Do NOT initialize with README
7. Click "Create repository"

## Local Git Setup

### Initialize Repository
```bash
cd D:\IntellijaWorkspace\demoJSP
git init
```

### Configure Git
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Add Remote Origin
```bash
git remote add origin https://github.com/sachin101/demoJSP.git
```

## Pushing Code to GitHub

### Stage Files
```bash
git add .
```

### Commit Changes
```bash
git commit -m "Initial commit: Spring Boot JSP demo application"
```

### Push to GitHub
```bash
git push -u origin main
```

## Branching Strategy

### Create Feature Branch
```bash
git checkout -b feature/new-feature
```

### Merge to Main
```bash
git checkout main
git merge feature/new-feature
git push origin main
```

## GitHub Features

### Issues
- Track bugs and features
- Assign to team members
- Add labels and milestones

### Pull Requests
- Code review process
- Automated testing
- Merge approvals

### Actions (CI/CD)
- Automated builds
- Testing workflows
- Deployment pipelines

## Repository Settings

### Branch Protection
1. Go to Settings > Branches
2. Add rule for `main` branch
3. Require pull request reviews
4. Require status checks

### Webhooks
For Jenkins integration:
1. Go to Settings > Webhooks
2. Add webhook
3. Payload URL: `http://your-jenkins-url/github-webhook/`
4. Content type: `application/json`
5. Events: Push and Pull Request

## Collaboration

### Forking
- Contributors fork the repository
- Make changes in their fork
- Submit pull requests

### Code Reviews
- Review code changes
- Add comments and suggestions
- Approve or request changes

## Best Practices

- Commit often with descriptive messages
- Use branches for features
- Keep commits atomic
- Write clear commit messages
- Use .gitignore properly

## Troubleshooting

### Authentication Issues
```bash
# Use personal access token
git remote set-url origin https://YOUR_USERNAME:YOUR_TOKEN@github.com/sachin101/demoJSP.git
```

### Push Rejected
```bash
# Pull latest changes first
git pull origin main --rebase
git push origin main
```

This guide covers the essential GitHub setup and workflow for the project.
