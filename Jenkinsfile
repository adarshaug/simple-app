pipeline {
	environment {
		registry = "adarshaug/simple-app"
		registryCredential = 'dockerhub'
		dockerImage = ''
	}
agent any
stages {
	stage('Cloning our Git') {
		steps {
		    git changelog: false, poll: false, url: 'https://github.com/adarshaug/simple-app.git'
		}
	}
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
  	}
  }
}