pipeline {
  agent any
  environment {
    REPO_REPOSITORY = 'http://172.30.0.11:8081/repository/maven-release-ALL/'
    REPO_SNAPSHOT = 'http://172.30.0.11:8081/repository/maven-snapshots-${BRANCH_NAME}/'
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
           if  (BRANCH_NAME == 'master') {
               env['MVN_ACTION'] = 'release:clean release:prepare release:perform'
           } else {
               env['MVN_ACTION'] = 'deploy'
           }
           sh 'mvn -DpushChanges=false -s settings_${BRANCH_NAME}.xml clean package ${MVN_ACTION} -D'
        }
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
