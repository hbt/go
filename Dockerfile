FROM ubuntu:18.04

RUN apt-get update && apt-get install -y git wget gcc

RUN cd /root && wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
WORKDIR /root
RUN tar -xf go1.14.2.linux-amd64.tar.gz && mv go go1.4

ENV PATH="$HOME/go1.4/bin:$PATH" 
RUN mkdir ~/mygoroot && cd ~/mygoroot && git clone https://github.com/hbt/go.git . && git checkout hbt
RUN cd ~/mygoroot/src && ./make.bash

