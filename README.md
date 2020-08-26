
  <h1 align="center">Cloud DevOps Engineer Nanodegree by Udacity: Capstone Project</h3>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
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

Deploying a web app as shown in the 

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com

<!-- Acknowledgement -->
## Acknowledgements

Special thanks to Udacity and Bertelsmann for providing this scholarships.