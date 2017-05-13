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
    stage('編譯, 單元測試') {
      steps {
        script {
           sh 'mvn -s settings_${BRANCH_NAME}.xml clean package install'
        }
      }
    }
    stage('程式掃描') {
      steps {
        script {
          scannerHome = tool 'SonarQubeScanner'
        }
        withSonarQubeEnv('SonarQubeScanner') {
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }

    stage('構建DockerImage, 上傳構建儲存庫') {
      steps {
        script {
           if  (BRANCH_NAME == 'master') {
              env['MVN_ACTION'] = 'release:clean release:prepare release:perform'
           } else {
               env['MVN_ACTION'] = 'deploy'
           }
           sh 'docker build -t devops/candy_demo_java_war .'
        }
      }
    }


    stage('程式構建, 上傳構建儲存庫') {
      steps {
        script {
           if  (BRANCH_NAME == 'master') {
              env['MVN_ACTION'] = 'release:clean release:prepare release:perform'
           } else {
               env['MVN_ACTION'] = 'deploy'
           }
           sh 'mvn -Dmaven.test.skip=true --batch-mode -s settings_${BRANCH_NAME}.xml install ${MVN_ACTION}'

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
