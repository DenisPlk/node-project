pipeline {

  agent any
  
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
           
	      echo " building the docker image"
              sh 'docker build -t 666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:1.1 . '
              sh 'docker push 666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:1.1'
            }
          }
      

      stage("deploy") {

          steps {
              echo 'deploying the app'
          }
      }
  }
}

