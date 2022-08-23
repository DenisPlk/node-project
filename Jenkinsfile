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
		withCredentials([usernamePassword(credentialsId: 'aws-ecr-cred', usernameVariable: 'USER', passwordVariable: 'PWD')]){  
	            echo " building the docker image"
		    // cleanup current user docker credentials
                    sh 'rm -f ~/.dockercfg ~/.docker/config.json || true'
                    sh "echo ${PWD} | docker login -u ${USER} --password-stdin"
		    sh  "docker build -t 666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:latest ."
		  // push image
                    sh 'docker push https://666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:latest'
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

