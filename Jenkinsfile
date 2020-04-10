pipeline {
  agent any
  stages {


    stage('Lint') {
      steps {
        sh 'tidy -q -e green/ws/index.html'
      }
    }

    stage('Build Docker') {
      steps {
        script {
		sh 'make build'	

        }
      }
    }
   
    stage('Login to dockerhub') {
      steps {
        withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerhubpwd')]) {
          sh 'docker login -u vikaas -p ${dockerhubpwd}'
        }
      }
    }
    stage('Upload Image') {
      steps {
        sh 'make upload'
      }
    }
    stage('Deploy Kubernetes') {
      steps {
        sh 'kubectl apply -f ./kubernetes'
      }
    }
  }
}

   
