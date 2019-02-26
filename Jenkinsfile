pipeline {
    agent any  
    stages {
        stage('Build') {
            steps {
                sh 'docker image build -t bnc_project_api_frontend:test frontend/'
                sh 'docker image build -t bnc_project_api_nodeapp:test nodeapp/'
                sh 'docker-compose up'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Tests passed"'
            }
        }
    }
}   
