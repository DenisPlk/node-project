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
      stage ('deploy') {
	      steps {
		 script {
	            def dockerCmd = "docker run -p 3080:3080 -d 666125743361.dkr.ecr.eu-central-1.amazonaws.com/testesc:latest"
			 echo "Deploying the app.."
	            sshagent(['ec2-server-key']) {
			    sh "ssh -o StrictHostKeyChecking=no ubuntu@3.124.214.99 ${dockerCmd}"
		    }
}
      }      
}
   


