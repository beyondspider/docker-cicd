FROM node:lts-alpine

MAINTAINER from www.beyondspider.com by beyondspider (admin@beyondspider.com)

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH
ENV TZ Asia/Shanghai
ENV SWARM_VERSION 3.9 

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk update && \
    apk add --no-cache tzdata openssh-client rsync curl git openjdk8 && \
    ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime && \
    rm -rf /var/cache/apk/* && \
    npm install -g @quasar/cli && \
    mkdir /slave && \
    chmod 777 /slave && \
    curl -o /slave/swarm-client.jar https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/${SWARM_VERSION}/swarm-client-${SWARM_VERSION}.jar && \
    mkdir -p ~/.ssh && \
    ssh-keyscan -H github.com > ~/.ssh/known_hosts && \
    ssh-keyscan -H beyondspider.com >> ~/.ssh/known_hosts

COPY agent.jar /slave/agent.jar
COPY run.sh /slave/run.sh

RUN  chmod 777 /slave/*.sh

CMD ["/slave/run.sh"]
