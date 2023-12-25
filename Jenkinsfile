pipeline {
  agent any
  stages {

    stage('push the docker image') {
      steps {
        script {
          withCredentials([string(credentialsId: 'savitha2789', variable: 'docker')]) {
            sh 'docker login -u savitha2789 -p ${docker}'
          }
          sh 'docker push savitha2789/menu'

        }
      }
    }
    stage('deploy to another instance image') {
      steps {
        sshagent(['8d329f24-9425-4d71-9188-af4c04d7feda']) {

        }
        script {

          sh "ssh ec2-user@172.31.4.21 'docker pull savitha2789/menu && docker run -d -p 8080:8080 savitha2789/menu'"

        }
      }
    }
  }
}
