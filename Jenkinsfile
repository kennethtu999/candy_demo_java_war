pipeline {
  agent any
  environment {
    REPO = 'http://172.30.0.11:8081/repository/maven-releases/'
    REPO_SNAPSHOTS = 'http://172.30.0.11:8081/repository/maven-snapshots-${BRANCH_NAME}/'
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
    stage('編譯, 單元測試, 程式構建, 上傳構建儲存庫') {
      steps {
        script {
           def MVN_ACTION = 'deploy'
           if  (BRANCH_NAME == 'master') {
               MVN_ACTION = 'release'
           }
        }
        sh 'mvn -s settings_${BRANCH_NAME}.xml clean package ${MVN_ACTION}'
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
