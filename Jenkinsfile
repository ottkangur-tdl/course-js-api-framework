pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                scripts {
                    build_docker_image()
                }
                echo "Build python-greetings"
            }
        }
        stage('deploy-dev') {
            steps {
                echo "Deployment triggered to DEV env"
            }
        }
    }
}

def build_docker_image(){
    echo "Build python-greetings"
}
