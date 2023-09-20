pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
        }
    }
    stages {
        stage('Build Web Application') {
            steps {
                sh 'mvn clean package' // Use 'clean package' to build a WAR
            }
        }
        stage('Run Java Code') {
            steps {
                sh 'mvn --version'
                sh 'java -cp target/your-web-app.war DevOpsEngineerDetails' // Replace 'your-web-app' with your WAR file name
            }
        }
    }
}
