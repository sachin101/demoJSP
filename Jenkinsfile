pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package'
            }
        }

        stage('Run Application') {
            steps {
                sh 'nohup java -jar target/*.jar &'
                sleep 25                    // wait for startup
                echo 'App should be live at: http://localhost:8082'
                echo 'Check console logs above for "Tomcat started on port(s): 8082"'
            }
        }
    }
}
