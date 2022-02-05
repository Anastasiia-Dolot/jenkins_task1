pipeline {
    agent any
    stages {
        stage('Clone repository') {
            git clone -b feature git@git.epam.com:anastasiia_dolot/test.git
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