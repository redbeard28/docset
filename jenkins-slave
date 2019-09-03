# jenkins-slave
#!/usr/bin/env sh
LABELS="${LABELS:-docker}"
EXECUTORS="${EXECUTORS:-3}"
FSROOT="${FSROOT:-/tmp/jenkins}"
HOSTNAME=http://jenkins:8080
USERNAME="${USERNAME:-admin}"
PASSWORD=$(cat /run/secrets/jenkins-password)

java -jar swarm-client.jar -labels=$LABELS -executors=$EXECUTORS -fsroot=/tmp/jenkins -name=docker-$(hostname) -master $HOSTNAME -username $USERNAME -password $PASSWORD
