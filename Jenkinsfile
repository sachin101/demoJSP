pipeline {
    agent any  // Runs on your Docker Jenkins (Linux)

    tools {
        // Let Jenkins auto-install Maven (configure this name in Manage Jenkins → Global Tool Configuration first)
        maven 'Maven3'   // ← Change 'Maven3' to whatever name you set in Global Tools
        // Optionally add JDK if your build needs a specific version
        // jdk 'JDK17'
    }

    stages {
        stage('Clone') {
            steps {
                echo 'Repository already cloned by Jenkins (SCM checkout done automatically)'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'   // ← Changed from bat to sh
                // If you want to archive the .war/.jar:
                // archiveArtifacts artifacts: 'target/*.war', allowEmptyArchive: true
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'   // ← Also changed to sh
            }
        }

        // Add more stages later, e.g. Deploy, SonarQube, etc.
    }

    post {
        always {
            echo 'Build finished!'
            // Optional: clean up workspace if needed
            // cleanWs()
        }
        success {
            echo 'Build SUCCESS!'
        }
        failure {
            echo 'Build FAILED!'
        }
    }
}
