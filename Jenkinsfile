pipeline {
    agent any
    environment { 
       GitHubUser = credentials('a4b294f6-223c-4225-82f4-1eaec970ffd9')  
    }
    stages {
        stage('Clone repository') {
            steps {
                bat "git clone -b feature https://github.com/Anastasiia-Dolot/jenkins_task1.git"
            }
        }
    }
}

