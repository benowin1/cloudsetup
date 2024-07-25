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
            steps {
                script {
                 sh "aws ecr get-login-password - region us-west-2 | docker login - username AWS - password-stdin 896600156481.dkr.ecr.us-west-2.amazonaws.com"
                 }
                
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
