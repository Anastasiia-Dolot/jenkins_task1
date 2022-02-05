pipeline {
    agent any
    stages {
        stage ("Lint dockerfile") {
            agent {
                docker { image 'hadolint/hadolint:latest' }
                }
            steps {
                git branch: 'feature', credentialsId: 'e042030d-ced1-4bcd-8a0c-e4d385a1e05c', url: 'git@github.com:Anastasiia-Dolot/jenkins_task1.git'
                sh 'hadolint jenkins_task1/* | tee -a hadolint_lint.txt'
                }
            post {
                always {
                    archiveArtifacts 'hadolint_lint.txt'
                }
            }
        }
    }
}

