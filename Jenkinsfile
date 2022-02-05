pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'feature', credentialsId: 'e042030d-ced1-4bcd-8a0c-e4d385a1e05c', url: 'git@github.com:Anastasiia-Dolot/jenkins_task1.git'
            }
        }
        stage ("Lint Dockerfile") {
            steps {
                sh 'docker pull hadolint/hadolint'
                sh 'docker run --rm -i hadolint/hadolint < Dockerfile > LintDocker.txt'
            }
        }
   }
}

