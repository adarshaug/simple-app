pipeline {  
    environment {
	MAVEN_HOME = tool('MAVEN')
        docker = tool('Docker')
        registry = "docker_hub_account/repository_name"
        registryCredential = 'dockerhub'
    }  
    agent any  
        
     stages {
        stage('Build')	{
		steps{
			sh '${MAVEN_HOME}/bin/mvn package' 
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
