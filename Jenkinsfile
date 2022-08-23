pipeline {

  agent any
  
  tools {
      maven 'Maven'
  }
  stages {

      stage ("build jar") {

          steps {
            script {  
	      echo 'building the app'
	   
            }
          }
      }
      stage ("building image") {

          steps {
            script {
	      echo " building the docker image"
              withCredentials([usernamePassword(credentialId: 'git-hub', passwordVariable: 'PASS', usernameVariable: 'USER' )]) 
              sh 'docker-build -t 666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:1.1 . '
              sh 'docker push 666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:1.1'
            }
          }
      }

      stage("deploy") {

          steps {
              echo 'deploying the app'
          }
      }
  }
}

