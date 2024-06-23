pipeline {
    agent any
    
    stages {
        stage('Cloning Git') {
            steps {
                script {
                    git branch: 'main',
                        credentials: 'Credential ID',
                        url: 'https://github.com/benowin1/cloudsetup.git'
                }
            }
        }
        
        stage('Build') {
            steps {
                echo 'Build..'
                bat "docker version"
                bat 'mvn clean install'
                bat 'docker build -t qnmahjong .'
            }
        }
        stage('ECR Push') {
            withAWS(credentials: 'AWSCLICREDENTIALS', region: 'us-west-2') {
                bat 'docker tag qnmahjong:latest public.ecr.aws/b1x9w7o4/demo:latest'
                bat 'docker push public.ecr.aws/b1x9w7o4/demo:latest'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
