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
                sh "docker version"
                sh 'mvn clean install'
                sh 'docker build -t qnmahjong .'
            }
        }
        stage('ECR Push') {
            steps {
              echo 'ECR Push'  
                                     
            }
        }
        stage('Deploy') {
            steps {
             echo 'Deploy'  
        }
    }
}
}
