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
                            git branch: 'main', url: 'https://github.com/vkseth/terraform-jenkins.git'
                        }
                    }
                }
            }
        stage('Terraform init') {
            steps {
                 script{
                        dir("terraform")
                        {
                            sh 'terraform -version'
                            sh 'terraform init'
                        }
                    }
                }
            }
        stage('Terraform plan') {
            steps {
                 script{
                        dir("terraform")
                        {
                            sh "terraform plan -input=false -out tfplan "
                            sh 'terraform show -no-color tfplan > tfplan.txt'
                        }
                    }
                }
            }

    }
}
