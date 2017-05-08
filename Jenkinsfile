pipeline {
  agent any
  environment {
       REPO_SIT = 'http://172.30.0.11:8081/repository/maven-snapshots/'
  }
  tools {
      maven 'Default'
      jdk 'jdk8'
  }
  stages {
    stage('INIT') {
      steps {
        echo 'TODO INIT'
      }
    }
    stage('程式掃描') {
      steps {
        echo 'TODO 程式掃描'
      }
    }
    stage('編譯, 單元測試, 程式構建, 上傳構建儲存庫') {
      steps {
        sh 'mvn -s settings.xml clean package deploy'
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
