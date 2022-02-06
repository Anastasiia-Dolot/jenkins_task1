pipeline {
    agent any
    stages {
        node("Ub20") {
            stage("Clone repo") {
                git branch: 'feature', credentialsId: 'e042030d-ced1-4bcd-8a0c-e4d385a1e05c', url: 'https://github.com/Anastasiia-Dolot/jenkins_task1.git'
            }
            stage("Lint dockerfile") {
                steps {
                    sh 'cd jenkins_task1'
                    sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
                }
            }
        }
    }
}

