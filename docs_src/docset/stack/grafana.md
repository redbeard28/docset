# Grafana stack deployment

To deploy this stack, we need **greenled/portainer-stack-utils:latest**.

## Undeploy source file

portainer_grafana_undeploy.txt
```bash
export ACTION="undeploy"
export PORTAINER_USER="myuser"
export PORTAINER_PASSWORD="mysecret"
export PORTAINER_URL="https://portainer.domain.com"
export PORTAINER_STACK_NAME="grafana"
```

## Deploy source file

portainer_grafana_undeploy.txt
```bash
export ACTION="deploy"
export PORTAINER_USER="myuser"
export PORTAINER_PASSWORD="mysecret"
export PORTAINER_URL="https://portainer.domain.com"
export PORTAINER_STACK_NAME="grafana"
export DOCKER_COMPOSE_FILE="/tmp/stack-grafana.yml"
#export ENVIRONMENT_VARIABLES_FILE="/path/to/env_vars_file"
```

/tmp/stack-grafana.yml => docker **-v PATH_STACK_YML:/tmp** mount point


## Docker run **greenled/portainer-stack-utils:latest**

```bash
source $FILE_PORTAINER_DEPLOY
export PORTAINER_PASSWORD=$JENKINS_PORTAINER_PASSWORD
export PORTAINER_USER=$JENKINS_PORTAINER_USER
export DOCKER_COMPOSE_FILE=/tmp/stack-nginx.yml
${DOCKER_BIN} run  --rm -e ACTION=$ACTION -e  DOCKER_COMPOSE_FILE=$DOCKER_COMPOSE_FILE -e PORTAINER_USER=$PORTAINER_USER -e PORTAINER_PASSWORD=$PORTAINER_PASSWORD -e PORTAINER_URL=$PORTAINER_URL -e PORTAINER_STACK_NAME=$PORTAINER_STACK_NAME  -v ${STACK_DEFINITION}:/tmp greenled/portainer-stack-utils:latest

```
Voilà !