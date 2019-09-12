# Docker Swarm stack commands

## Howto deploy a stack
````bash
docker stack deploy --compose-file=portainer-agent-stack.yml portainer
````

## Howto remove a stack
````bash
docker stack rm portainer
````

## Howto list task in a particular stack
````bash
docker stack ps jenkins
````

### Exmple tasks in jenkins stack
````bash
root@swarm-master:~# docker stack ps jenkins
ID                  NAME                    IMAGE                           NODE                              DESIRED STATE       CURRENT STATE           ERROR                              PORTS
kivcdlooe4o4        jenkins_jenkins.1       redbeard28/jenkins_master:0.4   swarm-master.redbeard28.intra     Running             Running 24 hours ago
kd226wzzchfw         \_ jenkins_jenkins.1   redbeard28/jenkins_master:0.4   swarm-master.redbeard28.intra     Shutdown            Shutdown 24 hours ago
i1tfk59is9nv         \_ jenkins_jenkins.1   redbeard28/jenkins_master:0.4   swarm-master02.redbeard28.intra   Shutdown            Rejected 24 hours ago   "No such image: redbeard28/jen…"
xsmn0b58jyz3         \_ jenkins_jenkins.1   redbeard28/jenkins_master:0.4   swarm-master.redbeard28.intra     Shutdown            Rejected 24 hours ago   "No such image: redbeard28/jen…"
cybtmvmgsg6d         \_ jenkins_jenkins.1   redbeard28/jenkins_master:0.4   swarm-master02.redbeard28.intra   Shutdown            Rejected 24 hours ago   "No such image: redbeard28/jen…"
rzahg62jhl23        jenkins_node1-agent.1   redbeard28/jenkins_slave:1.0    swarm-01.redbeard28.intra         Running             Running 24 hours ago
w5hlkacggzna        jenkins_node2-agent.1   redbeard28/jenkins_slave:0.9    swarm-01.redbeard28.intra         Running             Running 47 hours ago
mc8siu8vfnhr        jenkins_node1-agent.1   redbeard28/jenkins_slave:0.9    swarm-01.redbeard28.intra         Shutdown            Shutdown 24 hours ago
````


## Howto list stack
````bash
docker stack ls
````

### Exemple list stack
````bash
root@swarm-master:~# docker stack ls
NAME                SERVICES            ORCHESTRATOR
Grafana             1                   Swarm
Tick                3                   Swarm
VAULT               1                   Swarm
docset              1                   Swarm
jenkins             3                   Swarm
mosquitto-mqtt      1                   Swarm
mysql               2                   Swarm
portainer           2                   Swarm
````