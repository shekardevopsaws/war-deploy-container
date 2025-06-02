pipeline {
    agent any

        

     tools {

         maven 'maven 3.9.8'
     }
        
    

    stages {
        stage('Git Checkout Through Webhooks') {
            steps {
                git branch: 'main', 
                    credentialsId: 'f79fe6e2-4884-4824-8f86-d9c204551b23', 
                    url: 'https://github.com/shekardevopsaws/war-deploy-container.git'
            }
        }

        stage('build through maven'){

            steps{

                sh 'mvn clean package'
            }
        }

        stage('source code quality check-sonarqube'){

            steps{

                
                withCredentials([string(credentialsId: 'SONAR_TOKEN', variable: 'SONAR_TOKEN')]) {
                    sh '''
                        mvn sonar:sonar \
                          -Dsonar.host.url=http://54.204.83.232:9000 \
                          -Dsonar.token=$SONAR_TOKEN
                    '''


               }  
            }
        }
        
    }
}
