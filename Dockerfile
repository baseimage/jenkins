# version: 2.222.3 (2020-04-24)
FROM jenkins/jenkins:2.222.3

#ENV CASC_JENKINS_CONFIG="/var/jenkins_home/jenkins.yaml"

#COPY jenkins.yaml ${CASC_JENKINS_CONFIG}

#USER jenkins
COPY jenkins-plugin /usr/share/jenkins/ref/jenkins-plugin

ENV JENKINS_HOME /var/jenkins_home

ARG JAVA_OPTS
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

#RUN /usr/local/bin/install-plugins.sh configuration-as-code configuration-as-code-support 
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/jenkins-plugin
