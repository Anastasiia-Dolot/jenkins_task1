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
                sh 'docker pull hadolint/hadolint'
                sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
                }
        }
        stage("My stage") {            
        steps {
            bat label: 'My batch script',
                script: ''' @echo off
                            return_1_if_success.exe   // command which returns 1 in case of success, 0 otherwise
                            IF %ERRORLEVEL% EQU 1 (exit /B 0) ELSE (exit /B 1)'''
        }
    }
    }
}
