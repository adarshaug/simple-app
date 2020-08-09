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
		stage('Build') {
	       steps {
	         sh 'mvn package'
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
}