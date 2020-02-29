# jenkins slave docker

## build
```
docker build -t beyondspider/docker:latest .
```
## pull
```bash
docker pull beyondspider/docker:latest
```

## run
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

## remove
```bash
docker rm -f docker
```