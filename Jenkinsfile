pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"
    }

    tools {
        terraform "terraform-latest"
    }

    stages {
        stage("Version") {
            steps {
                sh "terraform version"
            }
        }

        stage("Init") {
            steps {
                sh "terraform init -input=false"
            }
        }
    }
}