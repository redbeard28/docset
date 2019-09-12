# Docset stack deployment

To deploy this stack, we need to make two GitHub repos.
  * generate a docker image with mkdocs (serve mode) [docker_mkdocs](https://github.com/redbeard28/docker_mkdocs.git)
  * populate markdown files in a nfs docker volume [docset](https://github.com/redbeard28/docset.git)
  

## Part 1 - Docker image docset_server ([repo docker_mkdocs](https://github.com/redbeard28/docker_mkdocs.git))
This image is very simple. We install mkdocs in the image and put a CMD to start to serve.

````dockerfile
FROM alpine:latest
MAINTAINER redbeard28 <https://github.com/redbeard28/docker_mkdocs>

RUN apk add --update wget python3 && pip3 install --upgrade pip && rm -rf /var/cache/apk/*

# Install dependencies
COPY requirements.txt .

RUN mkdir /work

RUN \
  pip3 install -r requirements.txt && \
  rm requirements.txt

WORKDIR /work

VOLUME /work

EXPOSE 8000

CMD ["mkdocs", "serve","-a","0.0.0.0:8000"]
````

### Jenkins Build

In the folder Serve, I put a the Dockerfile and a Jenkinsfile.

````
/* Created by Jeremie CUADRADO
 Under GNU AFFERO GENERAL PUBLIC LICENSE
*/

pipeline {
    agent { label DOCKER_NODE }

    environment {
        branchVName = 'master'
        TAG = '0.5'
        IMAGE = 'redbeard28/docset_server'
    }

    stages{

        stage('Clone the GitHub repo'){

            steps{
                git url: "https://github.com/redbeard28/docker_mkdocs.git", branch: "${branchVName}", credentialsId: "jenkins_github_pat"
            }
            post{
                success{
                    echo 'Successfuly clone your repo...'
                }
            }
        }
        stage('Build the Image...'){
            steps{
                script {
                    withDockerServer([uri: "tcp://${DOCKER_TCPIP}"]) {
                        /* login to the registry and push */
                        withDockerRegistry([credentialsId: 'DOCKERHUB', url: "https://index.docker.io/v1/"]) {
                            /* Prepare build command */
                            def image = docker.build("${IMAGE}:${TAG}","-f Dockerfile Serve")

                            image.push()

                        }
                    }
                }
            }
        }
    }
}
````

So When I push a new version of of my Dockerfile, a GtHub webhook is pushed to my Jenkins master. It build and push to docker hub.

![pipeline](img/mkdocs_server.jpg)


## Part 2 - Markdown pages ([repo docset](https://github.com/redbeard28/docset.git))

So, in this repo, you can found all the docsets. When the PR is accepted in master branch, a github webhook goes to jenkins and start the pipeline.

The pipeline use a jenkins slave node to make thoses steps: 

  * erase the stack
  * clone the repo
  * rsync folders to docker persistant volume (nfs)
  * create the stack
  

````yaml
version: '3.5'
services:
  docset:
    image: redbeard28/docset_server:0.5
    deploy:
      replicas: 2
      placement:
        constraints:
          - node.role != manager
    ports:
      - 8001:8000
    volumes:
      - type: volume
        source: docset_work
        target: /work
        volume:
          nocopy: true

volumes:
  docset_work:
    driver_opts:
      type: "nfs"
      o: "addr=XXX.XXX.XXX.XXX,nolock,soft,rw"
      device: ":/MYPATH/docset/work"
````


Voilà !