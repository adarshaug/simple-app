pipeline {  
    environment {
	MAVEN_HOME = tool('MAVEN')
        
    }  
	agent any
        
     stages {
     
	     stage('Cloning our Git') {
			steps {
				git changelog: false, poll: false, url: 'https://github.com/adarshaug/simple-app.git'
			}
		}
        
        stage('Build')	{
			steps{
				sh "${MAVEN_HOME}/bin/mvn clean package"
			}
	     }
	     
     } 
}
