pipeline {
    agent any

    environment {
        PYTHON_VERSION = '3.x'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Setup') {
            steps {
                sh '''
                    python3 --version
                    pip3 install --upgrade pip
                '''
            }
        }

        stage('Lint') {
            steps {
                sh '''
                    pip3 install flake8
                    flake8 todo.py test_todo.py --count --select=E9,F63,F7,F82 --show-source --statistics || true
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    pip3 install pytest pytest-cov
                    python3 -m pytest test_todo.py -v --junitxml=test-results.xml --cov=todo --cov-report=xml:coverage.xml
                '''
            }
            post {
                always {
                    junit 'test-results.xml'
                    publishCoverage adapters: [coberturaAdapter('coverage.xml')]
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
