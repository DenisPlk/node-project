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
              docker.withRegistry('https://666125743361.dkr.ecr.eu-central-1.amazonaws.com', 'ecr:eu-central-1:aws-credentials') {
		  def customImage = docker.build("666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:${env.BUILD_ID}")
		  // push image
                      customImage.push()
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

