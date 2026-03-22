pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package'   // Builds the JAR (use bat 'mvnw.cmd ...' if Windows agent)
            }
        }

        stage('Run Application') {
            steps {
                // Start the Spring Boot app in background
                sh 'nohup java -jar target/demo-0.0.1-SNAPSHOT.jar &'
                sleep 30                    // Give it time to fully start (adjust if needed)
                echo 'Spring Boot app should now be running!'
                echo '→ Open in browser: http://localhost:8080'
                echo '(Check the Jenkins console output for lines like "Tomcat started on port(s): 8080")'
                echo 'If port conflict → kill processes on 8080 or add --server.port=8081 to java command'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed'
        }
    }
}
