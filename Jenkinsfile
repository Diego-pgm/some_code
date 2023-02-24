pipeline {
  environment{
    AUTO_BUILD = "${!currentBuild.rawBuild.getCauses()[0].toString().contains('UserIdCause') ? 'true' : 'false'}"
  }
  agent any
  options {
     buildDiscarder(logRotator(numToKeepStr:'25') 
  }
  triggers {
    pollSCM 'H/5 * * * *'
  }
  stages{
    stage('Prepare') {
      echo 'Generating version'
      VERSION = BUILD_NUMBER
      if ( AUTO_BUILD.toBoolean() ) {
        timeout(time: 4, unit: 'MINUTES'){
          input "This build was triggered automatically\nDo you approve?" 
        }
      }
    }
    stage('Get repo'){
      steps{
          git branch: 'main', url: 'https://github.com/Diego-pgm/some_code.git'
      }
    }
    stage('Run script'){
      steps{
          sh "chmod +x ./testscript.sh"
          sh "./testscript.sh"
      }
    }
    stage('End Pipeline'){
      steps{
         sh 'echo "End of pipeline!"' 
      }
    }
  }
}
