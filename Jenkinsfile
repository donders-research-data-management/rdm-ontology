node {

    properties([
        parameters([
            string(name: 'tag', defaultValue: 'docker.isc.ru.nl/rdr/web/rdr-configurable-content', description: 'Docker tag to create')
        ])
    ])

    def branch = env.BRANCH_NAME
    def tagSuffix = ''
    def environmentPrefix = 'rdr'
    if (branch.startsWith('dr')) {
        tagSuffix = '-donders'
        environmentPrefix = 'dr'
    }
    def tag = params.tag + tagSuffix
    def version = 'latest'
    def dtap = 'acc'
    if (branch.contains('release')) {
       version = 'release'
       dtap = 'prod'
    }

    try {
        stage('Checkout') {
            checkout scm
        }

        stage('Build') {
            sh 'echo "Git hash: `git rev-parse --verify HEAD` , Build on `date`" > build/build.txt'
            echo "Building branch ${branch} and pushing as ${tag}:${version}"
            sh "docker build -f build/docker/Dockerfile -t ${tag}:${version} --no-cache --pull=true ."
            sh "docker push ${tag}:${version}"
        }

        stage('Deploy') {
            def ccDir = "/data/rdr/rdr-configurable-content-deployment"
            def environment = environmentPrefix + '-' + dtap + '-portal'
            echo "Deploying branch ${branch} of configurable content to ${environment}"
            sshagent (credentials: ['rdr-jenkins-ssh-credentials']) {
                sh "ssh ${environment} $ccDir/start-update.sh ${version}"
            }
        }

    } catch(Exception e) {
        echo "Got exception: " + e.getMessage() + " -> " + e.toString()
        env.BUILD_FAILURE = e.getMessage()
        throw e
    } finally {
        if (version == 'release') {
            echo "Mailing release job status"
            def mailRecipients = env.rdmDondersContentMail
            def jobName = currentBuild.fullDisplayName

            if (env.BUILD_FAILURE == null) {
                echo "Mailing succes"
                emailext body: '''${SCRIPT, template="groovy-html.template"}''',
                mimeType: 'text/html',
                subject: "[Jenkins] ${jobName}",
                to: "${mailRecipients}",
                replyTo: "${mailRecipients}",
                recipientProviders: [[$class: 'CulpritsRecipientProvider']]
            } else {
                echo "Mailing build failure"
                emailext body: "${jobName} failed: ${env.BUILD_FAILURE}",
                  subject: "[Jenkins] ${jobName}",
                  to: "${mailRecipients}",
                  replyTo: "${mailRecipients}"
            }
        }
    }
}
