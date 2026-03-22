pipeline {
    agent any

    tools {
        // If you install Maven/JDK in Jenkins → use this
        // maven 'Maven3'   // configure in Jenkins → Manage Tools
    }

    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package'   // builds JAR or WAR
            }
        }

        stage('Run/Deploy App') {
            steps {
                script {
                    // For Spring Boot JAR (embedded Tomcat)
                    sh 'nohup java -jar target/*.jar > app.log 2>&1 &'
                    sleep 40
                    sh 'cat app.log'  // print logs to console
                }
                // If WAR + local Tomcat needed → install Tomcat in container or separate stage
                // sh 'cp target/*.war /path/to/tomcat/webapps/'
            }
        }
    }

    post {
        always {
            echo 'Check app at http://localhost:8082'
            sh 'cat app.log || echo "No log file yet"'
        }
    }
}
