pipeline {
  agent any
  environment {
    REPO = 'http://172.30.0.11:8081/repository/maven-releases/'
    REPO_SNAPSHOTS = 'http://172.30.0.11:8081/repository/maven-snapshots-${BRANCH_NAME}/'
    MVN_ACTION = 'deploy'
  }
  tools {
      maven 'Default'
      jdk 'jdk8'
  }
  stages {
    stage('INIT') {

      when {
        // Only run if the branch matches this Ant-style pattern
        branch "master"
      }

      steps {
        MVN_ACTION = 'release'
      }
    }

    stage('程式掃描') {
      steps {
        echo 'TODO 程式掃描'
      }
    }
    stage('編譯, 單元測試, 程式構建, 上傳構建儲存庫') {
      when {
        expression { BRANCH_NAME != 'master' }
      }
      steps {
        sh 'mvn -s settings_${BRANCH_NAME}.xml clean package ${MVN_ACTION}'
      }
    }
    stage('PROD 編譯, 單元測試, 程式構建, 上傳構建儲存庫') {
      when {
        expression { BRANCH_NAME == 'master' }
      }
      steps {
        sh 'mvn -s settings_${BRANCH_NAME}.xml clean package release'
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
