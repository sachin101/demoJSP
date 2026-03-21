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

    stage('Docker Build & Run') {
    steps {
        sh 'docker build -t demo-app .'
        sh 'docker rm -f demo-app || true'
        sh 'docker run -d -p 8082:8082 --name demo-app demo-app'
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
