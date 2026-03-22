pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package'
            }
        }

        stage('Run App') {
            steps {
                // Start in background + redirect logs
                sh 'nohup java -jar target/demo-0.0.1-SNAPSHOT.jar > app.log 2>&1 &'
                sleep 40   // give more time to start
                echo 'App should now run on http://localhost:8082'
                echo 'Check logs: cat app.log  (look for "Tomcat started on port(s): 8082")'
                echo 'If still fails → check if port 8082 is free (lsof -i :8082)'
            }
        }
    }
}
