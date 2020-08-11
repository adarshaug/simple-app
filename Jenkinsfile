pipeline {  
    environment {
	MAVEN_HOME = tool('MAVEN')
        docker = tool('Docker')
        registry = "docker_hub_account/repository_name"
        registryCredential = 'dockerhub'
    }  
	agent any
        
     stages {
	     stage('fetch code'){
		     
	     }
        stage('Build')	{
		steps{
			sh '${MAVEN_HOME}/bin/mvn --settings ${MAVEN_HOME}/m2/settings.xml package -Dmaven.test.skip=true' 
		}
	   }
     }     
    
}
