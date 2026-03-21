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
                // 1. Kill old process (|| true prevents failure if no process is found)
                sh 'pkill -f demo-0.0.1-SNAPSHOT.jar || true'
                
                // 2. Start the new process
                withEnv(['JENKINS_NODE_COOKIE=dontKillMe']) {
                    // We use /bin/bash explicitly to handle backgrounding better
                    sh """
                        nohup java -jar target/demo-0.0.1-SNAPSHOT.jar > app.log 2>&1 &
                    """
                }
                
                echo 'Application starting... wait 20 seconds.'
                sleep 20
                echo 'Check http://localhost:8082'
            }
        }
    }

    post {
        always { echo 'Build finished!' }
        success { echo 'Build SUCCESS!' }
        failure { echo 'Build FAILED!' }
    }
}
