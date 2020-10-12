
pipelineJob("test-pipeline") {
    	logRotator {
       		numToKeep(10)
    	}

    parameters {
      choiceParam('ENV', ["dev", "uat"], "Choose current action")
      booleanParam('PUSH_DOCKER', true, 'Push image into DockerHub')
      stringParam('PASS', 'Encryption password DockerHub') 
}

    definition {
        cpsScm {
   			scm {
            	git {
                  remote {
                        github("vitali-melnyk/Home", 'https')
                        branch("jenkins-git")
                  }
              }
        }
        scriptPath("Jenkins/Jenkinsfile")
      }

    }

 }
