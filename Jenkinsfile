pipeline {
    agent any

    stages {
        stage('Git Fetch') {
            steps {
                echo 'Fetching code from GitHub'
                git url: 'https://github.com/codeboylal/Project7-Test-Static-Website.git', branch: 'main'
            }
        }

        stage ('Building Code - Docker') {
            steps{
                echo 'Building Code to Docker'
                sh 'docker build -t my-test-website .'       
            }
        }

        stage('Deploy - Docker') {
             steps {             
                 echo 'Starting our container'
                 sh "docker run -d -p 80:80 my-test-website nginx -g 'daemon off;'"
             }
        }
    }
}
