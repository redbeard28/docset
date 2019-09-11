# Simple docker-compose

## Deploy One Simple service

```yaml
version: '3.5'
services:
  docset:
    image: redbeard28/docset:$TAG
    deploy:
      replicas: 4
      placement:
        constraints:
          - node.role != manager
    ports:
      - 8001:8000
```

## Deploy a Simple Jenkins Stack on same docker network

````yaml

version: '3.5'
services:
  jenkins:
    image: redbeard28/jenkins_master:0.3
    deploy:
      replicas: 1
      placement:
        constraints:
          - node.role == manager
    networks:
     - cicd
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - type: volume
        source: jenkins_home
        target: /var/jenkins_home
        volume:
          nocopy: true
      - type: volume
        source: jenkins_tmp
        target: /tmp/jenkins
        volume:
          nocopy: true 
    ports:
     - "9090:8080"
     - "50000:50000"
      
  node1-agent:
    image: redbeard28/jenkins_slave:0.9
    command: >
      java -jar /usr/share/jenkins/slave.jar -jnlpUrl http://JENKINS_URL/computer/node1/slave-agent.jnlp -secret BIG_SECRET_GENERATE_BY_JENKINS_MASTER -workDir "/home/jenkins/agent"
    deploy:
      replicas: 1
      placement:
        constraints:
          - node.role != manager
    volumes:
      - type: volume
        source: node1_agent_home
        target: /home/jenkins
        volume:
          nocopy: true 
      - type: volume
        source: node1_agent_tmp
        target: /tmp/jenkins
        volume:
          nocopy: true 
    secrets:
     - jenkins-password
    networks:
     - cicd
 
  node2-agent:
    image: redbeard28/jenkins_slave:0.9
    command: >
      java -jar /usr/share/jenkins/slave.jar -jnlpUrl http://JENKINS_URL/computer/node2/slave-agent.jnlp -secret BIG_SECRET_GENERATE_BY_JENKINS_MASTER -workDir "/home/jenkins/agent"
    deploy:
      replicas: 1
      placement:
        constraints:
          - node.role != manager
    volumes:
      - type: volume
        source: node2_agent_home
        target: /home/jenkins
        volume:
          nocopy: true 
      - type: volume
        source: node2_agent_tmp
        target: /tmp/jenkins
        volume:
          nocopy: true 
    secrets:
     - jenkins-password
    networks:
     - cicd
 
 
volumes:
  jenkins_home:
    driver_opts:
      type: "nfs"
      o: "addr=NFS_IP,nolock,soft,rw"
      device: ":/share/swarm/jenkins/home"
  jenkins_tmp:
    driver_opts:
      type: "nfs"
      o: "addr=NFS_IP,nolock,soft,rw"
      device: ":/share/swarm/jenkins/tmp"
  node1_agent_home:
    driver_opts:
      type: "nfs"
      o: "addr=NFS_IP,nolock,soft,rw"
      device: ":/share/swarm/node1_agent/home"
  node1_agent_tmp:
    driver_opts:
      type: "nfs"
      o: "addr=NFS_IP,nolock,soft,rw"
      device: ":/share/swarm/node1_agent/tmp"
  node2_agent_home:
    driver_opts:
      type: "nfs"
      o: "addr=NFS_IP,nolock,soft,rw"
      device: ":/share/swarm/node2_agent/home"
  node2_agent_tmp:
    driver_opts:
      type: "nfs"
      o: "addr=NFS_IP,nolock,soft,rw"
      device: ":/share/swarm/node2_agent/tmp"
      
secrets:
  jenkins-password:
    external: true
    
networks:
 cicd:
    driver: overlay
    attachable: true
        
````