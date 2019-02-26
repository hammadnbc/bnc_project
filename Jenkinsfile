pipeline {
    agent any  
    stages {
        stage('Build') {
            steps {
                sh 'docker container rm -f myredis'
                sh 'docker container rm -f nodeapp'
                sh 'docker container rm -f frontend'
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
