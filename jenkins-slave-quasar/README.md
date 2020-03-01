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
export JENKINS_URL=https://jenkins.beyondspider.com/
export JENKINS_SECRET=
export JENKINS_USERNAME=
export JENKINS_PASSWORD=

docker run -d \
    --env JENKINS_URL=${JENKINS_URL} \
    --env JENKINS_SECRET=${JENKINS_SECRET} \
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

## aliyun mirror
replace 'beyondspider/jenkins:latest' to 'registry.cn-hangzhou.aliyuncs.com/beyondspider/jenkins:latest'
