pipeline {
    agent any

    tools {
        terraform "terraform:latest"
    }

    environment {
        TF_IN_AUTOMATION = "true"
    }

    stages {
        stage("Version") {
            steps {
                dir("terraform") {
                    sh "terraform version"
                }
            }
        }

        stage("Init") {
            steps {
                dir("terraform") {
                    sh "terraform init -input=false"
                }
            }
        }
        
        stage('Validate') {
            steps {
                dir('terraform') {
                    sh 'terraform validate'
                    sh 'terraform fmt -check -diff'
                }
            }
        }
    }
}