pipeline {
    agent any

    stages {
        stage('Build Stage') {
            steps {
                // Fetch the repository from git
                git branch: 'main', url: 'https://github.com/Douglas019BR/INF335-Jenkins-Docker'

                // Create the image with the name ola-unicamp
                sh 'sudo docker build -t ola-unicamp .'
            }
        }

        stage('Execution Stage') {
            steps {
                sh 'sudo docker run --rm ola-unicamp'
            }

            // Step that will be executed at the end of the steps in the "Execution Stage"
            post {
                success {
                    echo 'Container executed and removed successfully'
                }
            }
        }
    }
}
