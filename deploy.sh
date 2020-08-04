# Create a deployment on a Kubernetes cluster

kubectl create deployment capstone-project --image=fairoza/capstone-udacity:latest

# get kube pods

kubectl get pods

# expose a service to external clients

kubectl expose deployment capstone-project --type LoadBalancer --port 80 --name=nginx-service

# display detailed information about service if created successfully

kubectl describe services nginx-service