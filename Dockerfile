FROM parrotstream/ubuntu-java:trusty-8
MAINTAINER Daniel Baur <daniel.baur@uni-ulm.de>

# Setting the environment
ENV USERHOME  /root
ENV DEBIAN_FRONTEND noninteractive
ENV NOTVISIBLE "in users profile"

# Install CMPL
