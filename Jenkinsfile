pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }


    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("terraform")
                        {
                            git "https://github.com/vkseth/terraform-jenkins.git"
                        }
                    }
                }
            }
        stage('Terraform plan') {
            steps {
                 script{
                        dir("terraform")
                        {
                            sh 'terraform -version'
                            sh 'terraform -plan'
                        }
                    }
                }
            }
    }
}