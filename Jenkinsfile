pipeline {
    agent any 

    environment {
        TOOL_DIR = "${WORKSPACE}\\ci-cd-tool"
    }

    stages {
        stage('Build') { 
            steps {
                bat "${TOOL_DIR}\\build.bat ${WORKSPACE}\\Debug Debug all"
            }
        }
     
    stage('Flash-Debug') { 
            steps {
                bat "${TOOL_DIR}\\flash.bat $params.DUT_STLINK_sn ${WORKSPACE}\\Debug all"
            }
        }    
       
    }
     post {
        success {
           mail bcc: '', body: 'Build Success', cc: 'hariprithi1999@gmail.com,hariprithi1999@gmail.com', from: '', replyTo: '', subject: 'Jenkins Integration Process', to: 'hariprithi99@gmail.com'
        }
        failure {
           mail bcc: '', body: 'Build Failure', cc: 'hariprithi1999@gmail.com,hariprithi1999@gmail.com', from: '', replyTo: '', subject: 'Jenkins Integration Process', to: 'hariprithi99@gmail.com'
        }
    }
}
