FROM jenkins/jenkins:2.60.3-alpine

USER root

RUN apk update && apk add --no-cache docker

RUN addgroup jenkins docker

USER jenkins