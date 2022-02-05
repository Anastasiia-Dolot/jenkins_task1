pipeline {
    agent any
    environment { 
       GitHubUser = credentials('a4b294f6-223c-4225-82f4-1eaec970ffd9')  
    }
    stages {
        stage('Clone repository') {
            steps {
                git branch: 'feature', credentialsId: 'e042030d-ced1-4bcd-8a0c-e4d385a1e05c', url: 'git@github.com:Anastasiia-Dolot/jenkins_task1.git'
            }
        }
    }
}

