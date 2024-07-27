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
              echo 'ECR Push'  
                                     
            }
        }
        stage('Deploy') {
            steps {
              withAWS(["AWS_ACCESS_KEY_ID=AKIA5BQMIVFA2JMJ6GL3","AWS_SECRET_ACCESS_KEY=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","AWS_DEFAULT_REGION=us-west-2"])
				 {
					 sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/b1x9w7o4'
					 
					 sh 'docker build -t demo .'
					 
					 sh 'docker tag demo:latest public.ecr.aws/b1x9w7o4/demo:latest'
					 
					 sh 'docker push public.ecr.aws/b1x9w7o4/demo:latest'
				 }
            }
        }
    }
}
