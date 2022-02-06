pipeline {
    agent { label 'Ubuntu20' }
    stages {
        stage('Clone repository') {
            steps {
                git branch: 'feature', credentialsId: '5028192c-d015-48e7-a7fa-96daf7c8976a', url: 'git@github.com:Anastasiia-Dolot/jenkins_task1.git'
            }
        }
        stage ("Lint Dockerfile") {
            agent {
                docker { image 'hadolint/hadolint:latest-debian' }
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

