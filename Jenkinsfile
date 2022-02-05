pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                git branch: 'feature', credentialsId: 'e042030d-ced1-4bcd-8a0c-e4d385a1e05c', url: 'git@github.com:Anastasiia-Dolot/jenkins_task1.git'
            }
        }
        stage ("lint dockerfile") {
            agent {
                docker {
                    image 'hadolint/hadolint:latest-debian'
                }
            }
            steps {
                sh 'hadolint dockerfiles/* | tee -a hadolint_lint.txt'
            }
            post {
                always {
                    archiveArtifacts 'hadolint_lint.txt'
                }
            }
        }
    }
}

