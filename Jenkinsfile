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
                 bat 'docker build -f '.docker/http/Dockerfile' --target my-target --label my-label .'
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
