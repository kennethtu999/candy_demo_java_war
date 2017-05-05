pipeline {
  agent any
  environment {
       REPO_SIT = 'http://nexus_nexus_1:8081/repository/SIT/'
       snapshot-repository-path = 'http://nexus_nexus_1:8081/repository/SIT/'
  }
  tools {
      maven 'Default'
      jdk 'jdk8'
  }
  stages {
    stage('程式掃描') {
      steps {
        echo 'TODO 程式掃描'
      }
    }
    stage('編譯, 單元測試, 程式構建') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('上傳構建儲存庫') {
      steps {
        sh 'mvn deploy'
      }
    }
    stage('部署測試環境') {
      steps {
        echo 'TODO 部署測試環境'
      }
    }
    stage('整合測試') {
      steps {
        echo 'TODO 整合測試'
      }
    }
  }
}
