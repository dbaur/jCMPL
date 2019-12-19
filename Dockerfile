FROM ubuntu:18.04
MAINTAINER Daniel Baur <daniel.baur@uni-ulm.de>

# Setting the environment
USER root

ENV DEBIAN_FRONTEND noninteractive
ENV NOTVISIBLE "in users profile"

# Install Java
RUN apt-get update -y
RUN apt-get install -y openjdk-11-jre
RUN apt-get install -y curl

# Installing CMPL
WORKDIR /tmp
RUN curl -OL http://www.coliop.org/_download/Cmpl-1-12-0-Linux64.tar.gz
RUN tar xf Cmpl-1-12-0-Linux64.tar.gz
WORKDIR Cmpl
WORKDIR $USERHOME
ENV CMPLBINARY $USERHOME/Cmpl

CMD ["/bin/bash"]
