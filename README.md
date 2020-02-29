# docker-cicd

## jenkins
```bash
docker run -u root -d \
    -p 8080:8080 \
    -p 50000:50000 \
    --name jenkins \
    -v ~/.docker/jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    beyondspider/jenkins:latest
```

## jenkins slave docker
```bash
export JENKINS_URL=http://192.168.31.102:8080/
export JENKINS_USERNAME=
export JENKINS_PASSWORD=

docker run -d \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --env JENKINS_URL=${JENKINS_URL} \
    --env JENKINS_USERNAME=${JENKINS_USERNAME} \
    --env JENKINS_PASSWORD=${JENKINS_PASSWORD} \
    --env JENKINS_NODE_NAME=docker \
    --env JENKINS_NODE_LABLES=docker \
    --name docker \
    beyondspider/docker
```
