pipeline {
    agent any
    stages {
        stage("Clone repo") {
            node("Ub20") {
                git branch: 'feature', credentialsId: 'e042030d-ced1-4bcd-8a0c-e4d385a1e05c', url: 'https://github.com/Anastasiia-Dolot/jenkins_task1.git'
            }
        }
        stage("Lint dockerfile") {
            node("Ub20") {
                sh 'cd jenkins_task1'
                sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
            }
        }
    }
}

