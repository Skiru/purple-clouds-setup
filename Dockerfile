FROM jenkins as jenkins-master

VOLUME /data/jenkins:/var/jenkins_home
VOLUME /var/run/docker.sock:/var/run/docker.sock

USER root
RUN apt-get -qq update \
   && apt-get -qq -y install \
   curl

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -a -G docker jenkins

USER jenkins