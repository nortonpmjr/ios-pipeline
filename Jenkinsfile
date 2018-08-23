pipeline {
	agent any
	stages {
		// stage('Build') {
		// 	steps {
		// 	}
		// }

		stage('Test') {
			steps {
				echo 'Testing...'
				dir('FizBuzz') {
					sh 'fastlane test'
				}
			}
		}
	}
}
