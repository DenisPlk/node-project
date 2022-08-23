pipeline {
  agent any
  docker { image 'node:16.13.1-alpine' }
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
            node {  
	      echo " building the docker image"
              docker.withRegistry('https://666125743361.dkr.ecr.eu-central-1.amazonaws.com', 'aws-ecr-cred') {
		     def customImage = docker.build("666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:latest")
		  // push image
                      customImage.push()
	      }
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

