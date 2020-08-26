pipeline {
     agent any
     stages {
         stage('Build') {
              steps {
                  sh 'echo Building...'
              }
         }
         stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }
         stage('Build Docker Image') {
              steps {
                  sh 'docker build -t capstone-app .'
              }
         }
         stage('Push Docker Image') {
              steps {
                  withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                      sh "docker tag cloud-devops-udacity-capstone FairozaAmira/cloud-devops-udacity-capstone"
                      sh 'docker push FairozaAmira/cloud-devops-udacity-capstone'
                  }
              }
         }
         stage('Deploying') {
              steps{
                  echo 'Deploying to AWS...'
                  withAWS(credentials: 'aws', region: 'us-west-2') {
                      sh "aws eks --region us-west-2 update-kubeconfig --name udacity-eks"
                      sh "kubectl config use-context arn:aws:eks:us-west-2:386907932725:cluster/udacity-eks"
                      sh "kubectl set image deployments/cloud-devops-udacity-capstone cloud-devops-udacity-capstone=FairozaAmira/cloud-devops-udacity-capstone:latest"
                      sh "kubectl apply -f CloudFormation/aws-auth-cm.yaml"
                      sh "kubectl apply -f deployment/deployment.yml"
                      sh "kubectl get nodes"
                      sh "kubectl get deployment"
                      sh "kubectl get pod -o wide"
                      sh "kubectl get service/cloud-devops-udacity-capstone"
                  }
              }
        }
        stage("Cleaning up") {
              steps{
                    echo 'Cleaning up...'
                    sh "docker system prune"
              }
        }
     }
}