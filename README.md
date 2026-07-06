# College Event Website - DevOps Automation Project

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />
<div align="center">
  <h3 align="center">College Event Website</h3>
  <p align="center">
    A complete DevOps implementation for a Spring Boot based College Event Website demonstrating Continuous Integration, Containerization, Kubernetes Deployment, Monitoring, and Visualization using Jenkins, Docker, Kubernetes, Nagios, Graphite, and Grafana.
    <br />
    <br />
    <a href="https://github.com/DYNAMAXD/IBM-DevOps-Assignment2"><strong>View Repository »</strong></a>
    <br />
    <br />
    <a href="https://github.com/DYNAMAXD/IBM-DevOps-Assignment2/issues">Report Bug</a>
    ·
    <a href="https://github.com/DYNAMAXD/IBM-DevOps-Assignment2/issues">Request Feature</a>
  </p>
</div>

---

# Project Overview

This project demonstrates a complete DevOps workflow for deploying and monitoring a Spring Boot web application developed for a fictional College Technical Symposium.

The project automates the complete software delivery lifecycle beginning from source code management and ending with infrastructure monitoring and visualization.

The implementation includes:

- Version Control using GitHub
- Continuous Integration using Jenkins
- Application Packaging using Maven
- Containerization using Docker
- Deployment using Kubernetes
- Availability Monitoring using Nagios
- Metrics Collection using Graphite
- Dashboard Visualization using Grafana

---

# Architecture

```
Developer
     │
     ▼
GitHub Repository
     │
     ▼
Jenkins Pipeline
     │
     ▼
Maven Build
     │
     ▼
Docker Image
     │
     ▼
Docker Container
     │
     ▼
Kubernetes Deployment
     │
     ▼
College Event Website
     │
     ▼
Nagios Monitoring
     │
     ▼
Graphite Metrics
     │
     ▼
Grafana Dashboard
```

---

# Built With

* ![Java](https://img.shields.io/badge/Java-21-orange?style=for-the-badge&logo=openjdk)
* ![Spring Boot](https://img.shields.io/badge/SpringBoot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
* ![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)
* ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
* ![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
* ![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=jenkins&logoColor=white)
* ![Nagios](https://img.shields.io/badge/Nagios-000000?style=for-the-badge)
* ![Graphite](https://img.shields.io/badge/Graphite-000000?style=for-the-badge)
* ![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)

---

# Features

- Responsive College Event Website
- Spring Boot Web Application
- Automated Maven Build
- Docker Image Creation
- Docker Container Deployment
- Kubernetes Deployment with Replicas
- NodePort Service Configuration
- Jenkins CI/CD Pipeline
- Website Availability Monitoring using Nagios
- Metrics Collection using Graphite
- Dashboard Visualization using Grafana

---

# Project Structure

```text
college-event-website
│
├── k8s
│   ├── deployment.yaml
│   └── service.yaml
│
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── college
│       │           └── event
│       └── resources
│           ├── static
│           └── application.properties
│
├── Dockerfile
├── Jenkinsfile
├── pom.xml
└── README.md
```

---

# Installation

## Clone Repository

```bash
git clone https://github.com/DYNAMAXD/IBM-DevOps-Assignment2.git

cd IBM-DevOps-Assignment2
```

---

## Build the Project

```bash
mvn clean package
```

---

## Build Docker Image

```bash
docker build -t college-event-website:latest .
```

---

## Run Docker Container

```bash
docker run -d \
-p 8081:8080 \
--name event-site-test \
college-event-website:latest
```

Application:

```
http://localhost:8081
```

---

## Deploy to Kubernetes

```bash
kubectl apply -f k8s/deployment.yaml

kubectl apply -f k8s/service.yaml
```

Verify deployment:

```bash
kubectl get pods

kubectl get services

kubectl get deployments
```

---

## Jenkins Pipeline

The Jenkins pipeline automates the complete deployment workflow.

Pipeline Stages:

```
Checkout Source Code

↓

Maven Build

↓

Docker Build

↓

Load Image into Kubernetes

↓

Docker Smoke Test

↓

Deploy to Kubernetes
```

---

## Monitoring

### Nagios

Monitors:

- Host Availability
- HTTP Service Status
- Website Availability

---

### Graphite

Collects metrics for:

- CPU
- Memory
- Disk
- Network
- Uptime

---

### Grafana

Visualizes Graphite metrics through dashboards including:

- CPU Usage
- Memory Usage
- Disk Usage
- Network Traffic
- System Uptime

---

# Screenshots

The project documentation includes screenshots for:

- GitHub Repository
- Jenkins Pipeline
- Maven Build
- Docker Build
- Docker Containers
- Kubernetes Deployment
- Running Website
- Nagios Dashboard
- Graphite Metrics
- Grafana Dashboard

---

# Contributors

**Divyansh Yadav**

Lead Developer

GitHub:
https://github.com/DYNAMAXD

LinkedIn:
https://www.linkedin.com/in/dynamaxd/

---

# License

This project has been developed for academic purposes as part of a DevOps Assignment demonstrating Continuous Integration, Continuous Deployment, Containerization, Orchestration, Monitoring, and Dashboard Visualization.

---

<!-- MARKDOWN LINKS -->

[contributors-shield]: https://img.shields.io/github/contributors/DYNAMAXD/IBM-DevOps-Assignment2.svg?style=for-the-badge
[contributors-url]: https://github.com/DYNAMAXD/IBM-DevOps-Assignment2/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/DYNAMAXD/IBM-DevOps-Assignment2.svg?style=for-the-badge
[forks-url]: https://github.com/DYNAMAXD/IBM-DevOps-Assignment2/network/members
[stars-shield]: https://img.shields.io/github/stars/DYNAMAXD/IBM-DevOps-Assignment2.svg?style=for-the-badge
[stars-url]: https://github.com/DYNAMAXD/IBM-DevOps-Assignment2/stargazers
[issues-shield]: https://img.shields.io/github/issues/DYNAMAXD/IBM-DevOps-Assignment2.svg?style=for-the-badge
[issues-url]: https://github.com/DYNAMAXD/IBM-DevOps-Assignment2/issues
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/dynamaxd/
