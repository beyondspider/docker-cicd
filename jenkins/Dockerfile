FROM jenkinsci/blueocean:latest

MAINTAINER from www.beyondspider.com by beyondspider (admin@beyondspider.com)

USER root

ENV TZ Asia/Shanghai

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk update && \
    apk add --no-cache tzdata && \
    ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime && \
    rm -rf /var/cache/apk/*

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN  /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

RUN chown -R jenkins /usr/share/jenkins/ref

USER jenkins

RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

ENV JAVA_OPTS $JAVA_OPTS -Djenkins.install.runSetupWizard=false
