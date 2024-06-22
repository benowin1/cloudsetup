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
                bat 'docker tag qnmahjong:latest 896600156481.dkr.ecr.ap-south-1.amazonaws.com/demo:latest'
                bat 'docker push 896600156481.dkr.ecr.ap-south-1.amazonaws.com/demo:latest'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
