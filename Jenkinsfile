
properties([paeameters([choice(choices: ['QA','DEV','PROD'],description: 'select env',name: 'ENV')])])
node(){
    stage("PullCode")
        {
       // echo "=====================Starting stage:${STAGE_NAME} ================================"
        git branch: 'master', credentialsId: 'kavyasonii', url: 'https://github.com/kavyasonii/myfirstjenkinspipelinevm.git'
        echo "=====================End of stage:${STAGE_NAME} ================================="
        }
        stage('Init')
        {
         //   sh "pwd && ls"
         //   withCredentials([usernamePassword(credentialsId: 'azuresp', passwordVariable: 'AZURE_CLIENT_SECRET', usernameVariable: 'AZURE_CLIENT_ID')]) {
          //  sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
         //   }
        // sh 'az login -u 16it084@charusat.edu.in -p "{$password}"  '
        // sh withCredentials([azureServicePrincipal('c51ff1b8-551c-4502-965f-3da37407c4b6')]) { sh 'az login –service-principal -u $AZURE_CLIENT_ID -p AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'}
              withCredentials([azureServicePrincipal('c51ff1b8-551c-4502-965f-3da37407c4b6')]) {
                     'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
                    'az account set -s $AZURE_SUBSCRIPTION_ID'}
                    
         sh 'terraform init -upgrade'
        }   
        stage('Plan')
            {
           
             //sh 'export ARM_ACCESS_KEY=eT4zikWkrhO+UtIDzlKfpf1ogeLob23woYmMyUkRWt/LZK5DXdWWrT6nO3qd1SR6q1Lt0Tq91X/K0vj9Q3pLBQ=='
            sh 'terraform plan'
            }
        stage('Apply') {
            sh 'terraform apply -auto-approve'
        }  
    }
