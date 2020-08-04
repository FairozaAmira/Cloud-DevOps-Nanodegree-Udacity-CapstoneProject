pipeline {
    agent any

    stages {

        stage('Lint HTML') {
            steps {

                echo 'Check if the HTML is properly formatted or not'
                sh 'tidy -q -e *.html'
            }
        }

        stage('Lint Dockerfile'){
            steps{
                echo 'Using hadolint to test the dockerfile'
                sh 'hadolint --ignore DL3006 Dockerfile'
            }
        } 

        stage('Build and deploy docker image to docker hub' ) {
            steps {
                echo 'Starting to build docker image'

                script {
                    dockerImage = docker.build("fairoza/capstone-udacity:latest")
                    docker.withRegistry('', 'docker-hub-credentials') {
                        dockerImage.push()
                    }
                }
                    
            }
        }

        stage('Deploy container to a Kubernetes cluster on AWS EKS'){

            steps{

                echo "Deploying to AWS EKS"
                sh 'chmod +x deploy.sh'

                withAWS(credentials: 'aws-credentials', region: 'us-west-w') {
                    sh 'aws eks --region us-west-2 update-kubeconfig --name capstone-udacity-cluster'
                    sh './deploy.sh'
                 }
                                    
            }

        }
    }
         