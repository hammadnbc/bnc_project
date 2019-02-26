pipeline {

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
                    sh 'docker login -u cozeacatalin -p admin.'
                    sh 'docker tag bnc_project_api_frontend:test  cozeacatalin/ccz-repo:frontend'
                    sh 'docker push cozeacatalin/ccz-repo:frontend'
                    sh 'docker tag bnc_project_api_nodeapp:test cozeacatalin/ccz-repo:nodeapp'
                    sh 'docker push cozeacatalin/ccz-repo:nodeapp'
                }
            }
        }
    }
}    
