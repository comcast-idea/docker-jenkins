FROM smatochkin/java:oracle7

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

RUN apt-get update && \
    apt-get install -y git mercurial maven && \
    apt-get clean

ADD http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war /opt/jenkins.war
# RUN chmod 644 /opt/jenkins.war

ENV JENKINS_HOME /jenkins

EXPOSE 8080

CMD ["java", "-jar", "/opt/jenkins.war"]
