pipeline {
  agent any
  environment {
       REPO_SIT2 = 'http://172.30.0.11:8081/repository/SIT/'
  }
  tools {
      maven 'Default'
      jdk 'jdk8'
  }
  stages {
    stage('INIT') {
      steps {
        export REPO_SIT=$(echo 'foo' | rev)
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
