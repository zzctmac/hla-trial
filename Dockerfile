FROM ubuntu:18.04

COPY source.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y vim libc6-i386 gcc wget curl
RUN  wget http://www.plantation-productions.com/Webster/HighLevelAsm/HLAv2.16/linux64.hla.tar.gz

RUN tar xvf linux64.hla.tar.gz

COPY my_profile my_profile

RUN cat ./my_profile >> /etc/bash.bashrc
