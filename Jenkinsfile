pipeline {  
    environment {
        docker = tool('Docker')
        registry = "docker_hub_account/repository_name"
        registryCredential = 'dockerhub'
    }  
    agent any  
        
     stages {
        stage('Build')-
		{
			steps{
                script {
                    sh '${MAVEN_HOME}/bin/mvn clean package' 
                }
			}
		}
        
        stage('Building image') {
          steps {
            script {
                docker.withRegis
              docker.build registry + ":$BUILD_NUMBER"
            }
          }
        }
         
    }
}
