pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"
    }

    tools {
        terraform "terraform-latest"
    }

    stages {
        stage("Tool validation") {
            steps {
                dir("terraform/aws") {
                    sh "pwd"
                    sh "terraform version"
                }
            }
        }

        stage("AWS Network") {
            steps {
                dir("terraform/aws/modules/network") {
                    sh "pwd"
                    sh "terraform init"
                }
            }
        }
        
    }
}