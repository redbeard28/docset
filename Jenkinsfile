/* Created by Jeremie CUADRADO
 Under GNU AFFERO GENERAL PUBLIC LICENSE
*/

pipeline {
    agent { label DOCKER_NODE }

    stages{
        stage('Clone REPO'){
            steps{
                git url: "https://github.com/redbeard28/docset.git", branch: "${branchName}", credentialsId: "jenkins_github_pat"
            }
        }
        stage('XML creation'){
            steps{
                sh """
                echo '<entry><version>${XML_TAG}</version><url>https://cheatsheets.redbeard-consulting.fr/feeds/redbeard28.tgz</url></entry>'  > docs_src/feeds/redbeard28.xml
                """
            }
        }
        stage('Get portainer undeploy config'){
            steps{
                sshagent(['admin']) {

                    sh """
                    export PORTAINER_PASSWORD=$PORTAINER_PASSWD
                    rsync -av --progress -e 'ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null' admin@10.10.1.200:/share/JEREMIE/portainer/portainer_docset_undeploy.txt ${WORKSPACE}/
                    """
                }
                sh 'source  ${WORKSPACE}/portainer_docset_undeploy.txt'
                sh """
                docker run  --rm -e ACTION=$ACTION -e  DOCKER_COMPOSE_FILE=$DOCKER_COMPOSE_FILE -e PORTAINER_USER=$PORTAINER_USER -e PORTAINER_PASSWORD=$PORTAINER_PASSWORD -e PORTAINER_URL=$PORTAINER_URL -e PORTAINER_STACK_NAME=$PORTAINER_STACK_NAME  -v ${WORKSPACE}:/tmp greenled/portainer-stack-utils:latest
                """
            }

        }
        /*stage('Install Docsets.'){
            steps{
                script {
                    withDockerServer([uri: "tcp://${DOCKER_TCPIP}"]) {


                    }
                }
            }
        }*/
    }
}
