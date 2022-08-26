pipeline{
    agent any
    tools {nodejs "nodejs"}
    stages{
        stage('npm install and ng build --prod'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/VitthalVK/foodboxprojfrontend.git']]])
                sh 'npm install'
                sh 'npm run ng build --prod'
            }
         }
         
         
         stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t vitthng/foodbox .'
                }
            }
        }
        stage('Push Image To Hub'){
            steps{
                script{
                    sh 'docker login -u vitthng -p Gopvitthng@'
                    sh 'docker push vitthng/foodbox'
                }
            }
        }
         
         
        }
        
    }
