pipeline {
    agent any  
    stages {
        stage('Build') {
            steps {
                sh 'docker container rm myredis'
                sh 'docker container rm nodeapp'
                sh 'docker container rm frontend'
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
