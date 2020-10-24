FROM jenkins/jenkins:lts

USER root
RUN apt-get -qq update \
   && apt-get -qq -y install \
   curl

RUN curl -fsSL https://get.docker.com/ | sh

RUN groupmod -g 1001 docker
RUN usermod -a -G docker jenkins

USER jenkins