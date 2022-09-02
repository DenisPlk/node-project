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
            script{
                    app = docker.build("testesc")
                }
		script{
                    docker.withRegistry('https://666125743361.dkr.ecr.eu-central-1.amazonaws.com', 'ecr:eu-central-1:aws-credentials') {
                    app.push("${env.BUILD_NUMBER}")
                    app.push("latest")
		}		
	      }
            }
          }
      }      
}
   


