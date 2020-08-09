pipeline{
	environment{
		MAVEN_HOME = tool('MAVEN')
	}
	agent any
	stages(){
		stage('Build')
		{
			sh '${MAVEN_HOME}/bin/mvn install
		}
	}
}