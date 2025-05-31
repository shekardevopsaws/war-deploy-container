pipeline{

    agent any

    tools{

        maven 'maven 3.9.8'
    }

    stages{

        stage('git checkout through webhooks')

            steps{

                git branch: 'main', credentialsId: 'f79fe6e2-4884-4824-8f86-d9c204551b23', url: 'https://github.com/shekardevopsaws/war-deploy-container.git'
            }


        
    }
}