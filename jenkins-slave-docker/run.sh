#!/bin/sh
echo "JENKINS_URL: ${JENKINS_URL}"
echo "JENKINS_SECRET: ${JENKINS_SECRET}"
echo "JENKINS_USERNAME: ${JENKINS_USERNAME}"
echo "JENKINS_PASSWORD: ${JENKINS_PASSWORD}"
echo "JENKINS_NODE_NAME: ${JENKINS_NODE_NAME}"
echo "JENKINS_NODE_LABLES: ${JENKINS_NODE_LABLES}"

if [ ! -z ${JENKINS_SECRET} ]; then
    echo "Start agent jar..."
    java -jar /slave/agent.jar \
    	-jnlpUrl ${JENKINS_URL}/computer/${JENKINS_NODE_NAME}/slave-agent.jnlp \
    	-secret ${JENKINS_SECRET} \
    	-workDir "/slave"
else    
    echo "Start swarm-client jar..."
	java -jar /slave/swarm-client.jar \
		 -master ${JENKINS_URL} \
		 -username ${JENKINS_USERNAME} \
		 -password ${JENKINS_PASSWORD} \
		 -name ${JENKINS_NODE_NAME} \
		 -fsroot "/slave" \
		 -labels "${JENKINS_NODE_LABLES}" \
		 -deleteExistingClients \
		 -disableClientsUniqueId
fi