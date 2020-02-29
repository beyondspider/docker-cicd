#!/bin/sh
echo "JENKINS_URL: ${JENKINS_URL}"
echo "JENKINS_USERNAME: ${JENKINS_USERNAME}"
echo "JENKINS_PASSWORD: ${JENKINS_PASSWORD}"
echo "JENKINS_NODE_NAME: ${JENKINS_NODE_NAME}"
echo "JENKINS_NODE_LABLES: ${JENKINS_NODE_LABLES}"

java -jar /slave/swarm-client.jar \
	 -master ${JENKINS_URL} \
	 -username ${JENKINS_USERNAME} \
	 -password ${JENKINS_PASSWORD} \
	 -name ${JENKINS_NODE_NAME} \
	 -fsroot /slave \
	 -labels "${JENKINS_NODE_LABLES}"
