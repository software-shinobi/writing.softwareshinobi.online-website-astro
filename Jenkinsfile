pipeline {
 
    agent { node { label 'telesto' } }

    stages {

        stage('Mark build-automation scripts as executable') {

            steps {

                sh 'chmod +x ./build-automation/*.sh'                        

            }

        }
        
        stage('Build docker image from Dockerfile') {

            steps {

                sh 'cd build-automation;./build-pass-1-build-docker-image-from-dockerfile.sh'

            }

        }

        stage('Push docker image to softwareshinobi DockerHub') {

            steps {

                sh 'cd build-automation;./build-pass-2-push-docker-image-to-dockerhub.sh'

            }

        }   
        
        stage('deploy the docker image to running container') {

            steps {

                sh 'cd build-automation;./execute-pass-1-run-local-environment.sh'

            }

        }             
        
    }

}
