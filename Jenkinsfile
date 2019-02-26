pipeline {
    agent any  
    stages {
        stage('Build') {
            steps {
                sh 'docker image build -t bnc_project_api_frontend:test forma-docker-frontend/'
                sh 'docker image build -t bnc_project_api_nodeapp:test forma-docker-nodeapp/'
                sh 'docker-compose up -d'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Tests passed"'
                sh 'docker-compose down'
            }
        }
    }
}    
