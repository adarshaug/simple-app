pipeline{
	environment{
		MAVEN_HOME = tool('MAVEN')
		DOCKER_HOME = tool('Docker')
		registry = "adarshaug/simple-app"
		registryCredential = 'dockerhub'
		dockerImage = ''
	}
	
	agent any
	stages(){
		stage('Build')-
		{
			steps{
				sh '${MAVEN_HOME}/bin/mvn clean package' 
			}
		}
		stage('Building image') {
			steps{
				script {
				dockerImage = docker.build registry + ":$BUILD_NUMBER"				
				}	
		}	
		}
		stage('Deploy Image') {
		
		steps{
		
		script {
		
		docker.withRegistry( '', registryCredential ) {
		
		dockerImage.push()
		
		}
		
		}
	}
	}
}