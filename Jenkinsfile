pipeline {
  agent any
  tools {
      maven 'Default'
      jdk 'jdk8'
  }
  stages {
    stage('程式掃描') {
      //TODO
    }
    stage('編譯, 單元測試, 程式構建, 上傳構建儲存庫') {
      steps {
        sh 'mvn clean install'
      }
    }
    stage('部署測試環境') {
    }
    stage('整合測試') {
    }
  }
}
