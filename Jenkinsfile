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
    stage('deploy to another instance') {
      steps {
       sshagent(['testdev']) {
     sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.4.21 'docker pull savitha2789/menu &&docker run -d -p 8080:80 savitha2789/menu'"
}
          
        }
      }
    }
  }

