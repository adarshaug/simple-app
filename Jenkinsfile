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
	         def mvnHome = tool 'Maven'
	         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
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
