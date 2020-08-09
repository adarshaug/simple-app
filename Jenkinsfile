pipeline {
environment {
registry = "adarshaug/simple-app"
registryCredential = 'adarshaug'
dockerImage = ''
}
agent any
stages {
stage('Cloning our Git') {
steps {
    git changelog: false, poll: false, url: 'https://github.com/adarshaug/simple-app.git'
}
}
}
}