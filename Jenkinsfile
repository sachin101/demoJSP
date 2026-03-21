pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Repository already cloned by Jenkins'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'   // Use 'sh' instead of 'bat' if on Linux agent
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
    }

    post {
        always {
            echo 'Build finished!'
        }
    }
}
