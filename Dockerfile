# version: 2.222.3 (2020-04-24)
FROM jenkins/jenkins:lts

#ENV CASC_JENKINS_CONFIG="/var/jenkins_home/jenkins.yml"

#COPY jenkins.yml ${CASC_JENKINS_CONFIG}

#USER jenkins

RUN /usr/local/bin/install-plugins.sh configuration-as-code configuration-as-code-support git workflow-cps-global-lib
