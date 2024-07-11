pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/Douglas019BR/INF335-Jenkins-Docker'
            }
        }

        stage('Build Stage') {
            steps {
                script {
                    // Verificar o conteúdo do diretório
                    sh 'ls -la'

                    // Verificar se o arquivo Dockerfile existe
                    sh 'cat Dockerfile'

                    // Criar a imagem com o nome ola-unicamp
                    sh 'docker build -t ola-unicamp .'
                }
            }
        }

        stage('Execution Stage') {
            steps {
                script {
                    sh 'docker run --rm ola-unicamp'
                }
            }

            post {
                success {
                    echo 'Container executed and removed successfully'
                }
            }
        }
    }
}
