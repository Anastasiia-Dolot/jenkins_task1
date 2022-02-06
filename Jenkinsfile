pipeline {
    agent { label 'Ubuntu20' }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'feature', credentialsId: '5028192c-d015-48e7-a7fa-96daf7c8976a', url: 'git@github.com:Anastasiia-Dolot/jenkins_task1.git'
            }
        }
        stage ("Lint Dockerfile") {
            steps {
                sh 'docker pull hadolint/hadolint:latest'
                sh 'docker run --rm -i ghcr.io/hadolint/hadolint < Dockerfile | tee -a hadolint_lint.txt'
                sh 'cat hadolint_lint.txt'
                sh 'ls -la'
                }
        }
    }
}
