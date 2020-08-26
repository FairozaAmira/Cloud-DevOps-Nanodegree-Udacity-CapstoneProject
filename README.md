
  <h1 align="center">Cloud DevOps Engineer Nanodegree by Udacity: Capstone Project</h1>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

This project is a part from Udacity Nanodegree.
In this project, it is required to apply the skills and knowledge obtained from the program, which includes:
1. Worked with AWS
2. Used Jenkins to implement Continuous Integration and Continuous Deployment (CI/CD)
3. Built pipelines in Jenkins 
4. Used Ansible and CloudFormation to deploy clusters
5. Built Kubernetes clusters (AWS EKS)
6. Built Docker containers in pipelines (Dockerhub)

The CI/CD pipeline for microservices applications is developed with rolling deployment. Linting is also done to check typographical errors. 

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

1. Create an AWS account
2. Create an EC2 instance with Amazon Linux and [install Jenkins](https://www.edureka.co/community/53769/install-jenkins-on-an-ec2-instance).
3. Then, install necessary plugins such as AWS SDK, Blue Ocean, Pipeline and GitHub clients.
4. Create a [Docker](hub.docker.com) account.
5. EKS can be created manually by using the command below.
```
eksctl create cluster --name <cluster-name> --version 1.16 --nodegroup-name standard-workers --node-type t2.medium --nodes 3 --nodes-min 1 --nodes-max 4 --node-ami auto --region us-west-2
```
6. Setup the credentials in Jenkins for AWS credentials and dockerhub credentials

### Installation

1. Clone the repo
```sh
git clone https://github.com/FairozaAmira/cloud-devops-udacity-capstone.git
```
2. Run `make lint` to lint the app locally.
3. Run `./run-docker.sh` and `./run-kubernetes.sh` to run locally.
4. Upload the api to DockerHub by using `./upload-docker.sh`
5. Build by using Blue Ocean in Jenkins or Pipeline to build run the `Jenkinsfile` and successfully build the apps.

<!-- USAGE EXAMPLES -->
## Usage

Deploying a web app as shown in [this screenshot](https://github.com/FairozaAmira/cloud-devops-udacity-capstone/blob/master/screenshots/Deployed-Page.png)


<!-- LICENSE -->
## License

Distributed under the Apache License 2.0. See `LICENSE` for more information.


<!-- CONTACT -->
## Contact

Fairoza Amira Binti Hamzah - [@DrFairoza](https://twitter.com/DrFairoza)

<!-- Acknowledgement -->
## Acknowledgements

Special thanks to Udacity and Bertelsmann for providing this scholarships.
