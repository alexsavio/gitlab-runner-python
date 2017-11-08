FROM gitlab/gitlab-runner:v10.1.0

MAINTAINER Marco Obermeyer "marco.obermeyer@obcon.de"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -s ppa:deadsnakes/ppa && \
  apt-get update && \
  apt-get -y install python3.6 python3.6-venv python3.6-dev wget tar unzip && \
  apt-get clean && \
  rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
