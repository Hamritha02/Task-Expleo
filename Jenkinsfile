pipeline {
    agent {
    label 'Built-In Node'
  }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init")  
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }

       stage ("terraform Action") {
            steps {
              //  echo "Terraform action is --> ${action}"
                sh ('terraform apply --auto-approve') 
           }
        }
    }
}
    
