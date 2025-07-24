pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker image...'
                sh 'sudo docker build . -t pipelinetest:v1'
            }
        }
        stage('Run Test Container') {
            steps {
                echo 'Running the container to verify the build...'
                sh 'sudo docker run --rm pipelinetest:v1'
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished. Cleaning up...'
            sh 'sudo docker rmi pipelinetest:v1'
        }
    }
}