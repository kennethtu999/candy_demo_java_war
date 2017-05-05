pipeline {
  agent any
  tools {
      maven 'Default'
      jdk 'jdk8'
  }
  stages {
    stage('compile') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('archive') {
      steps {
        parallel(
          "Junit": {
            junit 'target/surefire-reports/*.xml'

          },
          "Archive": {
            archiveArtifacts(artifacts: 'target/Nadia.jar', onlyIfSuccessful: true, fingerprint: true)
            archiveArtifacts(artifacts: 'target/Nadia*javadoc.jar', fingerprint: true)

          }
        )
      }
    }
  }
}
