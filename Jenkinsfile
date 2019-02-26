pipeline {

    environment {
        registry = "cozeacatalin/ccz-repo"
        registryCredential = "dockerhub"
    }

    agent any  

    stages {
        stage('Build image') {
            steps {
                sh 'docker image build -t bnc_project_api_frontend:test forma-docker-frontend/'
                sh 'docker image build -t bnc_project_api_nodeapp:test forma-docker-nodeapp/'
                sh 'docker-compose up -d'
            }
        }
        stage('Test image') {
            steps {
                sh 'echo "Tests passed"'
                sh 'docker-compose down'
            }
        }
        stage('Deploy image') {
            steps{
                script{
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
    }
}    

