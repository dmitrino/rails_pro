pipeline {
    agent any
    //triggers {
        //pollSCM '* * * * *'
    //}

    stages {
        //stage ('Checkout') {
            //steps {
                //echo 'Checkout....'
                //checkout([$class: 'GitSCM', branches: [[name: '*']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/vecinomio/rails_pro.git']]])
            //}
        //}
        stage ('creating vm') {
            steps {

                sh 'sudo berks install'

                // Create VM (when the job will finish VM will be dead!!!)
                sh 'sudo vagrant up --provision'
            }
        }
        stage ('Build') {
            steps {
                echo 'Building....'
            }
        }
        stage ('Tests') {
            steps {
                echo 'Trying some tests'
                sh 'sudo vagrant provision --provision-with rspec'
            }
        }
        stage ('Deploy') {
            steps {
                echo 'Deploy something'
            }
        }

    }

}
