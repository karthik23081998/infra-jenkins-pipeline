pipeline {
    agent {
        label 'INFRA'
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/karthik23081998/infra-jenkins-pipeline.git'
            }
        }

        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Format') {
            steps {
                sh 'terraform fmt -check'
            }
        }

        stage('Infra Scan') {
            steps {
                sh 'terraformscan scan'
            }
        }

        stage('TFLint') {
            steps {
                sh 'tflint'
            }
        }

        stage('Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}

    