pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                git branch: 'feature', credentialsId: 'e042030d-ced1-4bcd-8a0c-e4d385a1e05c', url: 'git@github.com:Anastasiia-Dolot/jenkins_task1.git'
            }
        }
        stage('Dockerfile linting') {
            custom:
                build-docker:
                    - step:
                        name: Dockerlint
                        script:
                            - docker run --rm -i -v ${PWD}/.hadolint.yml:/.hadolint.yaml 
            hadolint/hadolint:v1.10.3  Dockerfile
                - step: 
                    name: Build image
                    script:
                        - docker build -t myimage .
        }
    }
}

