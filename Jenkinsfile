// Jenkinsfile2319
pipeline {
    agent any

    // stages {
    //     stage('Clone Repository') {
    //         steps {
    //             git 'https://github.com/raunak122000/2319_ISA2.git'
    //         }
    //     }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    def imageName = 'flask_app_image'
                    sh "docker build -t ${imageName} ."
                }
            }
        }
        stage('Delete Existing Container') {
            steps {
                script {
                    
                    def containerName = '2319'
                    sh "docker rm -f ${containerName} || true"
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    // Run new container from the built image 
                    def containerName = '2319'
                    def imageName = 'flask_app_image'
                    sh "docker run -d --name ${containerName} ${imageName}"
                }
            }
        }
    }
}
