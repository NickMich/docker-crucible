FROM ubuntu:14.04
MAINTAINER nickmich

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install default-jre
RUN apt-get -y install wget
RUN apt-get -y install git
RUN apt-get -y install zip

RUN wget https://www.atlassian.com/software/crucible/downloads/binary/crucible-3.8.0.zip
RUN unzip crucible-3.8.0.zip -d /opt


EXPOSE 8060
