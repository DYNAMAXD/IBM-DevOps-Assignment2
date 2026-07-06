pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    environment {
        IMAGE_NAME = "college-event-website:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/DYNAMAXD/IBM-DevOps-Assignment2.git'
            }
        }

        stage('Maven Build') {
            steps {
                bat 'mvn clean package'   // use sh on Linux/Mac agents
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Docker Run (smoke test)') {
            steps {
                bat 'docker rm -f event-site-test || exit 0'
                bat 'docker run -d -p 8081:8080 --name event-site-test %IMAGE_NAME%'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply -f k8s/deployment.yaml'
                bat 'kubectl apply -f k8s/service.yaml'
                bat 'kubectl rollout restart deployment college-event-deployment'
            }
        }
    }
}