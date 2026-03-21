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
                sh 'pkill -f demo-0.0.1-SNAPSHOT.jar || true'
                
                withEnv(['JENKINS_NODE_COOKIE=dontKillMe']) {
                    // Added 'disown' to further ensure the process detaches
                    sh 'nohup java -jar target/demo-0.0.1-SNAPSHOT.jar > app.log 2>&1 & disown'
                }
                
                echo 'Waiting for application to start...'
                sleep 20 // Gives Spring Boot 20 seconds to boot up
                
                echo 'Application should be live at http://localhost:8082'
            }
        }
    }

    post {
        always { echo 'Build finished!' }
        success { echo 'Build SUCCESS!' }
        failure { echo 'Build FAILED!' }
    }
}
