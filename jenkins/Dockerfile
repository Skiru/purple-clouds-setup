FROM jenkins/jenkins:lts

USER root
RUN apt-get -qq update \
   && apt-get -qq -y install \
   curl

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -a -G docker jenkins

docker 1000

#kontener jenkinsa
docker 1001

USER jenkins