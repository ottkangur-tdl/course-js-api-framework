pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                build_docker_image()
            }
        }
        stage('deploy-dev') {
            steps {
                deploy('DEV')
            }
        }
        stage('api-test-dev') {
            steps {
                echo "Executing api tests against DEV env"
            }
        }
    }
}

def build_docker_image(){
    echo "Build python-greetings and building docker image"
    sh 'ls'
    sh 'docker build --no-cache -t ottkangur/api-tests:latest .'
    sh 'docker push ottkangur/api-tests:latest'
}

def deploy(String env){
    echo "Deploy to ${env}"
}
