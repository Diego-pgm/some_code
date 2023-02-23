pipeline {
  agent any
  triggers {
    pollSCM 'H/5 * * * *'
  }
  stages{
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
