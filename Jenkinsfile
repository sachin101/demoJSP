pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK21'
    }

    stages {
        stage('Clone') {
            steps {
                echo 'Repository already cloned by Jenkins (SCM checkout done automatically)'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                // Stop any previous instance
                sh 'pkill -f demo-0.0.1-SNAPSHOT.jar || true'
                // Start the new one in background
                sh 'nohup java -jar target/demo-0.0.1-SNAPSHOT.jar > app.log 2>&1 &'
                echo 'Application deployed on http://localhost:8082'
            }
        }
    }

    post {
        always {
            echo 'Build finished!'
        }
        success {
            echo 'Build SUCCESS!'
        }
        failure {
            echo 'Build FAILED!'
        }
    }
}
