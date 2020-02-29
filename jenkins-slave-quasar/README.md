# jenkins slave quasar

## build
```bash
docker build -t beyondspider/quasar:latest .
```
## pull
```bash
docker pull beyondspider/quasar:latest
```

## run
```bash
export JENKINS_URL=http://192.168.31.102:8080/
export JENKINS_USERNAME=
export JENKINS_PASSWORD=

docker run -d \
    --env JENKINS_URL=${JENKINS_URL} \
    --env JENKINS_USERNAME=${JENKINS_USERNAME} \
    --env JENKINS_PASSWORD=${JENKINS_PASSWORD} \
    --env JENKINS_NODE_NAME=quasar \
    --env JENKINS_NODE_LABLES="node quasar" \
    --name quasar \
    beyondspider/quasar
```

## remove
```bash
docker rm -f quasar
```