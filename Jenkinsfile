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
            script {  
	      echo " building the docker image"
		    // cleanup current user docker credentials
              sh 'rm -f ~/.dockercfg ~/.docker/config.json || true'
              docker.withRegistry('https://666125743361.dkr.ecr.eu-central-1.amazonaws.com', usernamePassword(credentialsId: 'aws-ecr-cred', usernameVariable: 'USER', passwordVariable: 'PWD')) {
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

