node(){
    stage("PullCode")
        {
        echo "=====================Starting stage:${STAGE_NAME} ================================"
       // git branch: 'main', credentialsId: 'dhaval123', url: 'https://github.com/dhaval-123/rgcreation.git'
        echo "=====================End of stage:${STAGE_NAME} ================================="
        }
        stage('Init')
        {
            //sh "pwd && ls"
         //   withCredentials([usernamePassword(credentialsId: 'azuresp', passwordVariable: 'AZURE_CLIENT_SECRET', usernameVariable: 'AZURE_CLIENT_ID')]) {
         //   sh  'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t 44b16b3e-92d5-4da4-9509-5b979198aded '
         //   }
       //  sh 'az login -u 16it084@charusat.edu.in -p "{$password}"  '
         sh 'terraform init'
        }   
        stage('Plan')
            {
           
         //   sh 'export ARM_ACCESS_KEY=AzwaU7Gn4dpqWCfN2HTHXclHOkCJKJbzj91lvp1Ae75ij114Ti5vxAmBjph8XIksyuyG9Ui0k5EJ6XBq94eAkA== '
            sh 'terraform plan'
            }
        stage('Apply') {
            sh 'terraform apply -auto-approve'
        }  
    }
