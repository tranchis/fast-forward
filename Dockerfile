FROM ubuntu:18.04


RUN apt-get update && apt-get install -y curl make flex bison
RUN mkdir -p /ff/
WORKDIR /ff

RUN curl https://fai.cs.uni-saarland.de/hoffmann/ff/FF-v2.3.tgz | tar -xvz

WORKDIR /ff/FF-v2.3
RUN make

RUN mkdir -p /pddl
WORKDIR /pddl

ENTRYPOINT ["/ff/FF-v2.3/ff"]
