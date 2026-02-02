pipeline {
    agent any
    tools{
     terraform 'terraform'
    }
    environment {
        // It's safer to store these in Jenkins Credentials
         AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
         AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Checkout') {
            steps {
                // This pulls your main.tf from GitHub
               git branch: 'main', 
                    credentialsId: 'GitHub_Credentials', 
                    url: 'https://github.com/Pavi19982019/my-terraform-project.git'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Use --auto-approve so Jenkins doesn't wait for a manual 'yes'
                bat 'terraform apply --auto-approve'
            }
        }
    }
}
