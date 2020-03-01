# jenkins

## build
```bash
docker build -t beyondspider/jenkins:latest .
```

## pull
```bash
docker pull beyondspider/jenkins:latest
```

## run
```bash
docker run -u root -d \
    -p 8080:8080 \
    -p 50000:50000 \
    --name jenkins \
    -v ~/.docker/jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    beyondspider/jenkins:latest
```

## remove
```bash
docker rm -f jenkins
```

## aliyun mirror
replace 'beyondspider/jenkins:latest' to 'registry.cn-hangzhou.aliyuncs.com/beyondspider/jenkins:latest'
