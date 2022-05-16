pipeline {
  agent any
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        echo 'Cleaning workspace'
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        echo 'Checkout scm code'
        checkout scm
      }
    }
    stage('init') {
      steps {
        echo 'Initialazing terraform'
        sh '/usr/bin/terraform init'
      }
    }
    stage('apply') {
      steps {
        echo 'Applying terraform'
        sh '/usr/bin/terraform apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}