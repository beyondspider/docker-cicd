### jenkins

```build
docker build -t beyondspider/jenkins:latest .
```

```pull
docker pull beyondspider/jenkins:latest
```

```run
docker run -u root -d \
    -p 8080:8080 \
    -p 50000:50000 \
    --name jenkins \
    -v ~/.docker/jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    beyondspider/jenkins:latest
```

```remove
docker rm -f jenkins
```