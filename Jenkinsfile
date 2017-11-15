def buildClosure = {
    sh "git submodule init"
    sh "git submodule update"
    sh "./gradlew clean build --info --stacktrace -DBUILD_NUMBER=${env.BUILD_NUMBER} -DBUILD_TIMESTAMP=${env.BUILD_TIMESTAMP} -DBRANCH_NAME=${env.BRANCH_NAME}"
    sh "ls build/libs/"
    sh "mv build/libs/*${env.BRANCH_NAME}-*.war ./ROOT.war"
}

def buildParameterMap = [:]
buildParameterMap['appName'] = 'diva-irma-api-server'
buildParameterMap['buildClosure'] = buildClosure
buildParameterMap['namespaces'] = ['nebm-dev']

buildAndDeployGeneric(buildParameterMap)
