pipeline{
	environment{
		MAVEN_HOME = tool('M3')
	}
	agent any
	stages(){
		stage('Build')
		{
			sh '${MAVEN_HOME}/bin/mvn install
		}
	}
}