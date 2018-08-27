FROM jenkins/jenkins:2.121.3
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt

COPY ref /usr/share/jenkins/ref

# install jenkins job builder
USER root
RUN apt-get update && apt-get install -y python-pip
RUN pip install jenkins-job-builder
COPY jenkins_jobs.ini /etc/jenkins_jobs/jenkins_jobs.ini
COPY jobs jobs
RUN pwd

USER jenkins
# create a private SSH key to attach slaves
RUN mkdir "/usr/share/jenkins/ref/slaves" && ssh-keygen -N '' -t rsa -f "/usr/share/jenkins/ref/slaves/id_rsa"
