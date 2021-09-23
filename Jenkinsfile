pipeline {
    agent any;
    stages {
        stage('All-in-One') {
            steps {
                sh '''
                    env;
                    ls;
                    cat README.md;
                ''';
            }
        }
    }
}
