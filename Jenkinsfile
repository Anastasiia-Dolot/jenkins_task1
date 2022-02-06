pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            git clone -b feature git@github.com:Anastasiia-Dolot/jenkins_task1.git
        }
        stage ("Lint dockerfile") {
            agent {
                docker {
                    image 'hadolint/hadolint:latest-debian'
                    //image 'ghcr.io/hadolint/hadolint:latest-debian'
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
