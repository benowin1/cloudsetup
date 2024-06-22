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
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
