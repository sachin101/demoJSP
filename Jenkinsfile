pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK21'
    }

    stages {
        stage('Build & Test') { 
            steps {
                // Running 'package' already runs 'test' by default in Maven
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
                // 1. Kill old process
                sh 'pkill -f demo-0.0.1-SNAPSHOT.jar || true'
                
                // 2. The fix: prevent Jenkins from killing the background process
                withEnv(['JENKINS_NODE_COOKIE=dontKillMe']) {
                    sh 'nohup java -jar target/demo-0.0.1-SNAPSHOT.jar > app.log 2>&1 &'
                }
                
                echo 'Application deployed on http://localhost:8082'
            }
        }
    }

    post {
        always { echo 'Build finished!' }
        success { echo 'Build SUCCESS!' }
        failure { echo 'Build FAILED!' }
    }
}
