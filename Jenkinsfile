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
           sh 'mvn -s settings_${BRANCH_NAME}.xml clean package spring-boot:repackage'
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

    stage('程式構建, 上傳構建儲存庫') {
      steps {
        parallel (
          "docker" : {
            script {
               if  (BRANCH_NAME == 'master') {
                  env['MVN_ACTION'] = 'release:clean release:prepare release:perform'
               } else {
                   env['MVN_ACTION'] = 'deploy'
               }
               sh 'docker stop candy_demo_java_war && docker rm candy_demo_java_war && docker rmi devops/candy_demo_java_war'
               sh 'docker build -t devops/candy_demo_java_war .'
            }

          },
          "maven" : {
            script {
               if  (BRANCH_NAME == 'master') {
                  env['MVN_ACTION'] = 'release:clean release:prepare release:perform'
               } else {
                   env['MVN_ACTION'] = 'deploy'
               }
               sh 'mvn -Dmaven.test.skip=true --batch-mode -s settings_${BRANCH_NAME}.xml install ${MVN_ACTION}'

            }

          }
        )
      }
    }

    stage('部署測試環境') {
      steps {
        script {
           sh 'docker run -d --name candy_demo_java_war -p 10084:8888 devops/candy_demo_java_war'
        }
      }
    }

    stage('整合測試') {
      steps {
        echo 'TODO 整合測試'
      }
    }
  }
}
