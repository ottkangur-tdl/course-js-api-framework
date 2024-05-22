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
    echo "Building api-tests docker image for python-greetings"
    sh 'docker build --no-cache -t ottkangur/api-tests:latest .'
    echo 'Pushing image to docker registry'
    sh 'docker push ottkangur/api-tests:latest'
}
