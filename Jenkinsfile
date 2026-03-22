pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh './mvnw clean package'   // or bat 'mvnw.cmd clean package' on Windows agent
            }
        }

        stage('Run App') {
            steps {
                // Runs in background; adjust sleep or use nohup/screen for real use
                sh 'nohup ./mvnw spring-boot:run &'
                sleep 15   // give time to start
                echo 'App should be running on http://localhost:8080 (check console logs)'
            }
        }
    }

    post {
        always {
            echo 'Build finished!'
        }
    }
}
